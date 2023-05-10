package com.pi.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pi.domain.MemberVO;
import com.pi.paging.Criteria;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {
	
	
	@Autowired
	private SqlSessionTemplate mybatis;
	

	@Override
	public List<MemberVO> listMember(MemberVO mvo) {
		// TODO Auto-generated method stub
		System.out.println("===> Mybatis listMember() 호출");
		
		return mybatis.selectList("AdminMapper.selectMember", mvo);
	}
	

	@Override
	public List<MemberVO> getListPaging(Criteria cri) {
		// TODO Auto-generated method stub
        
		return mybatis.selectList("AdminMapper.selectMember", cri);
	}

}


