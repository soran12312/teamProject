package com.pi.domain;

import lombok.Data;

@Data
public class GuildVO {

	private Integer guild_number;
	private String guild_name;
	private String email;
	private String detail;
	private Integer location_number;
	private Integer max_member;
	private Integer current_member;
	private Integer guild_state;
}
