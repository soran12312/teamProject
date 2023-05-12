package com.pi.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

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
import com.pi.domain.GuildJoinVO;
import com.pi.domain.GuildVO;
import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.LikeVO;
import com.pi.domain.LocationVO;
import com.pi.service.GuildService;


@Controller
public class GuildController {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	GuildService guildService;
	
	@Transactional
	@RequestMapping("/guild_insert.do")
	public String guild_insert(GuildVO vo, String path) {

		guildService.guild_insert(vo);
		
		ArrayList<String> path_list = new ArrayList<String>();
		
		StringTokenizer pst = new StringTokenizer(path,",");
		for(int i=0; pst.hasMoreTokens(); i++) {
			path_list.add(pst.nextToken());
		}
		
		for(String k : path_list) {
			System.out.println(k);
			guildService.updateImgByPath(k);
		}
		
		return "guild_list";
	}	
	
	@RequestMapping("/guild_list.do")
	public void guild_list(Model m, HttpSession session, int currentPage){
		
	     
	      String option = null;
	      String keyword = null; // 카테고리번호, 검색옵션, 검색키워드를 선언
	      
	      if(session.getAttribute("option")!=null) { // 세션에 검색옵션이 있을 경우
	         option = (String)session.getAttribute("option");
	         keyword = (String)session.getAttribute("keyword"); // 세션에서 검색옵션과 키워드를 가져온다.
	      }
	      System.out.println(option);
	      System.out.println(keyword);
		
		List<HashMap> list = (List<HashMap>)session.getAttribute("locList");
		
		InterestLocationVO lvo = new InterestLocationVO();
		for(int i = 0 ; i<3 ; i++ ) {
			HashMap temp = new HashMap();
			temp = list.get(i);
			switch (i) {
			case 0:
				lvo.setLocation_number1((int)temp.get("location_number"));
				break;
			case 1:
				lvo.setLocation_number2((int)temp.get("location_number"));
				break;
			case 2:
				lvo.setLocation_number3((int)temp.get("location_number"));
				break;
			}
		}
		HashMap map = new HashMap();
		
		map.put("location_number1", lvo.getLocation_number1());
		map.put("location_number2", lvo.getLocation_number2());
		map.put("location_number3", lvo.getLocation_number3());
		
			//총 게시글 수
			int cnt = guildService.guildCount(map);
			
			// 한 페이지에 출력될 글 수 
			int pageSize = 10;
			
			// 한번에 보여지는 페이징 수(페이지넘버)
			int pageLimit = 5;
			
			int maxPage = (int)Math.ceil(cnt / (double)pageSize);
		    int startPage = (int)((currentPage - 1) / pageLimit) * pageLimit + 1;  
		    int endPage = startPage + pageLimit - 1;
		    
		    if(maxPage < endPage) {
	            endPage = maxPage;
	        }
			
		    if(option != null) {
		         map.put("option", option);
		         map.put("keyword", keyword); // 검색옵션이 있을 경우 해쉬맵에 검색옵션과 키워드를 넣는다.
		    }
			
			//현재 페이지에서 첫번째로 보여질 글 인덱스
			int first_view = (currentPage-1)*10;
			
			map.put("first_view", first_view);
			
			System.out.println(map.toString());
			
			List<HashMap> listMap = guildService.selectGuildByLocation(map);
			
			m.addAttribute("listMap", listMap);
			m.addAttribute("maxPage", maxPage);
			m.addAttribute("startPage", startPage);
			m.addAttribute("endPage", endPage);
			m.addAttribute("currentPage", currentPage);
	}

	
	@RequestMapping("/guild_detail.do")
	public void guild_detail(HttpSession session, Model m , @RequestParam int guild_number) {
		
		session.removeAttribute("option");
		session.removeAttribute("keyword");
		
		HashMap map = guildService.selectAllGuildDetailByGuildNumber(guild_number);
		m.addAttribute("map", map);
		System.out.println(map.toString());
	}
	
	

	@RequestMapping("/guild_delete.do")
	public String guild_delete(int guild_number) { // 강좌삭제
		
		guildService.guild_delete(guild_number); // 해당강좌 강좌번호를 이용하여 강좌의 등록상태를 변경한다.(update)
		
		return "redirect:guild_list.do?currentPage=1"; // 리스트페이지로 리다이렉팅
	}
	
	@RequestMapping("/guild_join.do")
	@ResponseBody
	public String guild_join(String chatroom, GuildJoinVO vo, int current_member, int max_member) {	//모임가입여부 확인
		int result = guildService.guild_join(vo);
		if(result == 1) {
		//가입되어 있으면 채팅방으로 리다이렉트	
		return "1";
		}
		//가입x에 정원이 안찼으면
		else if(current_member != max_member){	  
			//가입창으로 이동
			int result2 = guildService.insert_guild_join(vo); 

			if(result2==1) {
				guildService.inc_guild_member(vo);
				//가입완료되면 채팅방으로 이동
				return "1";
				}
			else {
				//알수없는 오류...가입불가가 떳읍니다..
				return "2";
				}
		}
		//가입x에 정원이 찼으면 정원초과 리턴
		else {return "3";
		
		}
	}
	
	@RequestMapping("/search_guild.do")
	   public String search_guild(HttpSession session, String option, String keyword){
	      
		if(keyword=="") { // 검색 키워드가 ""일 경우(전체검색)
			session.removeAttribute("option");
			session.removeAttribute("keyword"); // 세션에서 검색옵션과 키워드를 삭제
		}else { 			// 검색키워드가 있을 경우
	         session.setAttribute("option", option);
	         session.setAttribute("keyword", keyword); // 세션에 검색옵션과 키워드를 저장
		}
	      
	      return "redirect:guild_list.do?currentPage=1"; // 강좌 리스트.do로 리다이렉팅
	 }
	
	@RequestMapping("insertGuildLike.do")
	   public String insertLike(LikeVO vo) {
	      int cnt = guildService.checkLike(vo); // 회원 이메일과 강좌번호를 통해 해당회원이 해당 강좌에 좋아요를 눌렀는지 확인한다.
	      
	      if(cnt==0) { // 좋아요를 누르지 않았을 경우 
	         guildService.insertLike(vo); // 좋아요 등록
	      }
	      
	      return "redirect:guild_detail.do?guild_number="+String.valueOf(vo.getGuild_number()); // 강좌상세보기로 리다이렉팅(화면상 좋아요갯수가 변하게하기위해)   
	   }
	
}
