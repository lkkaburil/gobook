package spring.model.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class ServiceDAOTest {

	private static ServiceDAO dao; 
	private static ServiceDTO dto;
	private static BeanFactory beanfactory;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		Resource resource = new ClassPathResource("daoTest.xml");
	    beanfactory  = new XmlBeanFactory(resource);
		
		
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		  dao = (ServiceDAO) beanfactory.getBean("sdao");
	}

	@After
	public void tearDown() throws Exception {
	}


	@Test
	@Ignore
	public void testRead() {

	     dao.read(1);
	
	}

	@Test
	@Ignore
	public void testList() {
		List<ServiceDTO> list = dao.list();
		for (int i = 0; i < list.size(); i++) {
			ServiceDTO dto = list.get(i);
		}
	
	}

	@Test
	@Ignore
	public void testUpdate() {
		int sv_num = 2;
		ServiceDTO dto = dao.read(sv_num);
		dto.setSv_title("자바좃같아");
		dto.setSv_price(30000);
		dto.setSv_content("탈출못해 ㅅㅂ");
		dao.update(dto);
	
	}

	@Test
	@Ignore
	public void testCreate() {
        
		 dto.setSv_num(2);
		    dto.setSv_num_upper(2);
		    dto.setSv_timeperson(1);
		    dto.setSv_title("방탕출");
		    dto.setSv_content("ㅋㅋㅋㅋㅋㅋㅋ");
		    dto.setS_id("stest");
		    dto.setSv_price(2000);
		    dto.setSv_template("A2-01");
		 
		    assertNotNull(dao.create(dto));

	}

	@Test
	@Ignore
	public void testDelete() {
		int sv_num = 2;
		dao.delete(sv_num);
	
	}

}
