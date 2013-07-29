package org.emsionline.emsiweb.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;
import java.util.Map;

import org.emsionline.emsiweb.domain.ChurchOrgDetail;
import org.emsionline.emsiweb.domain.LocalizedChurch;
import org.emsionline.emsiweb.domain.LocalizedChurchOrg;
import org.emsionline.emsiweb.domain.LocalizedChurchOrgKey;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test-root-context.xml" })
public class ChurchOrgServiceTest {

	final static Logger logger = LoggerFactory.getLogger(ChurchOrgServiceTest.class);

	@Autowired
	private LocalizedChurchOrgService churchOrgService;

	@Test
	public void testRetrieve() {
		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(1), "en"));

		assertEquals("cemi", church_org.getChurchOrgPath());

		Map<String, ChurchOrgDetail> details = church_org.getChurchOrgDetails();
		
		logger.info(details.get("menu_name").getValue());
		
		
	}

	@Test
	public void testRetrieveOrgs() {
		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(1), "en"));

		assertEquals("cemi", church_org.getChurchOrgPath());

		List<LocalizedChurchOrg> orgs = church_org.getChurchOrgs();

		assertNotNull(orgs);
		assertEquals(4, orgs.size());

		for (LocalizedChurchOrg org : orgs) {
			logger.info(org.getChurchOrgPath());
		}
		//Set<Church> churches = church_org.getChurches();

		//assertEquals(0, churches.size());

	}

	@Ignore
	@Test
	public void testRetrieveChurches() {
		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(3), "en"));

		assertEquals("america-east", church_org.getChurchOrgPath());
/*
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
		}*/

	}

	
	@Test
	public void testRetrieveWholeTreeEn() {
		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(1), "en"));

		assertEquals("cemi", church_org.getChurchOrgPath());
		recurse(church_org);

		/*
		List<ChurchOrg> orgs = church_org.getChurchOrgs();
		assertEquals(2, orgs.size());
		
		recurse(1, orgs);
		*/

	}

	
	@Test
	public void testRetrieveWholeTreeEn2() {
		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(1), "en"));

		assertEquals("cemi", church_org.getChurchOrgPath());
		recurse(church_org);

		/*
		List<ChurchOrg> orgs = church_org.getChurchOrgs();
		assertEquals(2, orgs.size());
		
		recurse(1, orgs);
		*/

	}
	
	@Test
	public void testRetrieveWholeTreeZh() {
		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(1), "zh"));

		assertEquals("cemi", church_org.getChurchOrgPath());
		recurse(church_org);
	}
	
	@Test
	public void testRetrieveWholeTreeZh2() {
		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(1), "zh"));

		assertEquals("cemi", church_org.getChurchOrgPath());
		recurse(church_org);
	}
	
	@Ignore
	@Test
	public void testRetrieveWholeTree2() {
		logger.info("testRetrieveWholeTree2");
		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(1), "en"));

		assertEquals("cemi", church_org.getChurchOrgPath());
		recurse(church_org);
		/*
		List<ChurchOrg> orgs = church_org.getChurchOrgs();
		assertEquals(2, orgs.size());
		
		recurse(1, orgs);
		*/

	}	

	static void recurse(LocalizedChurchOrg currentOrg) {
		recurse(currentOrg, 0);
	}
	
	static void recurse(LocalizedChurchOrg currentOrg, int level) {
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < level; i++) {
			buf.append("  ");
		}
		
		String padding = buf.toString();

		System.out.println(padding + currentOrg + " |" + currentOrg.getChurchOrgDetails().get("menu_name").getValue()  + "|");
	
		List<LocalizedChurchOrg> childrenOrgs = currentOrg.getChurchOrgs();
		
		if (childrenOrgs.size() > 0) {
			
			for (LocalizedChurchOrg childOrg : childrenOrgs) {
				recurse(childOrg, level + 1);
			}
		}

		List<LocalizedChurch> childrenChurches = currentOrg.getChurches();
		
		if (childrenChurches.size() > 0) {
			for (LocalizedChurch church : childrenChurches) {
				System.out.println(padding + "  " + church + " |" + church.getChurchDetails().get("menu_name").getValue() + "|");
			}
		}
	}
	
	@Test
	public void testRetrieveParent() throws Exception {
		LocalizedChurchOrg church_org = churchOrgService.findById(new LocalizedChurchOrgKey(new Long(4), "en"));
		
		assertNotNull(church_org);
		
		assertEquals("america-west", church_org.getChurchOrgPath());
				
		LocalizedChurchOrg parent = church_org.getParentOrg();
		assertNotNull(parent);
		
		assertEquals("america", parent.getChurchOrgPath());
		
		LocalizedChurchOrg grandParent = parent.getParentOrg();
		assertNotNull(grandParent);
		
		System.out.println("===" + grandParent.getChurchOrgPath());
		assertEquals("cemi", grandParent.getChurchOrgPath());	
		
		assertNull(grandParent.getParentOrg());
		
	

	}	
}
