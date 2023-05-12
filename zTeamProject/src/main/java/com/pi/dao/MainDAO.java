package com.pi.dao;

import java.util.HashMap;
import java.util.List;

import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.LocationVO;
import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;

public interface MainDAO {
	
	public HashMap loginCheck(MemberVO vo);
	public List<LocationVO> selectAddr1();
	public List<LocationVO> selectAddr2(LocationVO vo);
	public List<LocationVO> selectAddr3(LocationVO vo);
	public int selectLocNumByAddr(LocationVO vo);
	public void insertQuestion(QuestionVO qvo);
	public void insertQImage(ImageVO ivo);
	public List<HashMap> selectAllLocationNumberByEmail(String email);
}
