package com.poc.library.ebms.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poc.library.ebms.dao.BookManagementDao;
import com.poc.library.ebms.model.Book;
import com.poc.library.ebms.service.BookManagementService;

@Service
public class BookManagementServiceImpl implements BookManagementService{
	
	@Autowired
	private BookManagementDao daoService;
	public BookManagementDao getDaoService() {
		return daoService;
	}

	public void setDaoService(BookManagementDao daoService) {
		this.daoService = daoService;
	}

	@Override
	public boolean insertBookDetails(Book book) {
		System.out.println(":: insert service  ::");
		return daoService.insert(book);
	}

	@Override
	public boolean updateBookDetails() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteBookDetails() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Book fetchBookDetails(int book_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Book> getBooks(String category, String publisher) {
		// TODO Auto-generated method stub
		return null;
	}

}
