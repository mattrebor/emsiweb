package org.emsionline.emsiweb.service;

import java.util.List;

import org.emsionline.emsiweb.domain.EbiAcademicQtr;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/test-root-context.xml"})
public class EbiAcademicQtrServiceTest {
	
	final static Logger logger = LoggerFactory.getLogger(EbiAcademicQtrServiceTest.class);
	
	@Autowired
	private EbiAcademicQtrService ebiAcademicQtrService;
	
	@Test
	public void test1() {
		List<EbiAcademicQtr> list = ebiAcademicQtrService.findAll();
		Assert.assertNotNull(list);
		Assert.assertTrue(!list.isEmpty());
	}
	
	@Test
	public void test2() {
		
	}
}
