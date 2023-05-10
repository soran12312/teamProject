package com.pi.dao;

import java.util.HashMap;
import java.util.List;

import com.pi.domain.ClassVO;
import com.pi.domain.HashtagVO;
import com.pi.domain.ImageVO;

public interface ClassDAO {

	public void class_insert(ClassVO vo);

	public void hashtag_insert(HashtagVO vo);
	
	public void insert_classImage(ImageVO ivo);
	
	public void updateImgByPath(String path);
	
	public List<HashMap> selectClassByLocation(HashMap map);
	
	public int classCount(HashMap map);

}
