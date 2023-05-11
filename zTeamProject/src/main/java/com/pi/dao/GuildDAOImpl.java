package com.pi.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pi.domain.GuildVO;
import com.pi.domain.LikeVO;

@Repository("guildDAO")
public class GuildDAOImpl implements GuildDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void guild_insert(GuildVO vo) {
		System.out.println("===> Mybatis Guild_insert() 호출");
		
		int result = mybatis.insert("GuildMapper.insertGuild", vo);
		System.out.println(result);
	}

	@Override
	public void updateImgByPath(String path) {
		System.out.println("===> Mybatis updateImgByPath() 호출");
		
		mybatis.update("GuildMapper.updateImgByPath", path);
	}
	
	@Override
	public List<HashMap> selectGuildByLocation(HashMap map) {
		System.out.println("===> Mybatis selectGuildByLocation() 호출");
		
		return mybatis.selectList("GuildMapper.selectGuildByLocation", map);
	}
	@Override
	public int guildCount(HashMap map) {
		System.out.println("===> Mybatis GuildCount() 호출");
		
		return mybatis.selectOne("GuildMapper.guildCount", map);
	}

	@Override
	public HashMap selectAllGuildDetailByGuildNumber(int guild_number) {
		System.out.println("===> Mybatis selectAllGuildDetailByGuildNumber() 호출");
		
		return mybatis.selectOne("GuildMapper.selectAllGuildDetailByGuildNumber", guild_number);
	}
	
	@Override
	public int checkLike(LikeVO vo) {
		System.out.println("===> Mybatis checkLike() 호출");
		
		return mybatis.selectOne("GuildMapper.checkLike", vo);
	}

	@Override
	public void insertLike(LikeVO vo) {
		System.out.println("===> Mybatis insertLike() 호출");
		
		mybatis.insert("GuildMapper.insertLike", vo);
	}

	@Override
	public void guild_delete(int guild_number) {
		System.out.println("===> Mybatis guild_delete() 호출");
		
		mybatis.update("GuildMapper.guild_delete", guild_number);
	}
	
}
