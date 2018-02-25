package javi.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javi.spring.assembler.UserAssembler;
import javi.spring.model.User;
import javi.spring.repository.UserRepository;

@Component
public class AuthorService implements IService<User> {

	@Autowired
	private UserAssembler assembler;
	@Autowired
	private UserRepository repository;

	public void createNewUserFromRequest(HttpServletRequest req) {
		User user = assembler.assembleFromRequest(req);

		insertOrupdateUser(user);
	}

	@Override
	public void delete(Integer id) {
		String defaultTableName = "user";
		this.delete(defaultTableName, id);
	}

	@Override
	public void delete(String tablename, Integer id) {
		repository.delete(String.valueOf(id));
	}

	@Override
	public void delete(User entity) {
		repository.delete(entity);
	}

	public UserAssembler getAssembler() {
		return assembler;
	}

	public UserRepository getRepository() {
		return repository;
	}

	public void insertOrupdateUser(User user) {
		if (!(repository.search(user) != null)) {
			repository.insert(user);
		} else {
			repository.update(user);
		}
	}

	@Override
	public List<User> listAll() {
		return repository.listAll();
	}

	public void setAssembler(UserAssembler assembler) {
		this.assembler = assembler;
	}

	public void setRepository(UserRepository repository) {
		this.repository = repository;
	}

	@Override
	public User find(String id) {
		return repository.search(id);
	}

}
