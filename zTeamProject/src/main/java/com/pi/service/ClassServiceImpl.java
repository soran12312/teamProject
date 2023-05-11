package com.pi.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pi.dao.ClassDAO;
import com.pi.domain.ClassJoinVO;
import com.pi.domain.ClassVO;
import com.pi.domain.HashtagVO;
import com.pi.domain.ImageVO;
import com.pi.domain.LikeVO;
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

	@Override
	public void insert_classImage(ImageVO ivo) {
		
		classDAO.insert_classImage(ivo);
	}

	@Override
	public void updateImgByPath(String path) {
		
		classDAO.updateImgByPath(path);
		
	}

	@Override
	public List<HashMap> selectClassByLocation(HashMap map) {
		
		return classDAO.selectClassByLocation(map);
	}

	@Override
	public int classCount(HashMap map) {
		
		return classDAO.classCount(map);
	}

	@Override
	public HashMap selectAllClassDetailByClassNumber(int class_number) {
		
		return classDAO.selectAllClassDetailByClassNumber(class_number);
	}

	@Override
	public void incViewNum(int class_number) {
		
		classDAO.incViewNum(class_number);
	}

	@Override
	public int checkLike(LikeVO vo) {
		
		return classDAO.checkLike(vo);
	}

	@Override
	public void insertLike(LikeVO vo) {
		
		classDAO.insertLike(vo);
	}

	@Override
	public int class_join_check(ClassJoinVO vo) {
		
		return classDAO.class_join_check(vo);
	}

	@Override
	public void class_join(ClassJoinVO vo) {
		
		classDAO.class_join(vo);
	}

	@Override
	public void inc_class_member(int class_number) {
		
		classDAO.inc_class_member(class_number);
	}

	@Override
	public void class_delete(int class_number) {
		classDAO.class_delete(class_number);
		
	}

}
