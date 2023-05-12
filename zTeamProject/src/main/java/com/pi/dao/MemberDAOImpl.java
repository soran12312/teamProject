package com.pi.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;

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

}
