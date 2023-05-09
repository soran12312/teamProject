package com.pi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
