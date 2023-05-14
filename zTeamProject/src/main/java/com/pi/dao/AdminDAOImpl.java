package com.pi.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;
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


	@Override
	public void updateMemeber(MemberVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===> Mybatis updateMemeber() 호출");
		mybatis.update("AdminMapper.updateMember", vo);
	}


	@Override
	public void updateBusiness(MemberVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===> Mybatis updateBusiness() 호출");
		mybatis.update("AdminMapper.updateMember", vo);
	}


	@Override
	public void updateState(MemberVO vo) {
		// TODO Auto-generated method stub
		System.out.println("===> Mybatis updateState() 호출");
		mybatis.update("AdminMapper.updateMember", vo);

	}


	@Override
	public List<QuestionVO> listQuestion(QuestionVO qvo) {
		// TODO Auto-generated method stub
		System.out.println("===> Mybatis listQuestion() 호출");
		
		return mybatis.selectList("AdminMapper.selectAllQuestion", qvo);
	}


	@Override
	public QuestionVO getQuestionByNumber(int qno) {
		// TODO Auto-generated method stub
		System.out.println("===> Mybatis getQuestionByNumber() 호출");
		
		return mybatis.selectOne("AdminMapper.getQuestionByNumber", qno);
	}


	@Override
	public List<HashMap> selectClassByMonthlyLike() {
		System.out.println("===> Mybatis selectClassByMonthlyLike() 호출");
		
		return mybatis.selectList("AdminMapper.selectClassByMonthlyLike");
	}


	@Override
	public List<HashMap> selectGuildByMonthlyLike() {
		System.out.println("===> Mybatis selectGuildByMonthlyLike() 호출");
		
		return mybatis.selectList("AdminMapper.selectGuildByMonthlyLike");
	}


	@Override
	public List<HashMap> selectReviewByMonthlyLike() {
		System.out.println("===> Mybatis selectReviewByMonthlyLike() 호출");
		
		return mybatis.selectList("AdminMapper.selectReviewByMonthlyLike");
	}


	@Override
	public List<HashMap> selectMonthlyClassNumOfCate() {
		System.out.println("===> Mybatis selectMonthlyClassNumOfCate() 호출");
		
		return mybatis.selectList("AdminMapper.selectMonthlyClassNumOfCate");
	}


	@Override
	public List<HashMap> selectNumOfHashtagByCate(int category_number) {
		System.out.println("===> Mybatis selectNumOfHashtagByCate() 호출");
		
		return mybatis.selectList("AdminMapper.selectNumOfHashtagByCate", category_number);
	}


	@Override
	public void updateAnswer(int questionNumber, String content) {
		// TODO Auto-generated method stub
		System.out.println("===> Mybatis updateAnswer 호출");
		
		
		QuestionVO questionVO = new QuestionVO();
	    questionVO.setQuestion_number(questionNumber);
	    questionVO.setContent(content);
		
		mybatis.update("AdminMapper.updateAnswer", questionVO);
	}


	
}


