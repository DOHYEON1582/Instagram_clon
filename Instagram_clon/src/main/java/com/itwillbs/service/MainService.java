package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.PostVO;

public interface MainService {

	public List<PostVO> getLocation(String location)throws Exception;
	
}//endService