package com.pi.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pi.dao.MemberDAO;
import com.pi.domain.ClassVO;
import com.pi.domain.GuildVO;
import com.pi.domain.ImageVO;
import com.pi.domain.InterestLocationVO;
import com.pi.domain.MemberVO;
import com.pi.domain.QuestionVO;
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

	@Override
	public List<ClassVO> select_my_class(String email) {
		
		return memberDAO.select_my_class(email);
	}

	@Override
	public List<HashMap> select_my_like(String email) {
		
		return memberDAO.select_my_like(email);
	}

	@Override
	public List<HashMap> select_prev_class(String email) {
		
		return memberDAO.select_prev_class(email);
	}

	@Override
	public void delete_my_class(int class_number) {
		
		memberDAO.delete_my_class(class_number);
	}

	@Override
	public void cancel_like(int like_number) {
		
		memberDAO.cancel_like(like_number);
	}

	@Override
	public void cancel_join(int class_join_number) {
		
		memberDAO.cancel_join(class_join_number);
	}

	@Override
	public List<GuildVO> select_my_guild(String email) {
		
		return memberDAO.select_my_guild(email);
	}

	@Override
	public List<HashMap> select_like_guild(String email) {
		
		return memberDAO.select_like_guild(email);
	}

	@Override
	public List<HashMap> select_join_guild(String email) {
		
		return memberDAO.select_join_guild(email);
	}

	@Override
	public void dec_class_member(int class_number) {
		
		memberDAO.dec_class_member(class_number);
	}

	@Override
	public void delete_my_guild(int guild_number) {
		
		memberDAO.delete_my_guild(guild_number);
	}

	@Override
	public void cancel_guild_join(int guild_join_number) {
		
		memberDAO.cancel_guild_join(guild_join_number);
	}

	@Override
	public void dec_guild_member(int guild_number) {
		
		memberDAO.dec_guild_member(guild_number);
	}

	@Override
	public List<HashMap> select_my_review(String email) {
		
		return memberDAO.select_my_review(email);
	}

	@Override
	public List<HashMap> select_like_review(String email) {
		
		return memberDAO.select_like_review(email);
	}

	@Override
	public void delete_review(int review_number) {
		
		memberDAO.delete_review(review_number);
	}

	@Override
	public List<QuestionVO> select_my_question(String email) {
		
		return memberDAO.select_my_question(email);
	}

}
