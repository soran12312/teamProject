package com.pi.domain;

import lombok.Data;

@Data
public class ImageVO {

	private Integer image_number;
	private Integer class_number;
	private Integer question_number;
	private String email;
	private Integer guild_number;
	private Integer review_number;
	private String original_name;
	private String save_name;
	private String path;
	private Long size;
	private Integer main_image;
}
