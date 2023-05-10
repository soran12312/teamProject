package com.pi.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pi.domain.ClassVO;
import com.pi.domain.HashtagVO;
import com.pi.domain.ImageVO;


@Repository("classDAO")
public class ClassDAOImpl implements ClassDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void class_insert(ClassVO vo) {
		System.out.println("===> Mybatis class_insert() 호출");
		
		int result = mybatis.insert("ClassMapper.insertClass", vo);
		System.out.println(result);
	}
	
	public void hashtag_insert(HashtagVO vo) {
		System.out.println("===> Mybatis hashtag_insert() 호출");
		
		int result = mybatis.insert("ClassMapper.insertHashtag", vo);
		System.out.println(result);
	}
	
	@Override
	public void insert_classImage(ImageVO ivo) {
		System.out.println("===> Mybatis insert_classImage() 호출");
		
		mybatis.insert("ClassMapper.insert_classImage", ivo);
	}
	
	@Override
	public void updateImgByPath(String path) {
		System.out.println("===> Mybatis updateImgByPath() 호출");
		
		mybatis.update("ClassMapper.updateImgByPath", path);
	}
	@Override
	public List<HashMap> selectClassByLocation(HashMap map) {
		System.out.println("===> Mybatis selectClassByLocation() 호출");
		
		return mybatis.selectList("ClassMapper.selectClassByLocation", map);
	}
	@Override
	public int classCount(HashMap map) {
		System.out.println("===> Mybatis classCount() 호출");
		
		return mybatis.selectOne("ClassMapper.classCount", map);
	}
	
}
