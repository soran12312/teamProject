package com.pi.service;

import java.util.HashMap;

import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;

public interface MemberService {

	public void insertMember(MemberVO mvo);
	public void insertInterestLocation(InterestLocationVO lvo);
	public void mod_interest_location(HashMap map);
}
