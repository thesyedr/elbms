package com.poc.library.ebms.dao;

import java.util.List;

import com.poc.library.ebms.model.Book;

public interface BookManagementDao {
	
	public boolean insert(Book book);
	public boolean update();
	public boolean deleteBookDetails();
	public Book fetch(int book_id);
	public List<Book> getBooks(String category);


}
