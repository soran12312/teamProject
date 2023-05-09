package com.pi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pi.domain.GuildVO;

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

}
