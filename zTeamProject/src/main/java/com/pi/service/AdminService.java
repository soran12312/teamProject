package com.pi.service;

import java.util.List;

import com.pi.domain.MemberVO;
import com.pi.paging.Criteria;

public interface AdminService {
	
	public List<MemberVO> listMember(MemberVO mvo);
	
	public List<MemberVO> getListPaging(Criteria cri);

}
