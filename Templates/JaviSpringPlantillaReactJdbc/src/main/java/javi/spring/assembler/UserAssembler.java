package javi.spring.assembler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

import javi.spring.model.User;

@Component
public class UserAssembler implements IAssembler<User>{

	@Override
	public User assembleFromRequest(HttpServletRequest request) {
		User user = new User();
		user.setDni(request.getParameter("dni"));
		user.setNombre(request.getParameter("nombre"));
		user.setApellido(request.getParameter("apellido"));
		return user;
	}

}
