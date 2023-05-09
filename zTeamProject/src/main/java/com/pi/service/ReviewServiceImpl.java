package com.pi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pi.dao.ReviewDAO;
import com.pi.domain.ReviewVO;
@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDAO reviewDAO;
	
	@Override
	public void review_insert(ReviewVO vo) {
		
		reviewDAO.review_insert(vo);
	}
}
