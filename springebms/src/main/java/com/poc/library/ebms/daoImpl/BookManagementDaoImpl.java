package com.poc.library.ebms.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.poc.library.ebms.dao.BookManagementDao;
import com.poc.library.ebms.model.Book;

@Repository
@Transactional
public class BookManagementDaoImpl implements BookManagementDao{
	
	@Autowired
	private SessionFactory sessionFactory; 	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean insert(Book book) {
		sessionFactory.getCurrentSession().save(book);
		return true;
	}

	@Override
	public boolean update() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteBookDetails() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Book fetch(int book_id) {
		
		return null;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Book> getBooks(String category) {
		
		Session session = sessionFactory.getCurrentSession();		
		List<Book> list = session.createQuery("from Book b where b.book_category = :category").setParameter("category", category).list();
		return list;
	}

}
