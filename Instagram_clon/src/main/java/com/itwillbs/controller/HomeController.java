package com.itwillbs.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// http://localhost:8088/
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login() throws Exception{
		logger.debug(" login() 호출");

		
		return "login";
	}
	
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void join() throws Exception{
		logger.debug(" join() 호출");

		
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void main() throws Exception{
		logger.debug(" main() 호출");

		
	}
	
}// controller
