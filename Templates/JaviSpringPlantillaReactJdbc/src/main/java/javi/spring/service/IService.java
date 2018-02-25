package javi.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javi.spring.model.User;

public interface IService<T> {

	void createNewUserFromRequest(HttpServletRequest req);

	void insertOrupdateUser(User user);
	
	void delete(Integer id);

	void delete(String tablename, Integer id);
	
	void delete(T entity);
	
	T find (String id);
	
	List<T> listAll();
}
