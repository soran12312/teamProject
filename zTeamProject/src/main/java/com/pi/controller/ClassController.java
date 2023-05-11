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
	public String SummerNoteImageFile(@RequestParam("file") MultipartFile file) { // 썸머노트에 이미지 업로드
		
		ImageVO ivo = new ImageVO();
		
		ivo.setOriginal_name(file.getOriginalFilename()); // 이미지 원래이름을 저장
		ivo.setSize(file.getSize()); // 이미지 크기를 저장
		
		long time = System.currentTimeMillis(); // 현재시간을 밀리초단위로 가져온다.
		
		ivo.setSave_name(String.valueOf(time) + "_" + ivo.getOriginal_name()); // 원래이름에 현재시간을 더해 저장용 이름을 만든다.
		
		String realPath="C:\\Users\\kosmo\\git\\teamProject\\zTeamProject\\src\\main\\webapp\\resources\\uploads\\"+ivo.getSave_name(); // 실제 저장되는 경로
		String path = "http://192.168.0.68:8080/zTeamProject/resources/uploads/"+ivo.getSave_name(); // view에 띄울 용도의 이미지 경로
		
		ivo.setPath(path); // 이미지경로(uri)를 저장
		
		//System.out.println(realPath);
			
		File f = new File(realPath); // 실제 저장되는 경로에 이미지 저장
		
		classService.insert_classImage(ivo); // DB에 이미지정보 저장
		
		try {
			InputStream fileStream = file.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, f);
		} catch(IOException e) {
			FileUtils.deleteQuietly(f);
			e.printStackTrace();
		}	
		return path; // 이미지경로(uri)를 리턴
	}
	
	@Transactional
	@RequestMapping("/class_insert.do")
	public String class_insert(ClassVO vo, String hashtag, String path, Model m) { // 강좌 등록(트랜잭션)
		//System.out.println(hashtag);
		
		classService.class_insert(vo); // 강좌정보를 DB에 등록
		
		ArrayList<String> hashtag_name_list = new ArrayList<String>(); // 해시태그명들을 담을 리스트를 선언한다.
		ArrayList<String> path_list = new ArrayList<String>(); // 이미지 경로들을 담을 리스트를 선언한다.
		
		StringTokenizer st = new StringTokenizer(hashtag,","); // ,로 묶어서 가져온 해시태그들을 나눈다.
		for(int i=0; st.hasMoreTokens(); i++) {
			hashtag_name_list.add(st.nextToken()); // 나눈 해시태그를 리스트에 담는다.
		}
		
		StringTokenizer pst = new StringTokenizer(path,","); // ,로 묶어서 가져온 이미지 경로를 나눈다.
		for(int i=0; pst.hasMoreTokens(); i++) {
			path_list.add(pst.nextToken()); // 나눈 이미지경로를 리스트에 담는다.
		}
		
		for(String j : hashtag_name_list) { // 해시태그명 갯수만큼 반복
			//System.out.println(j);
			HashtagVO hvo = new HashtagVO(); // vo에 해시태그명과 카테고리번호를 담는다.
			hvo.setHashtag_name(j);
			hvo.setCategory_number(vo.getCategory_number());
			classService.hashtag_insert(hvo); // DB에 입력(강좌번호는 쿼리문으로 DB에서 가장 최근 강좌번호(가장 큰 번호)를 가져와 입력한다.)
		}
		
		for(String k : path_list) {
			System.out.println(k);
			classService.updateImgByPath(k); // DB에서 해당 이미지 경로를 갖고있는 이미지에 가장 최근 강좌번호를 찾아 강좌번호를 update한다.
		}
		
		
		return "redirect:class_list.do?currentPage=1"; // 강좌 리스트로 리다이렉팅시킨다.
	}
	
	@RequestMapping("/class_list.do")
	public void class_list(Model m, HttpSession session, int currentPage) { // 강좌리스트
		List<LocationVO> list = (List<LocationVO>)session.getAttribute("locList"); // 세션에서 회원의 관심지역을 가져온다.
		
		int category_number = 0;
		String option = null;
		String keyword = null; // 카테고리번호, 검색옵션, 검색키워드를 선언
		
		if(session.getAttribute("category_number")!=null) { // 세션에 카테고리번호가 있을 경우(if문이 없으면 널포인트엑셉션에 걸린다.)
			category_number = (int)session.getAttribute("category_number"); // 세션에서 카테고리번호를 가져와 category_number에 넣는다.
		}
		if(session.getAttribute("option")!=null) { // 세션에 검색옵션이 있을 경우
			option = (String)session.getAttribute("option");
			keyword = (String)session.getAttribute("keyword"); // 세션에서 검색옵션과 키워드를 가져온다.
		}
		
		//System.out.println(category_number);
		//System.out.println(option);
		//System.out.println(keyword);
		
		HashMap map = new HashMap(); // 해쉬맵에 회원의 관심지역 리스트에서 가져온 지역번호들을 넣는다.
		
		for(int i = 0 ; i<3 ; i++ ) {
			LocationVO temp = new LocationVO();
			temp = list.get(i);
			switch (i) {
			case 0:
				map.put("location_number1", temp.getLocation_number());
				break;
			case 1:
				map.put("location_number2", temp.getLocation_number());
				break;
			case 2:
				map.put("location_number3", temp.getLocation_number());
				break;
			}
		}
		
		
		if(category_number!=0) {
			map.put("category_number", category_number); // 카테고리번호가 있을 경우 해쉬맵에 카테고리번호를 넣는다.
		}
		
		if(option != null) {
			map.put("option", option);
			map.put("keyword", keyword); // 검색옵션이 있을 경우 해쉬맵에 검색옵션과 키워드를 넣는다.
		}
			
			//총 게시글 수
			int cnt = classService.classCount(map); // DB에서 검색
			
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
			
			
			//현재 페이지에서 첫번째로 보여질 글 인덱스(0부터 시작한다.)
			int first_view = (currentPage-1)*9;
			
			map.put("first_view", first_view); // 시작인덱스를 해쉬맵에 넣는다.
			
			//System.out.println(map.toString());
			
			List<HashMap> listMap = classService.selectClassByLocation(map); // 화면에 띄울 강좌정보를 DB에서 검색하여 가져온다.
			
			m.addAttribute("listMap", listMap);
			m.addAttribute("maxPage", maxPage);
			m.addAttribute("startPage", startPage);
			m.addAttribute("endPage", endPage);
			m.addAttribute("currentPage", currentPage);
		// 강좌정보, 시작페이지, 끝페이지, 현재페이지를 모델에 담아 보낸다.
		
	}
	
	@RequestMapping("/cate_list.do")
	public String cate_list(HttpSession session, int category_number) {
		
		if(category_number==0) { // 카레고리번호가 0 일경우(전체보기 선택)
			session.removeAttribute("category_number"); // 세션에서 카테고리번호를 지운다.
		}else { 				// 카레고리번호가 0이 아닐 경우
			session.setAttribute("category_number", category_number); // 세션에 카테고리번호를 저장한다.
		}
		
		return "redirect:class_list.do?currentPage=1"; // 강좌 리스트.do로 리다이렉팅
	}
	
	@RequestMapping("/search_class.do")
	public String search_class(HttpSession session, String option, String keyword){
		
		if(keyword=="") { // 검색 키워드가 ""일 경우(전체검색)
			session.removeAttribute("option");
			session.removeAttribute("keyword"); // 세션에서 검색옵션과 키워드를 삭제
		}else { 			// 검색키워드가 있을 경우
			session.setAttribute("option", option);
			session.setAttribute("keyword", keyword); // 세션에 검색옵션과 키워드를 저장
		}
		
		
		return "redirect:class_list.do?currentPage=1"; // 강좌 리스트.do로 리다이렉팅
	}
	
	@RequestMapping("/class_detail.do")
	public void class_detail(HttpSession session, Model m , @RequestParam int class_number) { // 강좌상세
		
		session.removeAttribute("category_number");
		session.removeAttribute("option");
		session.removeAttribute("keyword"); // 카테고리검색, 키워드검색에 사용되는 세션값을 제거한다.
		
		classService.incViewNum(class_number); // DB에 해당 강좌 조회수를 증가
		HashMap map = classService.selectAllClassDetailByClassNumber(class_number); // 선택한 강좌의 강좌정보를 DB에서 가져온다.
		
		m.addAttribute("map", map); // 가져온 정보를 모델에 실어보낸다.
	}
	
	@RequestMapping("/insertLike.do")
	public String insertLike(LikeVO vo) { // 좋아요등록
		
		int cnt = classService.checkLike(vo); // 회원 이메일과 강좌번호를 통해 해당회원이 해당 강좌에 좋아요를 눌렀는지 확인한다.
		
		if(cnt==0) { // 좋아요를 누르지 않았을 경우 
			classService.insertLike(vo); // 좋아요 등록
		}
		
		return "redirect:class_detail.do?class_number="+String.valueOf(vo.getClass_number()); // 강좌상세보기로 리다이렉팅(화면상 좋아요갯수가 변하게하기위해)
	}
	
	@RequestMapping(value="/class_Join.do", produces="application/text;charset=utf8")
	@ResponseBody
	public String classJoin(ClassJoinVO vo) { // 강좌등록
		
		int check = classService.class_join_check(vo); // 해당 강좌의 강좌번호와 회원의 이메일을통해 강좌신청을 했는지 확인한다.
		
		if(check==0) { // 신청한적 없을 경우
			classService.class_join(vo); // 강좌신청테이블에 데이터 insert
			classService.inc_class_member(vo.getClass_number()); // 해당 강좌의 현재인원을 1 증가
			
			return "신청되었습니다. 수강일을 확인해주세요"; // 메시지 리턴
		}else { // 신청한적 있을 경우
			
			return "이미 신청된 강좌입니다. 신청취소는 마이페이지에서 할 수 있습니다."; // 메시지 리턴
		}
		
	}
	
	@RequestMapping("/class_delete.do")
	public String class_delete(int class_number) { // 강좌삭제
		
		classService.class_delete(class_number); // 해당강좌 강좌번호를 이용하여 강좌의 등록상태를 변경한다.(update)
		
		return "redirect:class_list.do?currentPage=1"; // 리스트페이지로 리다이렉팅
	}
	
}
