package org.emsionline.emsiweb.domain.minister;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.sql.DataSource;

import org.dbunit.database.DatabaseDataSourceConnection;
import org.dbunit.database.IDatabaseConnection;
import org.dbunit.dataset.IDataSet;
import org.dbunit.dataset.xml.FlatXmlDataSetBuilder;
import org.dbunit.operation.DatabaseOperation;
import org.emsionline.emsiweb.service.minister.MinisterService;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/test-root-context.xml"})
public class MinisterTest {
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private MinisterService ministerService;
	
	
	@Before
	public void setUp() throws Exception {
		IDataSet dataset = new FlatXmlDataSetBuilder().build(new File(
				"./src/test/resources/minister-dataset.xml"
		));
		IDatabaseConnection dbConn = new DatabaseDataSourceConnection(dataSource);
		DatabaseOperation.CLEAN_INSERT.execute(dbConn, dataset);
	}
	
	@Test
	public void test1() {
		System.out.println("test1");
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		int n = jdbcTemplate.queryForInt("select count(1) from minister");
		Assert.assertEquals("Should be two rows in table", 2, n);
	}
	
	@Test
	public void test2() {
		System.out.println("test2");
		List<Minister> list = ministerService.findAllMinisters();
		Assert.assertNotNull("list should not be null", list);
		Assert.assertTrue("size should be greater than 0", list.size() > 0);
		
		for (Minister minister : list) {
			Set<MinisterDetail> ministerDetails = minister.getMinisterDetails();
			if (ministerDetails != null && ministerDetails.size() > 0) {
				System.out.println("minister details. size: "+ministerDetails.size());
			}
		}
	}
	
	@Test
	public void test3() {
		System.out.println("test3");
		Minister mosesyang = ministerService.findOne(1);
		Assert.assertNotNull(mosesyang);
		Set<MinisterDetail> details = mosesyang.getMinisterDetails();
		Iterator<MinisterDetail> iter = details.iterator();
		MinisterDetail detail = iter.next();
		System.out.println(detail.getId().getMinisterDetailKey() + ": " + detail.getValue());
		detail.setValue("MODIFIED");
		ministerService.save(mosesyang);
	}
	
	@Test
	public void test4() {
		System.out.println("test4");
		Minister mosesyang = ministerService.findOne(1);
		Set<MinisterDetail> details = mosesyang.getMinisterDetails();
		for (MinisterDetail detail : details) {
			System.out.println(detail.getId().getMinisterDetailKey() + ": " + detail.getValue());
		}
	}
	
	@After
	public void tearDown() {
		
	}
}
