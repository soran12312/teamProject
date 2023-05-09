package com.pi.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	
	@RequestMapping("/guild_insert.do")
	public String guild_insert(GuildVO vo) {

		guildService.guild_insert(vo);
		
		return "guild_list";
	}

	
}
