package javi.spring.repository;

import java.util.List;

public interface IRepository<T> {
 
	public void insert(T entity);
	
	public void update(T entity);
	
	public void delete(T entity);
	
	public void delete(String id);
	
	public T search(T entity);
	
	public T search(String id);
	
	public List<T> listAll();
	
}
