package com.pi.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		
		
		// 비회원이거나 관리자아니면  홈으로 리다렉트
		if(member == null || member.getMember_grade()!= 4) { 
			   return "redirect:/main_view.do";
		}
	    
		
		List<MemberVO> memberList = adminService.listMember(params);
		
		for(MemberVO mv : memberList)
		{
			System.out.println(mv);
		}
		
		model.addAttribute("memberList", memberList);
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
	

	// 차트
	// 일별 좋아요수 상위 모임 20개의 모임번호, 모임명, 당일 좋아요 수 검색 막대형
	@GetMapping("/admin_chart")
	public String adminChart(Model model , int category_number, MemberVO params, HttpSession session)
	{
		
		//Log.info("memberListGET");
		MemberVO  member =(MemberVO) session.getAttribute(SessionConstants.loginMember);
		
		// 비회원이거나 관리자아니면  홈으로 리다렉트
		if(member == null || member.getMember_grade()!= 4) { 
			   return "redirect:/main_view.do";
		}
		
		List<HashMap> m_class = adminService.selectClassByMonthlyLike();
		List<HashMap> m_guild = adminService.selectGuildByMonthlyLike();
		List<HashMap> m_review = adminService.selectReviewByMonthlyLike();
		List<HashMap> cate_class = adminService.selectMonthlyClassNumOfCate();
		List<HashMap> hashtag = adminService.selectNumOfHashtagByCate(category_number);
		
		ArrayList<String> m_class_labels = new ArrayList<String>();
		ArrayList<Long> m_class_data = new ArrayList<Long>();
		
		ArrayList<String> m_guild_labels = new ArrayList<String>();
		ArrayList<Long> m_guild_data = new ArrayList<Long>();
		
		ArrayList<String> m_review_labels = new ArrayList<String>();
		ArrayList<Long> m_review_data = new ArrayList<Long>();
		
		ArrayList<String> cate_class_labels = new ArrayList<String>();
		ArrayList<Long> cate_class_data = new ArrayList<Long>();
		
		ArrayList<String> hashtag_labels = new ArrayList<String>();
		ArrayList<Long> hashtag_data = new ArrayList<Long>();
		
		for(HashMap map : m_class) { // 해쉬맵이 담긴 리스트 형태로 받아온 데이터들을 리스트안에 담긴 String&Long 형태로 바꿔준다.
			m_class_labels.add("\""+(String)map.get("class_name")+"\""); // 스크립트단에서 String로 인식하지 못하기때문에 String 앞뒤에 큰따옴표를 붙혀서 넣는다.
			m_class_data.add((Long)map.get("class_like"));
		}
		for(HashMap map : m_guild) {
			m_guild_labels.add("\""+(String)map.get("guild_name")+"\"");
			m_guild_data.add((Long)map.get("guild_like"));
		}
		for(HashMap map : m_review) {
			m_review_labels.add("\""+(String)map.get("title")+"\"");
			m_review_data.add((Long)map.get("review_like"));
		}
		for(HashMap map : cate_class) {
			cate_class_labels.add("\""+(String)map.get("category_name")+"\"");
			cate_class_data.add((Long)map.get("num_of_class"));
		}
		for(HashMap map : hashtag) {
			hashtag_labels.add("\""+(String)map.get("hashtag_name")+"\"");
			hashtag_data.add((Long)map.get("num_of_hashtag"));
		}
		
		model.addAttribute("m_class_labels", m_class_labels);
		model.addAttribute("m_class_data", m_class_data);
		model.addAttribute("m_guild_labels", m_guild_labels);
		model.addAttribute("m_guild_data", m_guild_data);
		model.addAttribute("m_review_labels", m_review_labels);
		model.addAttribute("m_review_data", m_review_data);
		model.addAttribute("cate_class_labels", cate_class_labels);
		model.addAttribute("cate_class_data", cate_class_data);
		model.addAttribute("hashtag_labels", hashtag_labels);
		model.addAttribute("hashtag_data", hashtag_data);
		
		
		return "charts";
	}
	
	
	
	// 모든 문의 리스트
	@GetMapping("/admin_question")
	public String adminQuestion(QuestionVO qvo, Model model, MemberVO params, HttpSession session)
	{
		
		//Log.info("memberListGET");
		MemberVO  member =(MemberVO) session.getAttribute(SessionConstants.loginMember);
		
		// 비회원이거나 관리자아니면  홈으로 리다렉트
		if(member == null || member.getMember_grade()!= 4) { 
			   return "redirect:/main_view.do";
		}
	
		List<QuestionVO> questionList = adminService.listQuestion(qvo);
		
//		for(QuestionVO q : questionList)
//		{
//			System.out.println(q);
//		}
		System.out.println(questionList);
		
		model.addAttribute("questionList", questionList);
		
		return "admin_answer";
	}
	
	
	
	
	
	
	// 선택한 문의 답변페이지 이동
	@RequestMapping(value = "/admin_answer", method = RequestMethod.GET)
	public String showAnswerPage(@RequestParam("question_number") int questionNumber, Model model, MemberVO params, HttpSession session)
	{
		
		//Log.info("memberListGET");
		MemberVO  member =(MemberVO) session.getAttribute(SessionConstants.loginMember);
		
		// 비회원이거나 관리자아니면  홈으로 리다렉트
		if(member == null || member.getMember_grade()!= 4) { 
			   return "redirect:/main_view.do";
		}
		        
		        
		// 질문 번호를 사용하여 선택한 질문의 세부 정보를 데이터베이스에서 가져옴
		QuestionVO selectedQuestion = adminService.getQuestionByNumber(questionNumber);
		        
		System.out.println(questionNumber);
		
		System.out.println(selectedQuestion);
		        
		// 선택한 질문 세부 정보를 모델에 추가
		model.addAttribute("selectedQuestion", selectedQuestion);
		
		return "answer"; // 뷰 페이지 이름
	}
	
	
	// 수정한 답변 
	@PostMapping("/saveAnswer")
	public String saveAnswer(@RequestParam("questionNumber") int questionNumber,
	                         @RequestParam("content") String content) {
	    // questionNumber와 content를 사용하여 DB 업데이트 로직 수행
	    // ...
		adminService.updateAnswer(questionNumber, content);

	    return "redirect:/admin_question"; // 업데이트가 완료된 후, 다시 목록 페이지로 이동
	}
	
	
	

	@RequestMapping(value = "/question/edit", method = RequestMethod.POST)
	public String editQuestion(@ModelAttribute("question") QuestionVO question) {
	    // 질문 수정 로직 작성

	    // question.answer_state를 1로 업데이트하는 코드 작성
	    // 예시: questionService.updateAnswerState(question.getQuestionNumber(), 1);

	    return "redirect:/question"; // 수정 후 목록 페이지로 리다이렉트
	}

}






