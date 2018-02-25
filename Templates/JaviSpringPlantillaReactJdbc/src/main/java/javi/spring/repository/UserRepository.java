package javi.spring.repository;

import java.util.List;
// import org.apache.logging.log4j.LogManager;
// import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import javi.spring.model.User;

@Component
public class UserRepository implements IRepository<User> {
	// private static Logger log = LogManager.getLogger(UserRepository.class);

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Autowired
	NamedParameterJdbcTemplate namedJdbcTemplate;

	@Override
	public void insert(User user) {
		// log.debug("el log funciona");
		String sql = "INSERT INTO USER (dni,nombre,apellido)" + "VALUES ( :dni, :nombre, :apellido)";
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("dni", user.getDni());
		params.addValue("nombre", user.getNombre());
		params.addValue("apellido", user.getApellido());
		namedJdbcTemplate.update(sql, params);

	}

	@Override
	public void update(User user) {
		String sql = "UPDATE user SET " + "nombre = ?, apellido = ? WHERE dni = ?";
		jdbcTemplate.update(sql, user.getNombre(), user.getApellido(), user.getDni());
	}
	
	public void update(String dni, String name, String apellido) {
		String sql = "UPDATE user SET " + "nombre = ?, apellido = ? WHERE dni = ?";
		jdbcTemplate.update(sql, name, apellido, dni);
	}

	@Override
	public void delete(User user) {
		delete(user.getDni());

	}
	
	@Override
	public void delete(String id) {
		String sql = "DELETE FROM USER WHERE dni=?";
		// log.debug(sql);
		System.out.println("****");
		for (int i = 0; i <= 100; i++) {
			System.out.println();
		}
		System.out.println(sql);
		jdbcTemplate.update(sql, id);
	}

	@Override
	public User search(User user) {
		String sql = "SELECT * FROM USER WHERE dni = ?";
		// log.debug("ejecutando la consulta: " + sql);
		User person = null;
		try {
			person = (User) jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper(User.class), user.getDni());
		} catch (EmptyResultDataAccessException e) {
			// log.error("error", e);
		}
		return person;
	}

	@Override
	public List<User> listAll() {
		String sql = "SELECT * FROM USER";
		List<User> users = jdbcTemplate.query(sql, new BeanPropertyRowMapper(User.class));
		return users;
	}

	@Override
	public User search(String id) {
		String sql = "SELECT * FROM USER WHERE dni = ?";
		// log.debug("ejecutando la consulta: " + sql);
		User person = null;
		try {
			person = (User) jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper(User.class), id);
		} catch (EmptyResultDataAccessException e) {
			// log.error("error", e);
		}
		return person;
	}
	
}
