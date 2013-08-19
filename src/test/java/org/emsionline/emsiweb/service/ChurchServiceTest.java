package org.emsionline.emsiweb.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchOrg;
import org.emsionline.emsiweb.domain.LocalizedChurch;
import org.emsionline.emsiweb.domain.LocalizedChurchKey;
import org.emsionline.emsiweb.domain.LocalizedChurchOrg;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test-root-context.xml" })
public class ChurchServiceTest {

	final static Logger logger = LoggerFactory.getLogger(ChurchServiceTest.class);

	
	@Autowired
	private ChurchService churchService;
	
	@Autowired
	private LocalizedChurchService lChurchService;

	@Ignore
	@Test
	public void testRetrieve() {
		Church church = churchService.findById(new Long(1));

		assertEquals("brooklyn", church.getChurchPath());
		
		logger.info("church path: " + church.getChurchPath());
		/*
		Map<String, LocalizedChurchDetails> details = church.getChurchDetails();
		logger.info("church details size: " + details.size());
		
		for (String locale : details.keySet()) {
			logger.info("  [" + locale + "] " + details.get(locale).getChurchId() + " - " + details.get(locale).getChurchName() );
		}
		

		//church = churchService.findById(new Long(4));

		//assertEquals("rotterdam", church.getChurchPath());
		*/
		 
	}
	
	@Ignore
	@Test
	public void testRetrieveOrg() {
		Church church = churchService.findById(new Long(1));

		assertEquals("towaco", church.getChurchPath());

		ChurchOrg org = church.getChurchOrg();
		
		assertNotNull(org);
		assertEquals("america-east", org.getChurchOrgPath());
	}
	
	@Ignore
	@Test
	public void testModify() {
		Church church = churchService.findById(new Long(1));

		assertEquals("towaco", church.getChurchPath());
		
		logger.info("church path: " + church.getChurchPath());
		/*
		Map<String, LocalizedChurchDetails> details = church.getChurchDetails();
		logger.info("church details size: " + details.size());
		
		for (String locale : details.keySet()) {
			logger.info("  [" + locale + "] " + details.get(locale).getChurchId() + " - " + details.get(locale).getChurchName() );
		}
				
		//churchService.save(church);
		
		Church church2 = churchService.findById(new Long(1));
		logger.info("church path: " + church2.getChurchPath());

		//church = churchService.findById(new Long(4));

		//assertEquals("rotterdam", church.getChurchPath());
		 
		 */
	}
	
	@Test
	public void testParent() {
		LocalizedChurch church = lChurchService.findById(new LocalizedChurchKey(new Long(8), "en"));
		
		System.out.println(church.getChurchPath());
		assertNotNull(church);	
		assertEquals("towaco", church.getChurchPath());
		
		LocalizedChurchOrg parentOrg = church.getParentOrg();
		assertNotNull(parentOrg);
		assertEquals("america-east", parentOrg.getChurchOrgPath());
		
		LocalizedChurchOrg grandParent = parentOrg.getParentOrg();
		assertNotNull(grandParent);
		
		assertEquals("america", grandParent.getChurchOrgPath());
		
		LocalizedChurchOrg greatGrandParent = grandParent.getParentOrg();
		assertEquals("cemi", greatGrandParent.getChurchOrgPath());
		
		assertNull(greatGrandParent.getParentOrg());				
	}

	@Test
	public void retrieveAll() {
		List<LocalizedChurch> churches = lChurchService.findAllByLocale("en");
		
		for (LocalizedChurch church : churches) {
			System.out.println(church.getId().getChurchId() + "," + church.getChurchPath());
		}
	}
}
