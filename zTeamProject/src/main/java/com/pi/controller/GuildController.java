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
		List<LocationVO> list = (List<LocationVO>)session.getAttribute("locList");
		
		InterestLocationVO lvo = new InterestLocationVO();
		for(int i = 0 ; i<3 ; i++ ) {
			LocationVO temp = new LocationVO();
			temp = list.get(i);
			switch (i) {
			case 0:
				lvo.setLocation_number1(temp.getLocation_number());
				break;
			case 1:
				lvo.setLocation_number2(temp.getLocation_number());
				break;
			case 2:
				lvo.setLocation_number3(temp.getLocation_number());
				break;
			}
		}
		HashMap map = new HashMap();
		
		map.put("location_number1", lvo.getLocation_number1());
		map.put("location_number2", lvo.getLocation_number2());
		map.put("location_number3", lvo.getLocation_number3());
		
		if(currentPage==0) {
			currentPage=1;		
		}						
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

		guildService.incViewNum(guild_number);
		HashMap map = guildService.selectAllGuildDetailByGuildNumber(guild_number);
		m.addAttribute("map", map);
		System.out.println(map.toString());
	}
}
