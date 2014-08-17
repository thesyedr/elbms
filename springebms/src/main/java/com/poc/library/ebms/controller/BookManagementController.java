package com.poc.library.ebms.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.poc.library.ebms.model.Book;
import com.poc.library.ebms.model.User;
import com.poc.library.ebms.service.BookManagementService;

@Controller
@RequestMapping(value="/bms")
public class BookManagementController {
	
	@Autowired
	BookManagementService bookService;
	public BookManagementService getBookService() {
		return bookService;
	}

	public void setBookService(BookManagementService bookService) {
		this.bookService = bookService;
	}

	@RequestMapping(value="/insert",method = RequestMethod.GET)
	public String getBookForm(@ModelAttribute("bookForm") Book bookForm, 
			Map<String, Object> model) {	
		
		System.out.println("adding some comments");		
		
		return "insertBookDetails";
	}
	
	@RequestMapping(value="/pushBook",method = RequestMethod.POST)
	public String porcessBook(@ModelAttribute("bookForm") Book bookForm, 
			Map<String, Object> model) {
		
		
		boolean b = bookService.insertBookDetails(bookForm);
		if(b)
			System.out.println("Book Inserted into Database..");
		else
			System.out.println("Book Not Inserted into Database..");
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
