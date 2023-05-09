package com.pi.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
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
		MemberVO userInfo = mainService.getUserInfo(access_Token);
		System.out.println(userInfo.toString());
		
		MemberVO vo = new MemberVO();
		
		vo = mainService.loginCheck(userInfo);
		
		if(vo == null) {
			
			List<LocationVO> list = mainService.selectAddr1();
			System.out.println(list);
			m.addAttribute("member", userInfo);
			m.addAttribute("list1", list);
			
			return "member_join_form";
		}else{
			
			session.setAttribute("email", vo.getEmail());
			session.setAttribute("nickname", vo.getNickname());
			session.setAttribute("member_grade", vo.getMember_grade());
			session.setAttribute("member_state", vo.getMember_state());
			session.setAttribute("introduce", vo.getIntroduce());
			session.setAttribute("business_number", vo.getBusiness_number());
			
			session.setAttribute("locList", mainService.selectAllLocationNumberByEmail(vo.getEmail()));
			
			return "main_view";
		}
		
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		
		session.removeAttribute("email");
		session.removeAttribute("nickname");
		session.removeAttribute("member_grade");
		session.removeAttribute("member_state");
		session.removeAttribute("introduce");
		session.removeAttribute("business_number");
		session.removeAttribute("locList");
		
		return "main_view";
	}
	
	@RequestMapping("/selectAddr1.do")
	@ResponseBody
	public List<LocationVO> selectAddr1() {
		
		return mainService.selectAddr1();
	}
	
	@RequestMapping("/selectAddr2.do")
	@ResponseBody
	public List<LocationVO> selectAddr2(LocationVO vo) {
		System.out.println(vo.toString());
		
		List<LocationVO> list = mainService.selectAddr2(vo);
		
		return list;
	}
	
	@RequestMapping("/selectAddr3.do")
	@ResponseBody
	public List<LocationVO> selectAddr3(LocationVO vo) {
		System.out.println(vo.toString());
		
		List<LocationVO> list = mainService.selectAddr3(vo);
		
		return list;
	}
	
	@RequestMapping("/selectLocNumByAddr.do")
	@ResponseBody
	public int selectLocNumByAddr(LocationVO vo) {
		System.out.println(vo.toString());
		
		int location_number = mainService.selectLocNumByAddr(vo);
		
		return location_number;
	}
	
	@RequestMapping("/insertQuestion.do")
	public String insertQuestion(QuestionVO qvo, MultipartFile file) throws IllegalStateException, IOException {
		
		ImageVO ivo = new ImageVO();
		
		// = (MultipartFile)request.getAttribute("file");
		
		if(!file.isEmpty()) {
			ivo.setOriginal_name(file.getOriginalFilename());
			ivo.setSize(file.getSize());
			
			UUID uuid = UUID.randomUUID();
			
			ivo.setSave_name(uuid.toString() + "_" + ivo.getOriginal_name());
			
			String realPath="C:\\Users\\kosmo\\git\\teamProject\\zTeamProject\\src\\main\\webapp\\resources\\uploads\\"+ivo.getSave_name();
			String path = "http://localhost:8080/zTeamProject/resources/uploads/"+ivo.getSave_name();
			
			ivo.setPath(path);
			
			System.out.println(realPath);
			
			File f = new File(realPath+ivo.getSave_name());
			
			file.transferTo(f);
		}
		
		mainService.insertQuestion(qvo, ivo);
		
		return "redirect:main_view.do";
	}
	
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step, Model m) {
		return step;
	}
	
}
