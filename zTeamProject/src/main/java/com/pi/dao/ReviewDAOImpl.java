package com.pi.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pi.domain.LikeVO;
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

	@Override
	public void updateImgByPath(String path) {
		System.out.println("===> Mybatis updateImgByPath() 호출");
		
		mybatis.update("ReviewMapper.updateImgByPath", path);
	}

	@Override
	public int reviewCount(HashMap map) {
		System.out.println("===> Mybatis reviewCount() 호출");
		
		return mybatis.selectOne("ReviewMapper.reviewCount", map);
	}

	@Override
	public List<HashMap> selectReview(HashMap map) {
		System.out.println("===> Mybatis selectReview() 호출");
		
		return mybatis.selectList("ReviewMapper.selectReview", map);
	}

	@Override
	public void incViewNum(int review_number) {
		System.out.println("===> Mybatis incViewNum() 호출");
		
		mybatis.update("ReviewMapper.incViewNum", review_number);
	}

	@Override
	public HashMap selectAllReviewDetailByReviewNumber(int review_number) {
		System.out.println("===> Mybatis selectAllReviewDetailByReviewNumber() 호출");
		
		return mybatis.selectOne("ReviewMapper.selectAllReviewDetailByReviewNumber", review_number);
	}

	@Override
	public int checkLike(LikeVO vo) {
		System.out.println("===> Mybatis checkLike() 호출");
		
		return mybatis.selectOne("ReviewMapper.checkLike", vo);
	}

	@Override
	public void insertLike(LikeVO vo) {
		System.out.println("===> Mybatis insertLike() 호출");
		
		mybatis.insert("ReviewMapper.insertLike", vo);
	}

	@Override
	public void review_delete(int review_number) {
		System.out.println("===> Mybatis review_delete() 호출");
		
		mybatis.update("ReviewMapper.review_delete", review_number);
	}
}
