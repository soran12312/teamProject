package com.pi.service;

import java.util.Collections;
import java.util.HashMap;
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

	@Override
	public QuestionVO getQuestionByNumber(int qno) {
		// TODO Auto-generated method stub
		return adminDAO.getQuestionByNumber(qno);
	}

	@Override
	public List<HashMap> selectClassByMonthlyLike() {
		// TODO Auto-generated method stub
		return adminDAO.selectClassByMonthlyLike();
	}

	@Override
	public List<HashMap> selectGuildByMonthlyLike() {
		// TODO Auto-generated method stub
		return adminDAO.selectGuildByMonthlyLike();
	}

	@Override
	public List<HashMap> selectReviewByMonthlyLike() {
		// TODO Auto-generated method stub
		return adminDAO.selectReviewByMonthlyLike();
	}

	@Override
	public List<HashMap> selectMonthlyClassNumOfCate() {
		// TODO Auto-generated method stub
		return adminDAO.selectMonthlyClassNumOfCate();
	}

	@Override
	public List<HashMap> selectNumOfHashtagByCate(int category_number) {
		// TODO Auto-generated method stub
		return adminDAO.selectNumOfHashtagByCate(category_number);
	}

	@Override
	public void updateAnswer(int questionNumber, String content) {
		// TODO Auto-generated method stub
		adminDAO.updateAnswer(questionNumber, content);
	}
	
	
	

}
