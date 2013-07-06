package org.emsionline.emsiweb.service;

import org.emsionline.emsiweb.domain.Church;
import org.emsionline.emsiweb.domain.ChurchOrg;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/test-root-context.xml" })
public class ChurchServiceTest {

	@Autowired
	private ChurchService churchService;

	@Test
	public void testRetrieve() {
		Church church = churchService.findById(new Long(1));

		assertEquals("towaco", church.getChurchPath());

		church = churchService.findById(new Long(4));

		assertEquals("rotterdam", church.getChurchPath());
	}
	

	@Test
	public void testRetrieveOrg() {
		Church church = churchService.findById(new Long(1));

		assertEquals("towaco", church.getChurchPath());

		ChurchOrg org = church.getChurchOrg();
		
		assertNotNull(org);
		assertEquals("america-east", org.getChurchOrgPath());
	}

}
