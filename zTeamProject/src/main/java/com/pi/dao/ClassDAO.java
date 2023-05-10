package com.pi.dao;

import java.util.HashMap;
import java.util.List;

import com.pi.domain.ClassVO;
import com.pi.domain.HashtagVO;
import com.pi.domain.ImageVO;
import com.pi.domain.LikeVO;

public interface ClassDAO {

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
}
