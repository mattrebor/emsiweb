package org.emsionline.emsiweb.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class ErrorHandlerFilter implements Filter {

	@Override
	public void init(FilterConfig arg0) throws ServletException {}
	
	@Override
	public void destroy() {}
	
	@Override
	public void doFilter(
			ServletRequest request
			, ServletResponse response
			, FilterChain filterChain
			) throws IOException, ServletException {
		try {
			filterChain.doFilter(request, response);
		} catch (Exception e) {
			request.setAttribute("_exception", e);
			request.getRequestDispatcher("/error").forward(request, response);
		}
	}
	
	
}
