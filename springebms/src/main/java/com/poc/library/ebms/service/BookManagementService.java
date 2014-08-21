package com.poc.library.ebms.service;

import java.util.List;

import com.poc.library.ebms.model.Book;

public interface BookManagementService {
	
	public boolean insertBookDetails(Book book);
	public boolean updateBookDetails();
	public boolean deleteBookDetails();
	public Book fetchBookDetails(int book_id);
	public List<Book> getBooks(String category);

}
