package com.igodoya.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Optional;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.igodoya.dao.HairDao;
import com.igodoya.domain.Hairfile;
import com.igodoya.util.Utility;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class HairService {
	
	@Autowired
	private HairDao hairfileDao;
	
    private final AmazonS3Client amazonS3Client;

    @Value("${cloud.aws.s3.bucket}")
    private String bucket;
    
    // private String tempPath = "/usr/local/apache-tomcat-9.0.55/temp/";

    public String upload(MultipartFile multipartFile, String dirName, String memberId) throws IOException, NoSuchAlgorithmException {
        File uploadFile = convert(multipartFile)
                .orElseThrow(() -> new IllegalArgumentException("MultipartFile -> File로 전환이 실패했습니다."));
        return upload(uploadFile, dirName, memberId);
    }

    private String upload(File uploadFile, String dirName, String memberId) throws UnsupportedEncodingException, NoSuchAlgorithmException {
    	/* 이미지를 S3에 업로드 */
		String orifileName = uploadFile.getName();
		String fileName = Utility.MD5Generator(orifileName);
		String filePath = dirName + "/" + fileName;
		String uploadImageUrl = putS3(uploadFile, filePath);  // 이 반환타입은 이미지의 전체 경로를 반환해 준다.
		removeNewFile(uploadFile);
		
		/* 이미지 정보를 DB에 저장 */
		Hairfile dto = new Hairfile();
        dto.setOrifileName(orifileName);
        dto.setFileName(fileName);
        dto.setFilePath(filePath);
        dto.setMemberId(memberId);
        hairfileDao.hairfileInput(dto);
        
        /* S3에 저장된 이미지 정보를 분류 모델 서버에 전송하여 분류 진행 */
        JSONObject jObject = Utility.getUrlResult("http://127.0.0.1:5000/?img=" + fileName);
        System.out.println(jObject);
        JSONArray percentage = (JSONArray)jObject.get("percentage");
        JSONObject normal_severe = (JSONObject)percentage.get(0);
        float m0_normal = Float.parseFloat(normal_severe.get("normal").toString());
        float m0_severe = Float.parseFloat(normal_severe.get("severe").toString());
        if(m0_normal > m0_severe) {
        	JSONObject normal_mild = (JSONObject)percentage.get(1);
            String m1_normal = normal_mild.get("normal").toString();
            String m1_mild = normal_mild.get("mild").toString();
            if(Float.parseFloat(m1_normal) > Float.parseFloat(m1_mild)) {
            	return "정상_" + m1_normal;
            } else {
            	return "경증_" + m1_mild;
            }
        } else {
        	JSONObject mild_severe = (JSONObject)percentage.get(2);
            String m2_mild = mild_severe.get("mild").toString();
            String m2_severe = mild_severe.get("severe").toString();
            if(Float.parseFloat(m2_mild) > Float.parseFloat(m2_severe)) {
            	return "경증_" + m2_mild;
            } else {
            	return "중증_" + m2_severe;
            }
        }
    }

    private String putS3(File uploadFile, String fileName) {
        amazonS3Client.putObject(
                new PutObjectRequest(bucket, fileName, uploadFile)
                .withCannedAcl(CannedAccessControlList.PublicRead)	// PublicRead 권한으로 업로드 됨
        );
        return amazonS3Client.getUrl(bucket, fileName).toString();
    }

    private void removeNewFile(File targetFile) {
        if(targetFile.delete()) {
            System.out.println("로컬의 임시 파일이 삭제되었습니다.");
        }else {
        	System.out.println("로컬의 임시 파일이 삭제되지 못했습니다.");
        }
    }

    private Optional<File> convert(MultipartFile file) throws  IOException {
        File convertFile = new File(file.getOriginalFilename());
        if(convertFile.createNewFile()) {
            try (FileOutputStream fos = new FileOutputStream(convertFile)) {
                fos.write(file.getBytes());
            }
            return Optional.of(convertFile);
        }
        return Optional.empty();
    }
}
