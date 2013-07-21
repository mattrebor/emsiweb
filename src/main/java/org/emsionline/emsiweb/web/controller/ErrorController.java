package org.emsionline.emsiweb.web.controller;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ErrorController {

	public static final String FILE_NOT_FOUND = "fileNotFound";
	public static final String STACKTRACE = "stackTrace";

	final Logger logger = LoggerFactory.getLogger(ErrorController.class);
	
	private static final Pattern _pattern = Pattern.compile("path\\s'(.*)'");
	
	
	@RequestMapping({"/error"})
	public String error(HttpServletRequest request) {
		Exception e = (Exception) request.getAttribute("_exception");
		
		handleTileNotFound(request, e);
		setupStackTrace(request, e);
		
		return "error/generalerr";
	}
	
	
	private void handleTileNotFound(HttpServletRequest request, Exception e) {
		Throwable cause = e;
		Throwable rootCause = null;
		Throwable nextToLast = null;
		
		while ((cause = cause.getCause()) != null) {
			nextToLast = rootCause;
			rootCause = cause;
		}
		logger.debug("rootCause: "+rootCause);
		if (nextToLast != null) {
			logger.debug("nextToLast: "+nextToLast);
		}
		if (rootCause instanceof ServletException
			&& nextToLast instanceof org.apache.tiles.util.TilesIOException) {
			Matcher m = _pattern.matcher(nextToLast.getMessage());
			if (m.find()) {
				logger.debug("file not found: "+m.group(1));
				request.setAttribute(FILE_NOT_FOUND, "file not found: "+m.group(1));
			}
		}
	}
	
	
	private void setupStackTrace(HttpServletRequest request, Exception e) {
		StringWriter strWriter = new StringWriter();
		PrintWriter out = new PrintWriter(strWriter);
		e.printStackTrace(out);
		request.setAttribute(STACKTRACE, strWriter.toString());
	}
}
