package com.pi.service;

import com.pi.domain.ClassVO;
import com.pi.domain.HashtagVO;
import com.pi.domain.ImageVO;

public interface ClassService {

	public void class_insert(ClassVO vo);
	
	public void hashtag_insert(HashtagVO vo);
	
	public void insert_classImage(ImageVO ivo);
	
	public void updateImgByPath(String path);
}

