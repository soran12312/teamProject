package com.pi.service;

import java.util.List;
import java.util.Map;

import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;
import com.pi.paging.Criteria;

public interface AdminService {
	
	public List<MemberVO> listMember(MemberVO mvo);
	
	public List<MemberVO> getListPaging(Criteria cri);
	
	// 회원 등급 수정
	public void updateMember(MemberVO vo);
	
	
	// 회원 제재 수정
	public void updateState(MemberVO vo);
	
	// 회원 사업자 수정
	public void updateBusiness(MemberVO vo);
	
	
	// 질문목록
    public List<QuestionVO> listQuestion(QuestionVO qvo);

}
