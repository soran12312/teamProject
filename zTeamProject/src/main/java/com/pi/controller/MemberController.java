package com.pi.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.pi.domain.ImageVO;
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
	
	@RequestMapping("/modify_member.do")
	@Transactional
	public String modify_member(MultipartFile file, int interest_location_number1, int interest_location_number2, int interest_location_number, MemberVO mvo, int mod_location_number1, int mod_location_number2, int mod_location_number3, int img_check) {
		
		
		if(mod_location_number1!=0) {
			HashMap map = new HashMap();
			map.put("mod_location_number", mod_location_number1);
			map.put("interest_location_number", interest_location_number1);
			
			memberService.mod_interest_location(map);
		}else if(mod_location_number2!=0) {
			HashMap map = new HashMap();
			map.put("mod_location_number", mod_location_number1);
			map.put("interest_location_number", interest_location_number1);
			
			memberService.mod_interest_location(map);
		}else if(mod_location_number3!=0) {
			HashMap map = new HashMap();
			map.put("mod_location_number", mod_location_number1);
			map.put("interest_location_number", interest_location_number1);
			
			memberService.mod_interest_location(map);
		}
		
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
			
			try {
				file.transferTo(f); // 실제 저장되는 경로에 이미지 저장
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		
		
		
		
		
		
		return "";
	}
}
