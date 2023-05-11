package com.pi.service;

import java.util.HashMap;
import java.util.List;

import com.pi.domain.ClassJoinVO;
import com.pi.domain.ClassVO;
import com.pi.domain.HashtagVO;
import com.pi.domain.ImageVO;
import com.pi.domain.LikeVO;

public interface ClassService {

	public void class_insert(ClassVO vo);
	
	public void hashtag_insert(HashtagVO vo);
	
	public void insert_classImage(ImageVO ivo);
	
	public void updateImgByPath(String path);
	
	public List<HashMap> selectClassByLocation(HashMap map);
	
	public int classCount(HashMap map);
	
	public HashMap selectAllClassDetailByClassNumber(int class_number);
	
	public void incViewNum(int class_number);
	
	public int checkLike(LikeVO vo);
	
	public void insertLike(LikeVO vo);
	
	public int class_join_check(ClassJoinVO vo);
	
	public void class_join(ClassJoinVO vo);
	
	public void inc_class_member(int class_number);
	
	public void class_delete(int class_number);
}

