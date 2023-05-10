package com.pi.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.pi.domain.GuildVO;
import com.pi.domain.ImageVO;
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
}
