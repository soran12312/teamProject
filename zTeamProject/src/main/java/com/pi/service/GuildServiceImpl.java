package com.pi.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pi.dao.GuildDAO;
import com.pi.domain.GuildJoinVO;
import com.pi.domain.GuildVO;
import com.pi.domain.LikeVO;

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
	
	@Override
	public List<HashMap> selectGuildByLocation(HashMap map) {
		
		return guildDAO.selectGuildByLocation(map);
	}

	@Override
	public int guildCount(HashMap map) {
		
		return guildDAO.guildCount(map);
	}

	@Override
	public HashMap selectAllGuildDetailByGuildNumber(int guild_number) {
		
		return guildDAO.selectAllGuildDetailByGuildNumber(guild_number);
	}

	@Override
	public void incViewNum(int guild_number) {
		
		guildDAO.incViewNum(guild_number);
	}

	@Override
	public int checkLike(LikeVO vo) {
		
		return guildDAO.checkLike(vo);
	}

	@Override
	public void insertLike(LikeVO vo) {
		guildDAO.insertLike(vo);
		
	}
	
	@Override
	public void guild_delete(int guild_number) {
		guildDAO.guild_delete(guild_number);
		
	}
	@Override
	public int guild_join(GuildJoinVO vo) {
		
		return guildDAO.guild_join(vo);
	}
	
	@Override
	public int insert_guild_join(GuildJoinVO vo) {
		return guildDAO.insert_guild_join(vo);
	}
}
