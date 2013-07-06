package org.emsionline.emsiweb.service;

import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchOrg;
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

	Logger logger = Logger.getLogger(ChurchOrgServiceTest.class);

	@Autowired
	private ChurchOrgService churchOrgService;

	@Test
	public void testRetrieve() {
		ChurchOrg church_org = churchOrgService.findById(new Long(1));

		assertEquals("cemi", church_org.getChurchOrgPath());

		church_org = churchOrgService.findById(new Long(4));

		assertEquals("europe", church_org.getChurchOrgPath());
	}

	@Test
	public void testRetrieveOrgs() {
		ChurchOrg church_org = churchOrgService.findById(new Long(1));

		assertEquals("cemi", church_org.getChurchOrgPath());

		Set<ChurchOrg> orgs = church_org.getChurchOrgs();

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
		ChurchOrg church_org = churchOrgService.findByIdWithChurches(new Long(3));

		assertEquals("america-east", church_org.getChurchOrgPath());

		Set<ChurchOrg> orgs = church_org.getChurchOrgs();

		assertNotNull(orgs);
		assertEquals(0, orgs.size());

		for (ChurchOrg org : orgs) {
			logger.info(org.getChurchOrgPath());
		}

		Set<Church> churches = church_org.getChurches();

		assertEquals(3, churches.size());
		for (Church church : churches) {
			logger.info(church.getChurchPath());
		}

	}

	@Test
	public void testRetrieveWholeTree() {
		ChurchOrg church_org = churchOrgService.findByIdWithChurches(new Long(1));

		assertEquals("cemi", church_org.getChurchOrgPath());
		Set<ChurchOrg> orgs = church_org.getChurchOrgs();
		assertEquals(2, orgs.size());
		
		recurse(1, orgs);
		

	}

	void recurse(int level, Set<ChurchOrg> orgs) {
		if (orgs != null & orgs.size() > 0) {
			for (ChurchOrg org : orgs) {

				logger.info("level " + level + ": "+ org.getChurchOrgPath());
				
				recurse(level + 1, org.getChurchOrgs());

				Set<Church> churches = org.getChurches();
				
				for (Church church : churches) {
					logger.info("  " + church.getChurchPath());
				}
			}
		}

	}
}
