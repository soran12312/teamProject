package com.pi.dao;

import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;

public interface MemberDAO {

	public void insertMember(MemberVO mvo);
	public void insertInterestLocation(InterestLocationVO lvo);
}
