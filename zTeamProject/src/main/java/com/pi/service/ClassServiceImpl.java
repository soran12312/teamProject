package com.pi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pi.dao.ClassDAO;
import com.pi.domain.ClassVO;
import com.pi.domain.HashtagVO;
@Service("classService")
public class ClassServiceImpl implements ClassService {

	@Autowired
	ClassDAO classDAO;
	
	@Override
	public void class_insert(ClassVO vo) {
		
		classDAO.class_insert(vo);
	}
	
	public void hashtag_insert(HashtagVO vo) {
		
		classDAO.hashtag_insert(vo);
	}

}
