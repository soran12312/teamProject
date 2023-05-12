package com.pi.service;

import java.util.HashMap;

import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;

public interface MemberService {

	public void insertMember(MemberVO mvo);
	public void insertInterestLocation(InterestLocationVO lvo);
	public void mod_interest_location(HashMap map);
	public int img_check(String email);
	public void img_insert(ImageVO vo);
	public void img_update(ImageVO vo);
	public void member_update(MemberVO vo);
}
