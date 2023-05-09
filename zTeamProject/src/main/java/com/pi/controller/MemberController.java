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
	public String insertMember(MemberVO mvo, InterestLocationVO lvo) {
		
		System.out.println(mvo.toString());
		System.out.println(lvo.toString());
		
		memberService.insertMember(mvo);
		for(int i = 0 ; i<3 ; i++ ) {
			InterestLocationVO vo = new InterestLocationVO();
			vo.setEmail(lvo.getEmail());
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
			memberService.insertInterestLocation(vo);
		}
		
		return "main_view";
	}
}
