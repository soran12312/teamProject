package com.pi.domain;

import lombok.Data;

@Data
public class ClassVO {

	private Integer class_number;
	private String class_name;
	private String email;
	private Integer category_number;
	private String detail;
	private Integer price;
	private Integer max_member;
	private Integer current_member;
	private Integer location_number;
	private String start_date;
	private String end_date;
	private String writing_date;
	private Integer view_number;
	private Integer class_state;
}
