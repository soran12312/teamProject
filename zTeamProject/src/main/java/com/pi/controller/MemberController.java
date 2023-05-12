package com.pi.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.pi.domain.ClassJoinVO;
import com.pi.domain.ClassVO;
import com.pi.domain.GuildVO;
import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;
import com.pi.service.ClassService;
import com.pi.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	ClassService classService;
	
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
	
	@RequestMapping("/modify_member.do")
	@Transactional
	public String modify_member(MultipartFile file, int interest_location_number1, int interest_location_number2, int interest_location_number3, MemberVO mvo, String location_number1, String location_number2, String location_number3, int img_check) {
		
		
		if(location_number1 != null && !location_number1.isEmpty()) {
			HashMap map = new HashMap();
			map.put("mod_location_number", location_number1);
			map.put("interest_location_number", interest_location_number1);
			
			memberService.mod_interest_location(map);
		}else if(location_number2 != null && !location_number2.isEmpty()) {
			HashMap map = new HashMap();
			map.put("mod_location_number", location_number2);
			map.put("interest_location_number", interest_location_number2);
			
			memberService.mod_interest_location(map);
		}else if(location_number3 != null && !location_number3.isEmpty()) {
			HashMap map = new HashMap();
			map.put("mod_location_number", location_number3);
			map.put("interest_location_number", interest_location_number3);
			
			memberService.mod_interest_location(map);
		}
		
		ImageVO ivo = new ImageVO();
		
		if(!file.isEmpty()) { 
			ivo.setOriginal_name(file.getOriginalFilename()); // 이미지의 원래이름 저장
			ivo.setSize(file.getSize()); // 이미지 크기 저장
			
			long time = System.currentTimeMillis(); // 현재시간을 밀리초단위로 가져온다.
			
			ivo.setSave_name(String.valueOf(time) + "_" + ivo.getOriginal_name()); // 원래이름에 현재시간을 더해 저장용 이름을 만든다.
			
			String realPath="C:\\Users\\kosmo\\git\\teamProject\\zTeamProject\\src\\main\\webapp\\resources\\uploads\\"+ivo.getSave_name(); // 실제 저장되는 경로
			String path = "http://192.168.0.68:8080/zTeamProject/resources/uploads/"+ivo.getSave_name(); // view에 띄울 용도의 이미지 경로
			
			ivo.setPath(path); // 이미지경로(uri)를 저장
			
			//System.out.println(realPath);
			
			File f = new File(realPath);
			
			try {
				file.transferTo(f); // 실제 저장되는 경로에 이미지 저장
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			ivo.setEmail(mvo.getEmail());
			
			int cnt = memberService.img_check(mvo.getEmail());
			
			if(cnt==0) {
				memberService.img_insert(ivo);
			}else{
				memberService.img_update(ivo);
			}
			
		} // end of if(!file.isEmpty())
		
		memberService.member_update(mvo);
		
		
		return "redirect:logout.do";
	}
	
	@RequestMapping("/mypage.do")
	public void mypage(Model m, HttpSession session) {
		String email = (String)session.getAttribute("email");
		
		List<ClassVO> my_class = memberService.select_my_class(email);
		List<HashMap> my_like = memberService.select_my_like(email);
		List<HashMap> prev_class = memberService.select_prev_class(email);
		
		List<GuildVO> my_guild = memberService.select_my_guild(email);
		List<HashMap> like_guild = memberService.select_like_guild(email);
		List<HashMap> join_guild = memberService.select_join_guild(email);
		
		List<HashMap> my_review = memberService.select_my_review(email);
		List<HashMap> like_review = memberService.select_like_review(email);
		
		List<QuestionVO> my_question = memberService.select_my_question(email);
		
		m.addAttribute("my_class", my_class);
		m.addAttribute("my_like", my_like);
		m.addAttribute("prev_class", prev_class);
		
		m.addAttribute("my_guild", my_guild);
		m.addAttribute("like_guild", like_guild);
		m.addAttribute("join_guild", join_guild);
		
		m.addAttribute("my_review", my_review);
		m.addAttribute("like_review", like_review);
		
		m.addAttribute("my_question", my_question);
	}
	
	@RequestMapping("/delete_my_class.do")
	public String delete_my_class(int class_number) {
		
		memberService.delete_my_class(class_number);
		
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/cancel_like.do")
	public String cancel_like(int like_number) {
		
		memberService.cancel_like(like_number);
		
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/class_join.do")
	public String class_join(int class_number, HttpSession session) {
		
		String email = (String)session.getAttribute("email");
		
		ClassJoinVO vo = new ClassJoinVO();
		vo.setClass_number(class_number);
		vo.setEmail(email);
		
		int check = classService.class_join_check(vo); // 해당 강좌의 강좌번호와 회원의 이메일을통해 강좌신청을 했는지 확인한다.
		
		if(check==0) { // 신청한적 없을 경우
			classService.class_join(vo); // 강좌신청테이블에 데이터 insert
			classService.inc_class_member(vo.getClass_number()); // 해당 강좌의 현재인원을 1 증가
		}
		
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/cancel_join.do")
	public String cancel_join(int class_join_number, int class_number) {
		
		memberService.cancel_join(class_join_number);
		memberService.dec_class_member(class_number);
		
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/delete_my_guild.do")
	public String delete_my_guild(int guild_number) {
		
		memberService.delete_my_guild(guild_number);
		
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/cancel_guild_join.do")
	public String cancel_guild_join(int guild_join_number, int guild_number) {
		
		memberService.cancel_guild_join(guild_join_number);
		memberService.dec_guild_member(guild_number);
		
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/delete_review.do")
	public String delete_review(int review_number) {
		
		memberService.delete_review(review_number);
		
		return "redirect:mypage.do";
	}
	
}
