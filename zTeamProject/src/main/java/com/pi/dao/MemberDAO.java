package com.pi.dao;

import java.util.HashMap;
import java.util.List;

import com.pi.domain.ClassVO;
import com.pi.domain.GuildVO;
import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;

public interface MemberDAO {

	public void insertMember(MemberVO mvo);
	public void insertInterestLocation(InterestLocationVO lvo);
	
	public void mod_interest_location(HashMap map);
	public int img_check(String email);
	public void img_insert(ImageVO vo);
	public void img_update(ImageVO vo);
	public void member_update(MemberVO vo);
	
	public List<ClassVO> select_my_class(String email);
	public List<HashMap> select_my_like(String email);
	public List<HashMap> select_prev_class(String email);
	
	public void delete_my_class(int class_number);
	public void cancel_like(int like_number);
	public void cancel_join(int class_join_number);
	public void dec_class_member(int class_number);
	
	public List<GuildVO> select_my_guild(String email);
	public List<HashMap> select_like_guild(String email);
	public List<HashMap> select_join_guild(String email);
	
	public void delete_my_guild(int guild_number);
	public void cancel_guild_join(int guild_join_number);
	public void dec_guild_member(int guild_number);
	
	public List<HashMap> select_my_review(String email);
	public List<HashMap> select_like_review(String email);
	
	public void delete_review(int review_number);
	
	public List<QuestionVO> select_my_question(String email);
}
