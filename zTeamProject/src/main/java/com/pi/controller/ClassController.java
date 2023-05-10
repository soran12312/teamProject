package com.pi.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.pi.domain.ClassVO;
import com.pi.domain.HashtagVO;
import com.pi.domain.ImageVO;
import com.pi.service.ClassService;

import java.util.ArrayList;
import java.util.StringTokenizer;

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
		
		ivo.setPath(path);
		
		//System.out.println(realPath);
			
		File f = new File(realPath);
		
		classService.insert_classImage(ivo);
		
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
	
	@Transactional
	@RequestMapping("/class_insert.do")
	public String class_insert(ClassVO vo, String hashtag, String path) {
		//System.out.println(hashtag);
		
		classService.class_insert(vo);
		
		ArrayList<String> hashtag_name_list = new ArrayList<String>();
		ArrayList<String> path_list = new ArrayList<String>();
		
		StringTokenizer st = new StringTokenizer(hashtag,",");
		for(int i=0; st.hasMoreTokens(); i++) {
			hashtag_name_list.add(st.nextToken());
		}
		
		StringTokenizer pst = new StringTokenizer(path,",");
		for(int i=0; pst.hasMoreTokens(); i++) {
			path_list.add(pst.nextToken());
		}
		
		for(String j : hashtag_name_list) {
			//System.out.println(j);
			HashtagVO hvo = new HashtagVO();
			hvo.setHashtag_name(j);
			hvo.setCategory_number(vo.getCategory_number());
			classService.hashtag_insert(hvo);
		}
		
		for(String k : path_list) {
			System.out.println(k);
			classService.updateImgByPath(k);
		}
		
		
		return "class_list";
	}
	
	
}
