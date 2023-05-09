package com.pi.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.pi.domain.ClassVO;
import com.pi.domain.ImageVO;
import com.pi.service.ClassService;

@Controller
public class ClassController {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	ClassService classService;
	
	@RequestMapping(value="SummerNoteImageFile" , produces="application/text;charset=utf8", method = RequestMethod.POST)
	public @ResponseBody String SummerNoteImageFile(@RequestParam("file") MultipartFile file) {
		
		JsonObject jsonObject = new JsonObject();
		ImageVO ivo = new ImageVO();
		
		ivo.setOriginal_name(file.getOriginalFilename());
		ivo.setSize(file.getSize());
		
		long time = System.currentTimeMillis();
		
		ivo.setSave_name(String.valueOf(time) + "_" + ivo.getOriginal_name());
		
		String realPath="C:\\Users\\kosmo\\git\\teamProject\\zTeamProject\\src\\main\\webapp\\resources\\uploads\\"+ivo.getSave_name();
		String path = "http://localhost:8080/zTeamProject/resources/uploads/"+ivo.getSave_name();
		
		ivo.setPath(realPath); 
		
		System.out.println(realPath);
			
		File f = new File(realPath);
		
		try {
			InputStream fileStream = file.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, f);
			jsonObject.addProperty("url", path);
			jsonObject.addProperty("responseCode", "succcess");
		} catch(IOException e) {
			FileUtils.deleteQuietly(f);
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}	
		String a = jsonObject.toString();
		return path;
	}
	
	@RequestMapping("/class_insert.do")
	public String class_insert(ClassVO vo, String hashtag) {
		System.out.println(hashtag);
		
		//classService.class_insert(vo);
		
		return "class_list";
	}
	
	
}
