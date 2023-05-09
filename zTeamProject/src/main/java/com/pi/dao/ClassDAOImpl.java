package com.pi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pi.domain.ClassVO;

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

}
