package com.poc.library.ebms.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.poc.library.ebms.model.User;

@Controller
@RequestMapping(value = "/register")
public class RegisterController {

	@RequestMapping(value="/get",method = RequestMethod.GET)
	public String viewRegistration(Map<String, Object> model) {
		User userForm = new User();		
		model.put("userForm", userForm);
		
		List<String> professionList = new ArrayList<>();
		professionList.add("Select");
		professionList.add("Male");
		professionList.add("Female");
		model.put("genderList", professionList);
		
		return "Registration";
	}
	
	@RequestMapping(value="/post",method = RequestMethod.POST)
	public String processRegistration(@ModelAttribute("userForm") User user, 
			Map<String, Object> model) {
		
		// implement your own registration logic here...
		
		// for testing purpose:
		System.out.println("username: " + user.getUsername());
		System.out.println("password: " + user.getPassword());
		System.out.println("email: " + user.getEmail());
		
		
		return "RegistrationSuccess";
	}
	
	
	
}
