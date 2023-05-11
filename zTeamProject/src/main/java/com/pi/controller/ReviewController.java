package com.pi.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.LikeVO;
import com.pi.domain.LocationVO;
import com.pi.domain.ReviewVO;
import com.pi.service.ReviewService;


@Controller
public class ReviewController {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	ReviewService reviewService;


	@RequestMapping("/review_insert.do")
	public String review_insert(ReviewVO vo, String path, Model m) { // 리뷰등록(트랜잭션)
		
		reviewService.review_insert(vo); // 리뷰정보를 DB에 등록
		
		ArrayList<String> path_list = new ArrayList<String>(); // 리뷰에 들어간 이미지 경로들이 들어갈 리스트 선언
		
		StringTokenizer pst = new StringTokenizer(path,","); // ,로 묶어서 가져온 이미지 경로를 나눈다.
		for(int i=0; pst.hasMoreTokens(); i++) {
			path_list.add(pst.nextToken()); // 나눈 이미지경로를 리스트에 담는다.
		}
		
		for(String k : path_list) { // 이미지경로 갯수만큼 반복
			System.out.println(k);
			reviewService.updateImgByPath(k); // 이미지테이블에 리뷰번호 입력
		}
		
		
		return "redirect:review_list.do?currentPage=1";
	}
	
	@RequestMapping("/review_list.do")
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
		
		if(category_number!=0) {
			map.put("category_number", category_number);
		}
		
		if(option != null) {
			map.put("option", option);
			map.put("keyword", keyword);
		}
			
			
			//총 게시글 수
			int cnt = reviewService.reviewCount(map);
			
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
			
			List<HashMap> listMap = reviewService.selectReview(map);
			
			m.addAttribute("listMap", listMap);
			m.addAttribute("maxPage", maxPage);
			m.addAttribute("startPage", startPage);
			m.addAttribute("endPage", endPage);
			m.addAttribute("currentPage", currentPage);
		
	}
	

	@RequestMapping("/cate_review_list.do")
	public String cate_review_list(HttpSession session, int category_number) {
		
		if(category_number==0) {
			session.removeAttribute("category_number");
		}else {
			session.setAttribute("category_number", category_number);
		}
		
		return "redirect:review_list.do?currentPage=1";
	}
	
	@RequestMapping("/search_review.do")
	public String search_review(HttpSession session, String option, String keyword){
		
		if(keyword=="") {
			session.removeAttribute("option");
			session.removeAttribute("keyword");
		}else {
			session.setAttribute("option", option);
			session.setAttribute("keyword", keyword);
		}
		
		
		return "redirect:review_list.do?currentPage=1";
	}
	
	@RequestMapping("/review_detail.do")
	public void review_detail(HttpSession session, Model m , @RequestParam int review_number) {
		
		session.removeAttribute("category_number");
		session.removeAttribute("option");
		session.removeAttribute("keyword");
		
		reviewService.incViewNum(review_number);
		HashMap map = reviewService.selectAllReviewDetailByReviewNumber(review_number);
		
		m.addAttribute("map", map);
	}
	
	@RequestMapping("/insertReviewLike.do")
	public String insertReviewLike(LikeVO vo) {
		
		int cnt = reviewService.checkLike(vo);
		
		if(cnt==0) {
			reviewService.insertLike(vo);
		}
		
		return "redirect:review_detail.do?review_number="+String.valueOf(vo.getReview_number());
	}
	
	@RequestMapping("/review_delete.do")
	public String review_delete(int review_number) {
		
		reviewService.review_delete(review_number);
		
		return "redirect:review_list.do?currentPage=1";
	}
	
}
