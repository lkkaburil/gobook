package spring.model.notice;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;
import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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


public class NoticeDAOTest {

	private static BeanFactory beans;
	private static NoticeDAO dao;
	
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		
		Resource resource = new ClassPathResource("daoTest.xml");
		
		beans = new XmlBeanFactory(resource);
		
	
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		dao = (NoticeDAO) beans.getBean("mdao");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	@Ignore
	public void test() {
		fail("Not yet implemented");
	}
	
	@Test
	@Ignore
	public void Total() throws Exception {
		Map map = new HashMap();
		assertNotNull(dao.total(map));
	}
	
	@Test
	@Ignore
	public void Delete() throws Exception {
		assertTrue(dao.delete(2));
		
		
			
		}

	@Test
	
	public void List() throws Exception {
		Map map = new HashMap();
		List list = dao.list(map);
		for(int i=0; i<list.size(); i++) {
			NoticeDTO dto = (NoticeDTO) list.get(i);	
		}
		assertEquals(list.size(), 3);
	}
	
	
	@Test
	@Ignore
	public void testRead() throws Exception {
		assertNotNull(dao.read(3));
		
	}
		

	@Test
	@Ignore
	public void Create() throws Exception {
		NoticeDTO dto = new NoticeDTO();
		dto.setN_num(5);
		dto.setN_title("탄생해라 제작");
		dto.setN_content("내용젠장");
		dto.setN_wdate("2018-05-09");
		dto.setA_id("atest");
		assertTrue(dao.create(dto));
		
		
	}



	@Test	
	
	public void Update() throws Exception {
		NoticeDTO dto = new NoticeDTO();
		dto.setN_num(5);
		dto.setN_title("제목 바뀌어랏!!!!!!");
		dto.setN_content("내용도 바뀐다");
		assertTrue(dao.update(dto));
		
		
	}



	
	private void p(NoticeDTO dto) {
		System.out.println("이름:" + dto.getN_num());
		System.out.println("제목:" + dto.getN_title());
		System.out.println("내용:" + dto.getN_content());
		System.out.println("작성일:" + dto.getN_wdate());
		System.out.println("작성자:" + dto.getA_id());
		System.out.println("-----------------------");
		
	}

}
