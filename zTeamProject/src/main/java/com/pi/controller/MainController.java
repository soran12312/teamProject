package com.pi.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.LocationVO;
import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;
import com.pi.service.MainService;


@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	@Autowired
	HttpServletRequest request;
	
	// 1번 카카오톡에 사용자 코드 받기(jsp의 a태그 href에 경로 있음)
	@RequestMapping(value = "member_join_form.do", method = RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, Model m, HttpSession session) throws Throwable {
		// 1번
		System.out.println("code:" + code);
		
		// 2번
		String access_Token = mainService.getAccessToken(code);
		System.out.println("###access_Token#### : " + access_Token);
		// 위의 access_Token 받는 걸 확인한 후에 밑에 진행
		
		// 3번
		MemberVO userInfo = mainService.getUserInfo(access_Token); // 유저정보 : 이메일, 닉네임을 받아온다.
		System.out.println(userInfo.toString());
		
		HashMap map = new HashMap();
		
		map = mainService.loginCheck(userInfo); // 받아온 이메일이 DB의 회원테이블에 존재하는지 확인한 후 해당 회원정보를 가져온다.
		
		if(map == null) { // 해당 이메일이 DB에 없으면
			
			List<LocationVO> list = mainService.selectAddr1(); // 시,도 데이터를 디비에서 가져온다.
			System.out.println(list);
			m.addAttribute("member", userInfo); // 모델에 카카오로그인으로 받아온 이메일과 닉네임을 담는다.
			m.addAttribute("list1", list); // 가져온 시,도 데이터를 모델에 담는다.
			
			return "member_join_form"; // 회원가입화면으로 넘어간다.
		}else{ // 해당 이메일이 DB에 있으면
			
			session.setAttribute("email", map.get("email"));
			session.setAttribute("nickname", map.get("nickname"));
			session.setAttribute("member_grade", map.get("member_grade"));
			session.setAttribute("member_state", map.get("member_state"));
			session.setAttribute("introduce", map.get("introduce"));
			session.setAttribute("business_number", map.get("business_number"));
			session.setAttribute("path", map.get("path"));// 세션에 로그인한 회원의 회원정보를 담는다.
			
			session.setAttribute("locList", mainService.selectAllLocationNumberByEmail((String)map.get("email"))); // 세션에 로그인한 회원의 관심지역정보를 담는다.
			
			return "main_view"; // 메인화면으로 넘어간다.(세션에 담긴 정보로 메인화면 형태가 바뀐다.)
		}
		
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) { // 로그아웃
		
		
		session.removeAttribute("email");
		session.removeAttribute("nickname");
		session.removeAttribute("member_grade");
		session.removeAttribute("member_state");
		session.removeAttribute("introduce");
		session.removeAttribute("business_number");
		session.removeAttribute("locList"); // 세션에서 모든 회원정보를 삭제
		
		session.removeAttribute("category_number");
		session.removeAttribute("option");
		session.removeAttribute("keyword"); // 페이징&검색용 세션값도 모두 지운다.
		
		return "redirect:https://kauth.kakao.com/oauth/logout?client_id=3ce0aad34a9acc02c24c9294a3cfc537&logout_redirect_uri=http://192.168.0.68:8080/zTeamProject/main_view.do"; // 메인화면으로 넘어간다.
	} // 카카오로그아웃
	
	@RequestMapping("/selectAddr1.do")
	@ResponseBody
	public List<LocationVO> selectAddr1() { // DB에서 시,도 데이터 가져온다.(Ajax를 위해서 @ResponseBody로 값만 넘긴다.)
		
		return mainService.selectAddr1();
	}
	
	@RequestMapping("/selectAddr2.do")
	@ResponseBody
	public List<LocationVO> selectAddr2(LocationVO vo) { // DB에서 시,군,구 데이터 가져온다.(Ajax를 위해서 @ResponseBody로 값만 넘긴다.)
		System.out.println(vo.toString());
		
		List<LocationVO> list = mainService.selectAddr2(vo);
		
		return list;
	}
	
	@RequestMapping("/selectAddr3.do")
	@ResponseBody
	public List<LocationVO> selectAddr3(LocationVO vo) { // DB에서 법정동명 데이터 가져온다.(Ajax를 위해서 @ResponseBody로 값만 넘긴다.)
		System.out.println(vo.toString());
		
		List<LocationVO> list = mainService.selectAddr3(vo);
		
		return list;
	}
	
	@RequestMapping("/selectLocNumByAddr.do")
	@ResponseBody
	public int selectLocNumByAddr(LocationVO vo) { // 사용자가 선택한 시,도 / 시,군,구 / 법정동명 데이터를 토대로 해당 지역의 지역번호를 가져온다.
		System.out.println(vo.toString());
		
		int location_number = mainService.selectLocNumByAddr(vo);
		
		return location_number;
	}
	
	@RequestMapping("/insertQuestion.do")
	public String insertQuestion(QuestionVO qvo, MultipartFile file) throws IllegalStateException, IOException { // 문의를 DB에 저장한다.
		
		ImageVO ivo = new ImageVO();
		
		if(!file.isEmpty()) { // 이용자가 문의에 파일을 첨부했을 경우
			ivo.setOriginal_name(file.getOriginalFilename()); // 이미지의 원래이름 저장
			ivo.setSize(file.getSize()); // 이미지 크기 저장
			
			long time = System.currentTimeMillis(); // 현재시간을 밀리초단위로 가져온다.
			
			ivo.setSave_name(String.valueOf(time) + "_" + ivo.getOriginal_name()); // 원래이름에 현재시간을 더해 저장용 이름을 만든다.
			
			String realPath="C:\\Users\\kosmo\\git\\teamProject\\zTeamProject\\src\\main\\webapp\\resources\\uploads\\"+ivo.getSave_name(); // 실제 저장되는 경로
			String path = "http://192.168.0.68:8080/zTeamProject/resources/uploads/"+ivo.getSave_name(); // view에 띄울 용도의 이미지 경로
			
			ivo.setPath(path); // 이미지경로(uri)를 저장
			
			//System.out.println(realPath);
			
			File f = new File(realPath);
			
			file.transferTo(f); // 실제 저장되는 경로에 이미지 저장
		}
		
		mainService.insertQuestion(qvo, ivo); // 문의테이블 저장용 객체와 이미지 저장용 객체를 모두 서비스단으로 보낸다.(서비스단에서 트랜잭션처리)
		
		return "redirect:main_view.do"; // 메인페이지로 리다이렉팅
	}
	
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step, Model m, HttpSession session) { // 페이지 이동(DB접속없는경우)
		session.removeAttribute("category_number");
		session.removeAttribute("option");
		session.removeAttribute("keyword"); // 검색용 세션값 제거
		return step;
	}
	
}
