package spring.model.service_image;

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

import spring.model.service.ServiceDAO;
import spring.model.service.ServiceDTO;

public class Service_imageDAOTest {
	private static Service_imageDAO dao; 
	private static Service_imageDTO dto;
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
		 dao = (Service_imageDAO) beanfactory.getBean("imdao");
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
	public void testCreate() {
		dto.setSimg_filename("시바ㅈ같네");
	     dto.setSimg_filesize(1);
	     dto.setSv_num(2);
	     dao.create(dto);
	}

	@Test
	@Ignore
	public void testList() {
		List<Service_imageDTO> list = dao.list();
		for (int i = 0; i < list.size(); i++) {
			Service_imageDTO dto = list.get(i);
		}
	}
	@Test
	@Ignore
	public void testUpdate() {
		Service_imageDTO dto = dao.read(3);
		
	     dto.setSimg_filename("ddf");
	     dto.setSimg_filesize(2);
	}

	@Test
	public void testDelete() {
		dao.delete(2);
	}

}
