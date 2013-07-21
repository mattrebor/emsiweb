package org.emsionline.emsiweb.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.AbstractHandlerExceptionResolver;


@Component
public class MyCustomExceptionHandler extends AbstractHandlerExceptionResolver {
	
	final Logger logger = LoggerFactory.getLogger(MyCustomExceptionHandler.class);
	
	@Override
	protected ModelAndView doResolveException(
			HttpServletRequest request
			, HttpServletResponse response
			, Object handler
			, Exception exception
			) {
		logger.debug("in MyCustomExceptionHandler.  Handling exception: "+exception);
		return null;
	}
	
	//http://stackoverflow.com/questions/11245932/how-to-handle-exceptions-thrown-while-rendering-a-view-in-spring-mvc
	
}
