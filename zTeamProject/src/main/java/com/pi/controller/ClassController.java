package com.pi.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.pi.domain.ClassJoinVO;
import com.pi.domain.ClassVO;
import com.pi.domain.HashtagVO;
import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.LikeVO;
import com.pi.domain.LocationVO;
import com.pi.service.ClassService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

@Controller
public class ClassController {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	ClassService classService;
	
	@RequestMapping(value="SummerNoteImageFile" , produces="application/text;charset=utf8", method = RequestMethod.POST)
	@ResponseBody
	public String SummerNoteImageFile(@RequestParam("file") MultipartFile file) {
		
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
		} catch(IOException e) {
			FileUtils.deleteQuietly(f);
			e.printStackTrace();
		}	
		return path;
	}
	
	@Transactional
	@RequestMapping("/class_insert.do")
	public String class_insert(ClassVO vo, String hashtag, String path, Model m) {
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
		
		
		return "redirect:class_list.do?currentPage=0";
	}
	
	@RequestMapping("/class_list.do")
	public void class_list(Model m, HttpSession session, int currentPage) {
		List<LocationVO> list = (List<LocationVO>)session.getAttribute("locList");
		
		int category_number = 0;
		String option = null;
		String keyword = null;
		
		if(session.getAttribute("category_number")!=null) {
			category_number = (int)session.getAttribute("category_number");
		}
		if(session.getAttribute("option")!=null) {
			option = (String)session.getAttribute("option");
			keyword = (String)session.getAttribute("keyword");
		}
		
		//System.out.println(category_number);
		System.out.println(option);
		System.out.println(keyword);
		
		InterestLocationVO lvo = new InterestLocationVO();
		for(int i = 0 ; i<3 ; i++ ) {
			LocationVO temp = new LocationVO();
			temp = list.get(i);
			switch (i) {
			case 0:
				lvo.setLocation_number1(temp.getLocation_number());
				break;
			case 1:
				lvo.setLocation_number2(temp.getLocation_number());
				break;
			case 2:
				lvo.setLocation_number3(temp.getLocation_number());
				break;
			}
		}
		
		HashMap map = new HashMap();
		
		map.put("location_number1", lvo.getLocation_number1());
		map.put("location_number2", lvo.getLocation_number2());
		map.put("location_number3", lvo.getLocation_number3());
		
		if(currentPage==0) {
			currentPage=1;
		}
		
		if(category_number!=0) {
			map.put("category_number", category_number);
		}
		
		if(option != null) {
			map.put("option", option);
			map.put("keyword", keyword);
		}
			
			
			//총 게시글 수
			int cnt = classService.classCount(map);
			
			// 한 페이지에 출력될 글 수 
			int pageSize = 9;
			
			// 한번에 보여지는 페이징 수(페이지넘버)
			int pageLimit = 5;
			
			int maxPage = (int)Math.ceil(cnt / (double)pageSize);
		    int startPage = (int)((currentPage - 1) / pageLimit) * pageLimit + 1;  
		    int endPage = startPage + pageLimit - 1;
		    
		    if(maxPage < endPage) {
	            endPage = maxPage;
	        }
			
			
			//현재 페이지에서 첫번째로 보여질 글 인덱스
			int first_view = (currentPage-1)*9;
			
			map.put("first_view", first_view);
			
			System.out.println(map.toString());
			
			List<HashMap> listMap = classService.selectClassByLocation(map);
			
			m.addAttribute("listMap", listMap);
			m.addAttribute("maxPage", maxPage);
			m.addAttribute("startPage", startPage);
			m.addAttribute("endPage", endPage);
			m.addAttribute("currentPage", currentPage);
		
		
	}
	
	@RequestMapping("/cate_list.do")
	public String cate_list(HttpSession session, int category_number) {
		
		if(category_number==0) {
			session.removeAttribute("category_number");
		}else {
			session.setAttribute("category_number", category_number);
		}
		
		return "redirect:class_list.do?currentPage=0";
	}
	
	@RequestMapping("/search_class.do")
	public String search_class(HttpSession session, String option, String keyword){
		
		if(keyword=="") {
			session.removeAttribute("option");
			session.removeAttribute("keyword");
		}else {
			session.setAttribute("option", option);
			session.setAttribute("keyword", keyword);
		}
		
		
		return "redirect:class_list.do?currentPage=0";
	}
	
	@RequestMapping("/class_detail.do")
	public void class_detail(HttpSession session, Model m , @RequestParam int class_number) {
		
		session.removeAttribute("category_number");
		session.removeAttribute("option");
		session.removeAttribute("keyword");
		
		classService.incViewNum(class_number);
		HashMap map = classService.selectAllClassDetailByClassNumber(class_number);
		
		m.addAttribute("map", map);
	}
	
	@RequestMapping("/insertLike.do")
	public String insertLike(LikeVO vo) {
		
		int cnt = classService.checkLike(vo);
		
		if(cnt==0) {
			classService.insertLike(vo);
		}
		
		return "redirect:class_detail.do?class_number="+String.valueOf(vo.getClass_number());
	}
	
	@RequestMapping(value="/class_Join.do", produces="application/text;charset=utf8")
	@ResponseBody
	public String classJoin(ClassJoinVO vo) {
		
		int check = classService.class_join_check(vo);
		
		if(check==0) {
			classService.class_join(vo);
			classService.inc_class_member(vo.getClass_number());
			
			return "신청되었습니다. 수강일을 확인해주세요";
		}else {
			
			return "이미 신청된 강좌입니다. 신청취소는 마이페이지에서 할 수 있습니다.";
		}
		
	}
	
	@RequestMapping("/class_delete.do")
	public String class_delete(int class_number) {
		
		classService.class_delete(class_number);
		
		return "redirect:class_list.do?currentPage=0";
	}
	
}
