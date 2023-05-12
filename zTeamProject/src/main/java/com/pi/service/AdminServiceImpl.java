package com.pi.service;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pi.dao.AdminDAO;
import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;
import com.pi.paging.Criteria;


@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminDAO adminDAO;

	@Override
	public List<MemberVO> listMember(MemberVO params) {
		// TODO Auto-generated method stub
		
		return adminDAO.listMember(params);
	}

	@Override
	public List<MemberVO> getListPaging(Criteria cri) {
		// TODO Auto-generated method stub
		
		return adminDAO.getListPaging(cri);
	}

	public void updateMember(MemberVO vo) {
		adminDAO.updateMemeber(vo);
	}

	@Override
	public void updateState(MemberVO vo) {
		// TODO Auto-generated method stub
		adminDAO.updateState(vo);
		
	}

	@Override
	public void updateBusiness(MemberVO vo) {
		// TODO Auto-generated method stub
		adminDAO.updateBusiness(vo);
	}

	@Override
	public List<QuestionVO> listQuestion(QuestionVO qvo) {
		// TODO Auto-generated method stub
		
			
		return adminDAO.listQuestion(qvo);
		
	}
	
	
	

}
