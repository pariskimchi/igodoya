package com.igodoya.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.igodoya.service.HairService;

@Controller
public class HairController {
	
	@Autowired
	private HairService hairService;
	
	@GetMapping("/hairfileUploadForm")
	public String hairfileUpload() {
		return "hairfileUpload";
	}
	
	@PostMapping("/hairfileUpload")
	public String hairfileUpload(@RequestParam("file") MultipartFile files, HttpSession session, Model model) {
		if(session != null) {
			if (session.getAttribute("memberId") != null && session.getAttribute("grade") != null) {
				try {
					/* AWS S3에 파일을 저장하고 Mysql에 내용을 업로드 */					
					String result = hairService.upload(files, "img_file", (String)session.getAttribute("memberId"));
					String[] resultSplit = result.split("_");
					model.addAttribute("result", resultSplit[0]);
					model.addAttribute("percentage", resultSplit[1]);					
		            return "hairResult";
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}			
		return "main"; 
	}
	
	@GetMapping("/hairCareSolution")
	public String hairCareSolution() {
		return "hairCareSolution";
	}
	
	@GetMapping("/product")
	public String product() {
		return "product";
	}
}
