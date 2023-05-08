package com.pi.service;

import java.util.HashMap;
import java.util.List;

import com.pi.domain.ImageVO;
import com.pi.domain.LocationVO;
import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;

public interface MainService {

	String getAccessToken(String authorize_code) throws Throwable;
	
	public MemberVO getUserInfo(String access_Token) throws Throwable;
	
	public MemberVO loginCheck(MemberVO vo);
	
	public List<LocationVO> selectAddr1();
	public List<LocationVO> selectAddr2(LocationVO vo);
	public List<LocationVO> selectAddr3(LocationVO vo);
	public int selectLocNumByAddr(LocationVO vo);
	public void insertQuestion(QuestionVO qvo, ImageVO ivo);
}
