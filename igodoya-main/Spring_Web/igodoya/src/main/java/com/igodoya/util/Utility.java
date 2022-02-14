package com.igodoya.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/**
 * 공통으로 사용하는 기능 모델링
 * @author 조소정
 * @version 1.0
 */
public class Utility {
	
	/**
	 * 설정 옵션(linux, win)
	 */
	public static String selectOS = "win";

	/**
	 * 현재날짜 기본 형식 : 년도4자리-월2자리-일2자리 문자열 변환 메서드
	 * @return 현재날짜
	 */
	public static String getCurrentDate() {
		return getCurrentDate("yyyy-MM-dd");
	}
	
	/**
	 * 현재날짜 아규먼트 형식 : pattern
	 * @param pattern 날짜형식
	 * @return 현재날짜
	 */
	public static String getCurrentDate(String pattern) {
		return new SimpleDateFormat(pattern).format(new Date());
	}
	
	/**
	 * 현재날짜 아규먼트 형식 : pattern
	 * @return 현재날짜에 10일 더해진 날짜
	 */
	public static String getReturnDate() {
		Calendar cal = Calendar.getInstance();
        cal.setTime(new Date());
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        cal.add(Calendar.DATE, 10);
		return df.format(cal.getTime());
	}
	
	/**
	 * 키보드 입력 숫자 반환
	 * @return 정수
	 */
	public static int inputNumber() {
		int inputData = -1;
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		try {
			inputData = Integer.parseInt(in.readLine());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return inputData;
	}
	
	
	/**
	 * 키보드 입력 문자열 반환
	 * @return 문자열
	 */
	public static String inputString() {
		String inputData = null;
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		try {
			inputData = in.readLine();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return inputData;
	}
	
	/**
	 * 메소드의 타이틀 메시지 출력
	 * @param message 입력 메시지
	 */
	public static void print(String message) {
		System.out.println("\n========== " + message + " ==========");
	}
	
	/**
	 * 라인 그려주기
	 * @param length '='를 출력할 길이
	 */
	public static void printLine(int length) {
		for(int i=0; i<length; i++) {
			System.out.print("=");
		}
		System.out.println();
	}
	
	/**
	 * 아규머트 길이의 임시 보안 숫자 및 영문자 혼용 반환 : 38ZB72
	 * @param length 길이
	 * @return 임시보안문자
	 */
	public static String getSecureCodeNumberAndString(int length) {
		StringBuilder secureCode = new StringBuilder();
		Random random = new Random((long)(System.nanoTime() * Math.random()));
		for (int index = 0; index < length; index++) {
			int temp = random.nextInt(36);
			if(temp < 10)
				secureCode.append(temp);
			else
				secureCode.append((char)(temp + 55));
		}
		return secureCode.toString();
	}
	
	/**
	 * 파일명 문자열을 MD5 체크섬으로 변환하는 기능
	 * @param input
	 * @return
	 * @throws UnsupportedEncodingException
	 * @throws NoSuchAlgorithmException
	 */
	public static String MD5Generator(String input) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        MessageDigest mdMD5 = MessageDigest.getInstance("MD5");
        mdMD5.update(input.getBytes("UTF-8"));
        byte[] md5Hash = mdMD5.digest();
        StringBuilder hexMD5hash = new StringBuilder();
        for(byte b : md5Hash) {
            String hexString = String.format("%02x", b);
            hexMD5hash.append(hexString);
        }
        return hexMD5hash.toString();
    }
	
	public static String execCommand(String[] cmd) {
		try {
			Process process = Runtime.getRuntime().exec(cmd);
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
			String line = null;
			StringBuffer readBuffer = new StringBuffer();
			
			while((line = bufferedReader.readLine()) != null) {
				readBuffer.append(line);
				readBuffer.append("\n");
			}
			
			return readBuffer.toString();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static String getUrlResul_String(String getUrl) {
    	try {
			URL url = new URL(getUrl);
			URLConnection conn = url.openConnection();
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = null;
			StringBuffer readBuffer = new StringBuffer();
			
			while((line = bufferedReader.readLine()) != null) {
				readBuffer.append(line);
				readBuffer.append("\n");
			}
			bufferedReader.close();
			
			return readBuffer.toString();
		} catch(Exception e){
            e.getStackTrace();
        }
    	return null;	
    }
	
	public static JSONObject getUrlResult(String getUrl) {
    	try {
    		URL url = new URL(getUrl);
			URLConnection conn = url.openConnection();
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = null;
			StringBuffer readBuffer = new StringBuffer();
			
			while((line = bufferedReader.readLine()) != null) {
				readBuffer.append(line);
			}
			bufferedReader.close();		
			JSONParser jsonParser = new JSONParser();
	        return (JSONObject)jsonParser.parse(readBuffer.toString());
	        
		} catch(Exception e){
            e.getStackTrace();
        }
    	return null;	
    }
}
