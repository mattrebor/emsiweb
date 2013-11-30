package org.emsionline.emsiweb.web.controller;

import java.io.IOException;
import java.io.PushbackReader;
import java.io.Reader;
import java.io.StringReader;

import org.apache.commons.io.IOUtils;
import org.emsionline.emsiweb.web.controller.domain.MiscForm;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class TranslateController {
	
	final Logger logger = LoggerFactory.getLogger(TranslateController.class);
	
	@ModelAttribute("form")
	public MiscForm getForm() {
		return new MiscForm();
	}
	
	@RequestMapping(value={"/misc", "/misc/"})
	public String index() {
		return "misc/miscindex";
	}
	
	
	@RequestMapping(value="/misc/convertunicode", method=RequestMethod.GET)
	public String foo(@ModelAttribute("form") MiscForm form) {
		form.getValues().put("convertCRLF", "on");
		form.getValues().put("convertTab", "on");
		form.getValues().put("convertQuot", "on");
		return "misc/unicodetranslate/unicodetranslate";
	}
	
	
	@RequestMapping(value="/misc/convertunicode", method=RequestMethod.POST)
	public String bar(@ModelAttribute("form") MiscForm form) throws IOException {
		String input = form.getValues().get("input");
		
		logger.debug("input is: "+input);
		logger.debug("convertCRLF is "+form.getValues().get("convertCRLF"));
		StringReader sr = new StringReader(input);
		UnicodeUnescapeReader uur = new UnicodeUnescapeReader(sr);
		String output = IOUtils.toString(uur);
		
		boolean convertCRLF = "on".equals(form.getValues().get("convertCRLF"));
		boolean convertTab = "on".equals(form.getValues().get("convertTab"));
		boolean convertQuot = "on".equals(form.getValues().get("convertQuot"));
		
		if (convertCRLF) {
			output = output.replace("\\r\\n", "\r\n");
		}
		if (convertTab) {
			output = output.replace("\\t", "\t");
		}
		if (convertQuot) {
			output = output.replace("\\\"", "\"");
		}
		
		form.getValues().put("output", output);
		
		return "misc/unicodetranslate/unicodetranslate";
	}
	
	
	/**
	 * Reader transforming unicode escape sequences (i.e \u0065) in the provided
	 * stream into the corresponding unicode character.
	 * 
	 * @author Emmanuel Bourg
	 * @version $Revision: 1300540 $, $Date: 2012-03-14 13:38:43 +0000 (Wed, 14 Mar 2012) $
	 */
	private static class UnicodeUnescapeReader extends Reader {
	    private final PushbackReader reader;

	    /** The buffer used to read unicode escape sequences. */
	    private final char[] sequence = new char[5];

	    UnicodeUnescapeReader(Reader reader) {
	        this.reader = new PushbackReader(reader, sequence.length);
	    }

	    @Override
	    public int read(char[] cbuf, int offset, int length) throws IOException {
	        int count = 0;
	        for (int i = 0; i < length; i++) {
	            int c = reader.read();
	            
	            if (c == -1) {
	                return count == 0 ? -1 : count;
	            }
	            
	            if (c == '\\') {
	                int len = reader.read(sequence);
	                if (len == sequence.length && isUnicodeSequence(sequence)) {
	                    // unicode escape found
	                    c = Integer.parseInt(new String(sequence, 1, 4), 16);
	                    
	                } else if (len > 0) {
	                    // put the characters back in the stream
	                    reader.unread(sequence, 0, len);
	                }
	            }

	            cbuf[offset + i] = (char) c;
	            count++;
	        }
	        
	        return count;
	    }

	    private boolean isUnicodeSequence(char[] sequence) {
	        return 'u' == sequence[0]
	                && isHexadecimal(sequence[1])
	                && isHexadecimal(sequence[2])
	                && isHexadecimal(sequence[3])
	                && isHexadecimal(sequence[4]);
	    }

	    private boolean isHexadecimal(char c) {
	        return ('0' <= c && c <= '9') || ('a' <= c && c <= 'f') || ('A' <= c && c <= 'F');
	    }

	    @Override
	    public void close() throws IOException {
	        if (reader != null) {
	            reader.close();
	        }
	    }
	}
}
