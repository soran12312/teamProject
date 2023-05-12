package com.pi.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pi.constant.SessionConstants;
import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;
import com.pi.paging.Criteria;
import com.pi.service.AdminService;

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
		
		
		// 
//		if(member == null || member.getMember_grade()!= 4) { 
//			   return "redirect:/main_view.do";
//		}
	    
		
		List<MemberVO> memberList = adminService.listMember(params);
		
		for(MemberVO mv : memberList)
		{
			System.out.println(mv);
		}
		
		return "admin";
	}
	
	
	// 회원 등급 수정
	@PostMapping("/updategrade")
	@ResponseBody
	public String updateGrade(MemberVO vo) {
	    // params 변수에는 AJAX 요청으로 전송된 {"member_grade": "2", "email": "example@example.com"}
	    
		 try {
		        //Integer member_grade = vo.getMember_grade();
		        //String email = vo.getEmail();
		        
		        // TODO: 이메일을 기반으로 회원 등급을 업데이트하는 로직을 구현합니다.
		        adminService.updateMember(vo);;
		        
		        System.out.println(vo);
		        
		        return "success";
		    }
		    catch (NumberFormatException ex){
		        System.out.println(ex.getMessage());
		        return "fail";
		    }
	   
	}
	
	// 회원 제재상태 수정
	@PostMapping("/updatestate")
	@ResponseBody
	public String updateState(MemberVO vo) {
	    
		// TODO: 이메일을 기반으로 회원 상태을 업데이트하는 로직을 구현합니다.
        adminService.updateState(vo);
        
        System.out.println(vo);

        return "success";
		      
	}
	
	
	// 회원 사업자번호 수정
	@PostMapping("/updatebusiness")
	@ResponseBody
	public String updateBusiness(MemberVO vo) {
	    
		// TODO: 이메일을 기반으로 사업자번호를 업데이트하는 로직을 구현합니다.
        adminService.updateBusiness(vo);
        
        System.out.println(vo);

        return "success";
		      
	}
	

	// 
	@GetMapping("/admin_chart")
	public String adminChart()
	{
		return "charts";
	}
	
	
	
	// 모든 문의 리스트
	@GetMapping("/admin_answer")
	public String adminAnswer(QuestionVO qvo, Model model)
	{
		List<QuestionVO> questionList = adminService.listQuestion(qvo);
		
		for(QuestionVO q : questionList)
		{
			System.out.println(q);
		}
		
		return "admin_answer";
	}

}






