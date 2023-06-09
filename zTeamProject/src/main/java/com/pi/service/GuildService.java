package com.pi.service;

import java.util.HashMap;
import java.util.List;

import com.pi.domain.GuildJoinVO;
import com.pi.domain.GuildVO;
import com.pi.domain.LikeVO;

public interface GuildService {

	public void guild_insert(GuildVO vo);

	public void updateImgByPath(String path);

	public List<HashMap> selectGuildByLocation(HashMap map);

	public int guildCount(HashMap map);

	public HashMap selectAllGuildDetailByGuildNumber(int guild_number);

	public int checkLike(LikeVO vo);

	public void insertLike(LikeVO vo);
	
	public void guild_delete(int guild_number);
	
	public int guild_join(GuildJoinVO vo);
	
	public int  insert_guild_join(GuildJoinVO vo);
	
	public void inc_guild_member(GuildJoinVO vo);
}
