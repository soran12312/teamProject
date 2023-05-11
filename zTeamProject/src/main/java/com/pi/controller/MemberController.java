package com.pi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;
import com.pi.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/insertMember.do")
	@Transactional
	public String insertMember(MemberVO mvo, InterestLocationVO lvo) { // 회원가입
		
		//System.out.println(mvo.toString());
		//System.out.println(lvo.toString());
		
		memberService.insertMember(mvo); // 받아온 회원정보를 DB에 저장
		for(int i = 0 ; i<3 ; i++ ) { // 관심지역(총 3개)의 지역번호를 vo하나에 담는다.
			InterestLocationVO vo = new InterestLocationVO();
			vo.setEmail(lvo.getEmail()); // 사용자의 이메일을 vo에 담는다.
			switch (i) {
			case 0:
				vo.setLocation_number(lvo.getLocation_number1());
				break;
			case 1:
				vo.setLocation_number(lvo.getLocation_number2());
				break;
			case 2:
				vo.setLocation_number(lvo.getLocation_number3());
				break;
			}
			memberService.insertInterestLocation(vo); // 관심지역을 DB에 등록
		}
		
		return "main_view";
	}
}
