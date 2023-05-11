package com.pi.dao;

import java.util.HashMap;
import java.util.List;

import com.pi.domain.GuildVO;
import com.pi.domain.LikeVO;

public interface GuildDAO {

	public void guild_insert(GuildVO vo);
	
	public void updateImgByPath(String path);

	public List<HashMap> selectGuildByLocation(HashMap map);
	
	public int guildCount(HashMap map);
	
	public HashMap selectAllGuildDetailByGuildNumber(int guild_number); 
	
	public void incViewNum(int guild_number);
	
	public int checkLike(LikeVO vo);
	
	public void insertLike(LikeVO vo);
	
	public void guild_delete(int guild_number);
}
