package org.emsionline.emsiweb.mail;

import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.emsionline.emsiweb.domain.orderform.Cart;
import org.emsionline.emsiweb.domain.orderform.CustomerInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.ui.freemarker.FreeMarkerConfigurationFactoryBean;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import freemarker.template.Configuration;


// TODO: Make this a real service.

public class EmailService {
	JavaMailSender mailSender;
	
	FreeMarkerConfigurationFactoryBean configFactory;	

	public EmailService(JavaMailSender mailSender, FreeMarkerConfigurationFactoryBean configFactory) {
		this.mailSender = mailSender;
		this.configFactory = configFactory;
	}
	
	public void sendConfirmationEmail(final String fromAddress, final String bccAddress, final String subject, final CustomerInfo custInfo, final Cart cart) {
		
		//System.out.println("fromAddress: " + fromAddress);
		//System.out.println("subject: " + subject);
		
		MimeMessagePreparator preparator = new MimeMessagePreparator() {
	         public void prepare(MimeMessage mimeMessage) throws Exception {
	            MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");
	            
	            message.setTo(custInfo.getEmail());
	            message.setFrom(fromAddress);
	            if (bccAddress != null && bccAddress.length() > 1) {
	            	message.setBcc(bccAddress);
	            }
	            message.setSubject(subject);
	            
	            StringBuffer content = new StringBuffer();
	    		Configuration configuration = configFactory.createConfiguration();
	    		configuration.setDefaultEncoding("UTF-8");
	    		
	    		Map<String, Object> order = new HashMap<String, Object>();
	    		order.put("custInfo", custInfo);
	    		order.put("cart", cart);
	    		
	    			
	    		String htmlText = content.append(FreeMarkerTemplateUtils.processTemplateIntoString(configuration.getTemplate("order-email-html.ftl"), order)).toString();
	    		content.setLength(0);
	    		String plainText = content.append(FreeMarkerTemplateUtils.processTemplateIntoString(configuration.getTemplate("order-email-text.ftl"), order)).toString();
	    		//System.out.println(plainText);

	            message.setText(plainText, htmlText);
	         }
	      };
	      this.mailSender.send(preparator);		
	}
}
