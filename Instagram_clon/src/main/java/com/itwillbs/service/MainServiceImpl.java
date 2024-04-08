package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.itwillbs.domain.PostVO;
import com.itwillbs.persistence.MainDAO;

@Service
public class MainServiceImpl implements MainService {

	
	private static final Logger logger = LoggerFactory.getLogger(MainServiceImpl.class);
	
	@Inject
	private MainDAO mdao;

	@Override
	public List<PostVO> getLocation(String location) throws Exception {
		logger.info(" getLocation(String location) 호출 ");
		
		return mdao.getLocation(location);
	}
	
	
	
}//endImpl
