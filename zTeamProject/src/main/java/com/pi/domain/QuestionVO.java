package com.pi.domain;

import lombok.Data;

@Data
public class QuestionVO {

	private Integer question_number;
	private String email;
	private String question_category;
	private String writing_date;
	private String title;
	private String content;
	private Integer answer_state;
	private Integer member_check;
}
