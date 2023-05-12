package com.pi.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.LocationVO;
import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;

@Repository("mainDAO")
public class MainDAOImpl implements MainDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public HashMap loginCheck(MemberVO vo) {
		System.out.println("===> Mybatis loginCheck() 호출");
		
		return mybatis.selectOne("MainMapper.loginCheck", vo);
	}

	@Override
	public List<LocationVO> selectAddr1() {
		System.out.println("===> Mybatis selectAddr1() 호출");
		return mybatis.selectList("MainMapper.selectAddr1");
	}

	@Override
	public List<LocationVO> selectAddr2(LocationVO vo) {
		System.out.println("===> Mybatis selectAddr2() 호출");
		return mybatis.selectList("MainMapper.selectAddr2",vo);
	}
	
	@Override
	public List<LocationVO> selectAddr3(LocationVO vo) {
		System.out.println("===> Mybatis selectAddr3() 호출");
		return mybatis.selectList("MainMapper.selectAddr3",vo);
	}
	
	@Override
	public int selectLocNumByAddr(LocationVO vo) {
		System.out.println("===> Mybatis selectLocNumByAddr() 호출");
		LocationVO result = mybatis.selectOne("MainMapper.selectLocNumByAddr",vo);
		return result.getLocation_number();
	}

	@Override
	public void insertQuestion(QuestionVO qvo) {
		System.out.println("===> Mybatis insertQuestion() 호출");
		mybatis.insert("MainMapper.insertQuestion", qvo);
	}

	@Override
	public void insertQImage(ImageVO ivo) {
		System.out.println("===> Mybatis insertQImage() 호출");
		mybatis.insert("MainMapper.insertQImage", ivo);
	}

	

	@Override
	public List<HashMap> selectAllLocationNumberByEmail(String email) {
		System.out.println("===> Mybatis selectAllLocationNumberByEmail() 호출");
		return mybatis.selectList("MainMapper.selectAllLocationNumberByEmail",email);
	}

}
