package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.domain.PostVO;
import com.itwillbs.service.MainService;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	
	private static final Logger logger = LoggerFactory.getLogger(RestController.class);
	
	@Inject
	private MainService mService;
	
	@PostMapping(value = "/main/locationList/{location}")
	public ResponseEntity<List<PostVO>> locationList(@PathVariable("location")String location)throws Exception{
		logger.debug(" locationList() 호출 ");
		logger.debug(" location : "+ location);
		
		List<PostVO> locationList = mService.getLocation(location);
		logger.debug(" locationList : "+locationList.size());
		
		return new ResponseEntity<List<PostVO>>(locationList, HttpStatus.OK);
	}
	
	
}//restController
