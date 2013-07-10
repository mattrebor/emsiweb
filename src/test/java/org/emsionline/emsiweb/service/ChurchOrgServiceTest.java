package org.emsionline.emsiweb.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchOrg;
import org.emsionline.emsiweb.domain.LocalizedChurchOrgDetails;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test-root-context.xml" })
public class ChurchOrgServiceTest {

	final static Logger logger = LoggerFactory.getLogger(ChurchOrgServiceTest.class);

	@Autowired
	private ChurchOrgService churchOrgService;

	@Test
	public void testRetrieve() {
		ChurchOrg church_org = churchOrgService.findById(new Long(1));

		assertEquals("cemi", church_org.getChurchOrgPath());

		Map<String, LocalizedChurchOrgDetails> details = church_org.getChurchOrgDetails();
		
		logger.info(details.get("en").getChurchOrgName());
		logger.info(details.get("zh").getChurchOrgName());
		
		
	}

	@Test
	public void testRetrieveOrgs() {
		ChurchOrg church_org = churchOrgService.findById(new Long(1));

		assertEquals("cemi", church_org.getChurchOrgPath());

		List<ChurchOrg> orgs = church_org.getChurchOrgs();

		assertNotNull(orgs);
		assertEquals(2, orgs.size());

		for (ChurchOrg org : orgs) {
			logger.info(org.getChurchOrgPath());
		}

		//Set<Church> churches = church_org.getChurches();

		//assertEquals(0, churches.size());

	}

	@Test
	public void testRetrieveChurches() {
		ChurchOrg church_org = churchOrgService.findById(new Long(3));

		assertEquals("america-east", church_org.getChurchOrgPath());

		List<ChurchOrg> orgs = church_org.getChurchOrgs();

		assertNotNull(orgs);
		assertEquals(0, orgs.size());

		for (ChurchOrg org : orgs) {
			logger.info(org.getChurchOrgPath());
		}

		List<Church> churches = church_org.getChurches();

		assertEquals(3, churches.size());
		for (Church church : churches) {
			logger.info(church.getChurchPath());
		}

	}

	@Test
	public void testRetrieveWholeTree() {
		ChurchOrg church_org = churchOrgService.findById(new Long(1));

		assertEquals("cemi", church_org.getChurchOrgPath());
		List<ChurchOrg> orgs = church_org.getChurchOrgs();
		assertEquals(2, orgs.size());
		
		recurse(1, orgs);
		

	}
	
	@Test
	public void testRetrieveWholeTree2() {
		logger.info("testRetrieveWholeTree2");
		ChurchOrg church_org = churchOrgService.findById(new Long(1));

		assertEquals("cemi", church_org.getChurchOrgPath());
		List<ChurchOrg> orgs = church_org.getChurchOrgs();
		assertEquals(2, orgs.size());
		
		recurse(1, orgs);
		

	}	

	void recurse(int level, List<ChurchOrg> orgs) {
		if (orgs != null & orgs.size() > 0) {
			for (ChurchOrg org : orgs) {

				logger.info("level " + level + ": "+ org.getChurchOrgPath());
				
				recurse(level + 1, org.getChurchOrgs());

				List<Church> churches = org.getChurches();
				
				for (Church church : churches) {
					logger.info("  " + church.getChurchPath());
				}
			}
		}

	}
}
