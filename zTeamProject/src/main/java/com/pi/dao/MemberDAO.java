package com.pi.dao;

import java.util.HashMap;

import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;

public interface MemberDAO {

	public void insertMember(MemberVO mvo);
	public void insertInterestLocation(InterestLocationVO lvo);
	public void mod_interest_location(HashMap map);
}
