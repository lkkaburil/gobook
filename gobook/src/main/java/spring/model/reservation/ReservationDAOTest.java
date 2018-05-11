package spring.model.reservation;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import spring.model.service.ServiceDAO;
import spring.model.service.ServiceDTO;

public class ReservationDAOTest {
	
	private static ReservationDAO dao; 
	private static ReservationDTO dto;
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
		  dao = (ReservationDAO) beanfactory.getBean("rdao");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testCreate() {
		ReservationDTO dto=new ReservationDTO();
		dto.setC_id("ctest");
		dto.setRes_code("A000000001");
		dto.setRes_time("201805031700-201805031800");
		dto.setSv_num("stest");
		
		try {
			dao.create(dto);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

	@Test
	public void testList() {
		Map map=new HashMap();
		map.put("col", "sv_num");
		map.put("sv_num", 1);
		try {
			List list=dao.list(map);
			for(int i=0;i<list.size();i++){
				ReservationDTO dto=(ReservationDTO) list.get(i);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

	@Test
	public void testRead() {
		try {
			String res_code="A000000002";
			ReservationDTO dto=(ReservationDTO)dao.read(res_code);
	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


	@Test
	public void testUpdate() {
		Map map=new HashMap();
		map.put("col", "res_code");
		map.put("res_code", "A000000001");
		ReservationDTO dto;
		try {
			dto = (ReservationDTO)dao.read(map);
			dto.setRes_time("201805051700-201805051800");
			dao.update(dto);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Test
	public void testDelete() {
		String res_code="A000000001";
		  try {
			dao.delete(res_code);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
