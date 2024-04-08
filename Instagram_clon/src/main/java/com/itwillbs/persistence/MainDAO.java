package com.itwillbs.persistence;

import java.util.List;

import com.itwillbs.domain.PostVO;

public interface MainDAO {
	
	public List<PostVO> getLocation(String location)throws Exception;

}// endDAO
