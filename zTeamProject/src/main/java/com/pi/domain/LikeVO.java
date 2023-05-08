package com.pi.domain;

import lombok.Data;

@Data
public class LikeVO {

	private Integer like_number;
	private String email;
	private Integer class_number;
	private Integer review_number;
	private Integer guild_number;
	private String like_date;
	private Integer like_state;
}
