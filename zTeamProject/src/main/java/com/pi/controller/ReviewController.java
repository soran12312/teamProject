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
		
		
		return "redirect:review_list.do?currentPage=1"; // 리뷰리스트로 리다이렉팅
	}
	
	@RequestMapping("/review_list.do")
	public void review_list(Model m, HttpSession session, int currentPage) { // 리뷰리스트
		List<HashMap> list = (List<HashMap>)session.getAttribute("locList"); // 이용자의 관심지역정보를 가져온다.
		
		int category_number = 0;
		String option = null;
		String keyword = null;
		
//		if(session.getAttribute("category_number")!=null) {
//			category_number = (int)session.getAttribute("category_number");
//		}
//		if(session.getAttribute("option")!=null) {
//			option = (String)session.getAttribute("option");
//			keyword = (String)session.getAttribute("keyword");
//		}
		
		//System.out.println(category_number);
		//System.out.println(option);
		//System.out.println(keyword);
		
		HashMap map = new HashMap(); // 해쉬맵에 회원의 관심지역 리스트에서 가져온 지역번호들을 넣는다.
		
		for(int i = 0 ; i<3 ; i++ ) {
			HashMap temp = new HashMap();
			temp = list.get(i);
			switch (i) {
			case 0:
				map.put("location_number1", (int)temp.get("location_number"));
				break;
			case 1:
				map.put("location_number2", (int)temp.get("location_number"));
				break;
			case 2:
				map.put("location_number3", (int)temp.get("location_number"));
				break;
			}
		}
		
		
//		if(category_number!=0) {
//			map.put("category_number", category_number); // 카테고리번호가 있을 경우 해쉬맵에 카테고리번호를 넣는다.
//		}
		
//		if(option != null) {
//			map.put("option", option);
//			map.put("keyword", keyword); // 검색옵션이 있을 경우 해쉬맵에 검색옵션과 키워드를 넣는다.
//		}
			
			
			//총 게시글 수
			int cnt = reviewService.reviewCount(map); // DB에서 검색
			
			// 한 페이지에 출력될 글 수 
			int pageSize = 9;
			
			// 한번에 보여지는 페이징 수(페이지넘버)
			int pageLimit = 5;
			
			int maxPage = (int)Math.ceil(cnt / (double)pageSize); // 최대 페이지
		    int startPage = (int)((currentPage - 1) / pageLimit) * pageLimit + 1; // 현재페이지 기준으로 화면에 보이는 첫페이지
		    int endPage = startPage + pageLimit - 1; // 현재페이지 기준으로 화면에 보이는 마지막 페이지
		    
		    if(maxPage < endPage) {
	            endPage = maxPage;
	        }
			
			
			//현재 페이지에서 첫번째로 보여질 글 인덱스
			int first_view = (currentPage-1)*9;
			
			map.put("first_view", first_view); // 시작인덱스를 해쉬맵에 넣는다.
			
			//System.out.println(map.toString());
			
			List<HashMap> listMap = reviewService.selectReview(map); // 화면에 띄울 리뷰정보를 DB에서 검색하여 가져온다.
			
			m.addAttribute("listMap", listMap);
			m.addAttribute("maxPage", maxPage);
			m.addAttribute("startPage", startPage);
			m.addAttribute("endPage", endPage);
			m.addAttribute("currentPage", currentPage);
		// 리뷰정보, 시작페이지, 끝페이지, 현재페이지를 모델에 담아 보낸다.
	}
	

	@RequestMapping("/cate_review_list.do")
	public String cate_review_list(HttpSession session, int category_number) { // 카테고리검색
		
		if(category_number==0) { // 카레고리번호가 0 일경우(전체보기 선택)
			session.removeAttribute("category_number"); // 세션에서 카테고리번호를 지운다.
		}else {					// 카레고리번호가 0이 아닐 경우
			session.setAttribute("category_number", category_number); // 세션에 카테고리번호를 저장한다.
		}
		
		return "redirect:review_list.do?currentPage=1"; // 리뷰 리스트.do로 리다이렉팅
	}
	
	@RequestMapping("/search_review.do")
	public String search_review(HttpSession session, String option, String keyword){
		
		if(keyword=="") { // 검색 키워드가 ""일 경우(전체검색)
			session.removeAttribute("option");
			session.removeAttribute("keyword"); // 세션에서 검색옵션과 키워드를 삭제
		}else {			// 검색키워드가 있을 경우
			session.setAttribute("option", option);
			session.setAttribute("keyword", keyword); // 세션에 검색옵션과 키워드를 저장
		}
		
		
		return "redirect:review_list.do?currentPage=1"; // 리뷰 리스트.do로 리다이렉팅
	}
	
	@RequestMapping("/review_detail.do") // 리뷰상세
	public void review_detail(HttpSession session, Model m , @RequestParam int review_number) {
		
		session.removeAttribute("category_number");
		session.removeAttribute("option");
		session.removeAttribute("keyword"); // 카테고리검색, 키워드검색에 사용되는 세션값을 제거한다.
		
		reviewService.incViewNum(review_number); // 조회수를 증가
		HashMap map = reviewService.selectAllReviewDetailByReviewNumber(review_number); // 선택한 리뷰의 리뷰정보를 DB에서 가져온다.
		
		m.addAttribute("map", map); // 리뷰정보를 모델에 담아 보낸다.
	}
	
	@RequestMapping("/insertReviewLike.do")
	public String insertReviewLike(LikeVO vo) { // 좋아요 등록
		
		int cnt = reviewService.checkLike(vo); // 이용자가 좋아요를 누른상태인지 확인
		
		if(cnt==0) { // 누른적 없을 경우
			reviewService.insertLike(vo); // 좋아요 등록
		}
		
		return "redirect:review_detail.do?review_number="+String.valueOf(vo.getReview_number()); // 리뷰상세페이지로 리다이렉팅
	}
	
	@RequestMapping("/review_delete.do")
	public String review_delete(int review_number) { // 리뷰삭제
		
		reviewService.review_delete(review_number);
		
		return "redirect:review_list.do?currentPage=1"; // 삭제 후 리스트페이지로 리다이렉팅
	}
	
}
