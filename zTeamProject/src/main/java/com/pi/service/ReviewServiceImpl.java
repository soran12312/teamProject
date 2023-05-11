package com.pi.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pi.dao.ReviewDAO;
import com.pi.domain.LikeVO;
import com.pi.domain.ReviewVO;
@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDAO reviewDAO;
	
	@Override
	public void review_insert(ReviewVO vo) {
		
		reviewDAO.review_insert(vo);
	}

	@Override
	public void updateImgByPath(String path) {
		
		reviewDAO.updateImgByPath(path);
	}

	@Override
	public int reviewCount(HashMap map) {
		
		return reviewDAO.reviewCount(map);
	}

	@Override
	public List<HashMap> selectReview(HashMap map) {
		
		return reviewDAO.selectReview(map);
	}

	@Override
	public void incViewNum(int review_number) {
		
		reviewDAO.incViewNum(review_number);
	}

	@Override
	public HashMap selectAllReviewDetailByReviewNumber(int review_number) {
		
		return reviewDAO.selectAllReviewDetailByReviewNumber(review_number);
	}

	@Override
	public int checkLike(LikeVO vo) {
		
		return reviewDAO.checkLike(vo);
	}

	@Override
	public void insertLike(LikeVO vo) {
		reviewDAO.insertLike(vo);
		
	}

	@Override
	public void review_delete(int review_number) {
		
		reviewDAO.review_delete(review_number);
	}
}
