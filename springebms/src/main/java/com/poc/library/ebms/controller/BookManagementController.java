package com.poc.library.ebms.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.poc.library.ebms.model.Book;
import com.poc.library.ebms.model.User;
import com.poc.library.ebms.service.BookManagementService;

@Controller
@RequestMapping(value="/bms")
public class BookManagementController {
	
	@Autowired
	private BookManagementService bookService;
	
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
		System.out.println("============pushing books==========");
		
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
	
	@RequestMapping(value="/getBooks",method = RequestMethod.GET)
	public String getBooks(@ModelAttribute("bookForm") Book bookForm, 
			Map<String, Object> model) {
		
		List<String> professionList = new ArrayList<>();
		professionList.add("java");
		professionList.add("cpp");
		professionList.add("spring");
		model.put("categoryList", professionList);
		
		return "getBooks";
	}
	
	@RequestMapping(value="/books",method = RequestMethod.GET)
	public ModelAndView getBooksByInputString(@ModelAttribute("bookForm") Book bookForm, 
			Map<String, Object> mode) {	
		
		List <Book> booksList =  bookService.getBooks(bookForm.getBook_category());
		ModelAndView model = new ModelAndView("books");
		model.addObject("booksList", booksList);
		return model;
	}
	

}
