package com.wzp1.webapp.action;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.wzp1.webapp.model.User;

@Controller
@RequestMapping("/welcome")
public class HelloWorldController {
	
	private static Logger logger = LoggerFactory.getLogger(HelloWorldController.class);
	
	@RequestMapping(value="/hello",method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Spring 3 MVC Hello World");
		return "hello";
	}
	
	@RequestMapping(value="/showLogin",method=RequestMethod.GET)
	public String showLogin(){
		return "login";
	}
	
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user){
		logger.info(user.toString());
		return "index";
	}
	
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	public String upload(@RequestParam(value="file",required=false) MultipartFile file){
		logger.info(file.getOriginalFilename());
		return "index";
	}
	
}
