package com.pi.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pi.dao.MemberDAO;
import com.pi.domain.ImageVO;
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

	@Override
	public int img_check(String email) {
		
		return memberDAO.img_check(email);
	}

	@Override
	public void img_insert(ImageVO vo) {
		memberDAO.img_insert(vo);
		
	}

	@Override
	public void img_update(ImageVO vo) {
		memberDAO.img_update(vo);
		
	}

	@Override
	public void member_update(MemberVO vo) {
		memberDAO.member_update(vo);
		
	}

}
