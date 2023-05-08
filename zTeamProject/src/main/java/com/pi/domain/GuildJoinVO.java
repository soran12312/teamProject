package com.pi.domain;

import lombok.Data;

@Data
public class GuildJoinVO {

	private Integer guild_join_number;
	private Integer guild_number;
	private String email;
	private Integer guild_join_state;
}
