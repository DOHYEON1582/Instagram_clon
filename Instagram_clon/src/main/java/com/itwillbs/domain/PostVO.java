package com.itwillbs.domain;

import lombok.Data;

@Data
public class PostVO {
	
	private int postid;
	private String userid;
	private String content;
	private String location;
	private String post_image;
	private int post_like;

}
