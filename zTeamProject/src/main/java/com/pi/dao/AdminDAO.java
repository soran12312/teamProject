package com.pi.dao;

import java.util.List;

import com.pi.domain.MemberVO;
import com.pi.paging.Criteria;

public interface AdminDAO {
	
	// 회원목록
	public List<MemberVO> listMember(MemberVO mvo);
	
	 /* 회원목록(페이징 적용) */
    public List<MemberVO> getListPaging(Criteria cri);


}
