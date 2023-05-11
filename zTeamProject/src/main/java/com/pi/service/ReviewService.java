package com.pi.service;

import java.util.HashMap;
import java.util.List;

import com.pi.domain.LikeVO;
import com.pi.domain.ReviewVO;

public interface ReviewService {

	public void review_insert(ReviewVO vo);
	
	public void updateImgByPath(String path);
	
	public int reviewCount(HashMap map);
	
	public List<HashMap> selectReview(HashMap map);
	
	public void incViewNum(int review_number);
	
	public HashMap selectAllReviewDetailByReviewNumber(int review_number);
	
	public int checkLike(LikeVO vo);
	
	public void insertLike(LikeVO vo);
	
	public void review_delete(int review_number);
}

