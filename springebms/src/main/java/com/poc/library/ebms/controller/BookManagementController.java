package com.poc.library.ebms.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.poc.library.ebms.model.Book;
import com.poc.library.ebms.model.User;

@Controller
@RequestMapping(value="/bms")
public class BookManagementController {
	
	@RequestMapping(value="/insert",method = RequestMethod.GET)
	public String getBookForm(@ModelAttribute("bookForm") Book bookForm, 
			Map<String, Object> model) {		
		
		return "insertBookDetails";
	}
	
	@RequestMapping(value="/pushBook",method = RequestMethod.POST)
	public String porcessBook(@ModelAttribute("bookForm") Book bookForm, 
			Map<String, Object> model) {		
		
		return "displayBook";
	}
	
	@RequestMapping(value="/updateBook",method = RequestMethod.POST)
	public String modifyBook(@ModelAttribute("bookForm") Book bookForm, 
			Map<String, Object> model) {		
		
		return "displayBook";
	}
	
	@RequestMapping(value="/popBook",method = RequestMethod.POST)
	public String deleteBook(@ModelAttribute("bookForm") Book bookForm, 
			Map<String, Object> model) {		
		
		return "displayBook";
	}
	

}
