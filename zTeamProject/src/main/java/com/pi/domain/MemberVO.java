package com.pi.domain;

import lombok.Data;

@Data
public class MemberVO {

	private String email;
	private String nickname;
	private Integer member_grade;
	private Integer member_state;
	private String introduce;
	private String business_number;
	
}
