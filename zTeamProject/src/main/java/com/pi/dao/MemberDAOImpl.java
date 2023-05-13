package com.pi.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pi.domain.ClassVO;
import com.pi.domain.GuildVO;
import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertMember(MemberVO mvo) {
		System.out.println("===> Mybatis insertMember() 호출");
		
		mybatis.selectOne("MemberMapper.insertMember", mvo);
	}

	@Override
	public void insertInterestLocation(InterestLocationVO lvo) {
		System.out.println("===> Mybatis insertInterestLocation() 호출");
		
		mybatis.selectOne("MemberMapper.insertInterestLocation", lvo);
	}

	@Override
	public void mod_interest_location(HashMap map) {
		System.out.println("===> Mybatis mod_interest_location() 호출");
		
		mybatis.update("MemberMapper.mod_interest_location", map);
	}

	@Override
	public int img_check(String email) {
		System.out.println("===> Mybatis img_check() 호출");
		
		return mybatis.selectOne("MemberMapper.img_check", email);
	}

	@Override
	public void img_insert(ImageVO vo) {
		System.out.println("===> Mybatis img_insert() 호출");
		
		mybatis.selectOne("MemberMapper.img_insert", vo);
	}

	@Override
	public void img_update(ImageVO vo) {
		System.out.println("===> Mybatis img_update() 호출");
		
		mybatis.selectOne("MemberMapper.img_update", vo);
	}

	@Override
	public void member_update(MemberVO vo) {
		System.out.println("===> Mybatis member_update() 호출");
		
		mybatis.selectOne("MemberMapper.member_update", vo);
	}

	@Override
	public List<ClassVO> select_my_class(String email) {
		System.out.println("===> Mybatis select_my_class() 호출");
		
		return mybatis.selectList("MemberMapper.select_my_class", email);
	}

	@Override
	public List<HashMap> select_my_like(String email) {
		System.out.println("===> Mybatis select_my_like() 호출");
		
		return mybatis.selectList("MemberMapper.select_my_like", email);
	}

	@Override
	public List<HashMap> select_prev_class(String email) {
		System.out.println("===> Mybatis select_prev_class() 호출");
		
		return mybatis.selectList("MemberMapper.select_prev_class", email);
	}

	@Override
	public void delete_my_class(int class_number) {
		System.out.println("===> Mybatis delete_my_class() 호출");
		
		mybatis.update("MemberMapper.delete_my_class", class_number);
	}

	@Override
	public void cancel_like(int like_number) {
		System.out.println("===> Mybatis cancel_like() 호출");
		
		mybatis.update("MemberMapper.cancel_like", like_number);
	}

	@Override
	public void cancel_join(int class_join_number) {
		System.out.println("===> Mybatis cancel_join() 호출");
		
		mybatis.update("MemberMapper.cancel_join", class_join_number);
	}

	@Override
	public List<GuildVO> select_my_guild(String email) {
		System.out.println("===> Mybatis select_my_guild() 호출");
		
		return mybatis.selectList("MemberMapper.select_my_guild", email);
	}

	@Override
	public List<HashMap> select_like_guild(String email) {
		System.out.println("===> Mybatis select_like_guild() 호출");
		
		return mybatis.selectList("MemberMapper.select_like_guild", email);
	}

	@Override
	public List<HashMap> select_join_guild(String email) {
		System.out.println("===> Mybatis select_join_guild() 호출");
		
		return mybatis.selectList("MemberMapper.select_join_guild", email);
	}

	@Override
	public void dec_class_member(int class_number) {
		System.out.println("===> Mybatis desc_class_member() 호출");
		
		mybatis.update("MemberMapper.dec_class_member", class_number);
	}

	@Override
	public void delete_my_guild(int guild_number) {
		System.out.println("===> Mybatis delete_my_guild() 호출");
		
		mybatis.update("MemberMapper.delete_my_guild", guild_number);
	}

	@Override
	public void cancel_guild_join(int guild_join_number) {
		System.out.println("===> Mybatis cancel_guild_join() 호출");
		
		mybatis.update("MemberMapper.cancel_guild_join", guild_join_number);
	}

	@Override
	public void dec_guild_member(int guild_number) {
		System.out.println("===> Mybatis dec_guild_member() 호출");
		
		mybatis.update("MemberMapper.dec_guild_member", guild_number);
	}

	@Override
	public List<HashMap> select_my_review(String email) {
		System.out.println("===> Mybatis select_my_review() 호출");
		
		return mybatis.selectList("MemberMapper.select_my_review", email);
	}

	@Override
	public List<HashMap> select_like_review(String email) {
		System.out.println("===> Mybatis select_like_review() 호출");
		
		return mybatis.selectList("MemberMapper.select_like_review", email);
	}

	@Override
	public void delete_review(int review_number) {
		System.out.println("===> Mybatis delete_review() 호출");
		
		mybatis.update("MemberMapper.delete_review", review_number);
	}

	@Override
	public List<QuestionVO> select_my_question(String email) {
		System.out.println("===> Mybatis select_my_question() 호출");
		
		return mybatis.selectList("MemberMapper.select_my_question", email);
	}

	

}
