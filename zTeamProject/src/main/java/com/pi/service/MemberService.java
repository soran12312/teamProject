package com.pi.service;

import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;

public interface MemberService {

	public void insertMember(MemberVO mvo);
	public void insertInterestLocation(InterestLocationVO lvo);
}
