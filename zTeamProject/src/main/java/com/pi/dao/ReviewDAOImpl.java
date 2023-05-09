package com.pi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pi.domain.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void review_insert(ReviewVO vo) {
		System.out.println("===> Mybatis Review_insert() 호출");
		
		int result = mybatis.insert("ReviewMapper.insertReview", vo);
		System.out.println(result);
	}
}
