package com.pi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pi.dao.GuildDAO;
import com.pi.domain.GuildVO;

@Service("guildService")
public class GuildServiceImpl implements GuildService {

	@Autowired
	GuildDAO guildDAO;
	


	@Override
	public void guild_insert(GuildVO vo) {
		
		guildDAO.guild_insert(vo);
	}



	@Override
	public void updateImgByPath(String path) {
		
		guildDAO.updateImgByPath(path);
	}

}
