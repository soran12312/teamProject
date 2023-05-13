package com.pi.dao;

import java.util.HashMap;
import java.util.List;

import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;
import com.pi.paging.Criteria;

public interface AdminDAO {
	
	// 회원목록
	public List<MemberVO> listMember(MemberVO mvo);
	
	 /* 회원목록(페이징 적용) */
    public List<MemberVO> getListPaging(Criteria cri);

  
    public void updateMemeber(MemberVO vo);

    public void updateBusiness(MemberVO vo);
    
    
    public void updateState(MemberVO vo);
    
    
    // 질문목록
    public List<QuestionVO> listQuestion(QuestionVO qvo);
    
    
    // 클릭한 질문
    public QuestionVO getQuestionByNumber(int qno);
    
    // 통계
    public List<HashMap> selectClassByMonthlyLike();
    public List<HashMap> selectGuildByMonthlyLike();
    public List<HashMap> selectReviewByMonthlyLike();
    public List<HashMap> selectMonthlyClassNumOfCate();
    public List<HashMap> selectNumOfHashtagByCate(int category_number);
    
}
