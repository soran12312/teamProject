package com.pi.service;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pi.dao.AdminDAO;
import com.pi.domain.MemberVO;
import com.pi.paging.Criteria;


@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public List<MemberVO> listMember(MemberVO params) {
		// TODO Auto-generated method stub
		
		List<MemberVO> memberList =Collections.emptyList();

		//int memberTotalCount = 0;
			
		return adminDAO.listMember(params);

	
	}

	@Override
	public List<MemberVO> getListPaging(Criteria cri) {
		// TODO Auto-generated method stub
		
		return adminDAO.getListPaging(cri);
	}

	

}
