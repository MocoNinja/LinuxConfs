package javi.spring.assembler;

import javax.servlet.http.HttpServletRequest;

public interface IAssembler<T> {
	public T assembleFromRequest(HttpServletRequest request);
}
