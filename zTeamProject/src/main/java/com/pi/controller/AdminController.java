package com.pi.controller;

import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.pi.constant.SessionConstants;
import com.pi.domain.MemberVO;
import com.pi.paging.Criteria;
import com.pi.service.AdminService;
import com.pi.constant.Method;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	
	
	
	// 회원 리스트
	@GetMapping("/admin")
	public String admin(MemberVO params, Model model, HttpSession session, Criteria cri)
	{
		//Log.info("memberListGET");
		MemberVO  member =(MemberVO) session.getAttribute(SessionConstants.loginMember);
		
		
//		if(member == null || member.getMember_grade()!=4) { 
//			   return "redirect:/main_view.do";
//		}
	    
		
		List<MemberVO> memberList = adminService.listMember(params);
		
		for(MemberVO mv : memberList)
		{
			System.out.println(mv);
		}
		
		
		//model.addAttribute("memberList", memberList);
		model.addAttribute("memberList", adminService.getListPaging(cri));
		return "admin";
	}
	
	

	// 
	@GetMapping("/admin_chart")
	public String adminChart()
	{
		return "charts";
	}
	
	
	
	// 답변
	@GetMapping("/admin_answer")
	public String adminAnswer()
	{
		return "admin_answer";
	}

}






