package com.pi.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pi.dao.MemberDAO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;
@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberVO mvo) {
		memberDAO.insertMember(mvo);

	}

	@Override
	public void insertInterestLocation(InterestLocationVO lvo) {
		memberDAO.insertInterestLocation(lvo);

	}

	@Override
	public void mod_interest_location(HashMap map) {
		
		memberDAO.mod_interest_location(map);
	}

}
