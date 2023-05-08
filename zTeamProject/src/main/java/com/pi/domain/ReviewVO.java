package com.pi.domain;

import lombok.Data;

@Data
public class ReviewVO {

	private Integer review_number;
	private String email;
	private Integer class_number;
	private String title;
	private String review_content;
	private String writing_date;
	private Integer view_number;
	private Integer review_state;
}
