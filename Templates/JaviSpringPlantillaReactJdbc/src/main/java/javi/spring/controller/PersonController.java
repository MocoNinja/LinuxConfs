package javi.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javi.spring.model.User;
import javi.spring.service.IService;

@RestController
@CrossOrigin(origins = "http://localhost:8080")
@RequestMapping(value = "/api/v1/user")
public class PersonController {

	@Autowired
	private IService service;

	@RequestMapping(value = "/delete/{tablename}/", method = RequestMethod.GET)
	public ResponseEntity delete(@PathVariable String tablename, @RequestParam(required = false) String id) {
		System.out.println("***********************************");
		for (int i = 0; i <= 100; i++) {
			System.out.println();
		}
		System.out.println(id);
		System.out.println(tablename);
		User user = (User) service.find(id);
		service.delete(user);
		return new ResponseEntity(HttpStatus.OK);
	}

	@PostMapping
	@RequestMapping(value = "/create")
	public ResponseEntity<User> create(@RequestBody User person) {
		service.insertOrupdateUser(person);
		return new ResponseEntity<>(person, HttpStatus.CREATED);
	}

	@PostMapping
	@RequestMapping(value = "/list")
	public ResponseEntity<List<User>> ListAll() {
		return new ResponseEntity<>(service.listAll(), HttpStatus.CREATED);
	}

}
