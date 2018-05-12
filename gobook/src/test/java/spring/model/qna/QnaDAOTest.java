package spring.model.qna;

import static org.junit.Assert.*;

import java.util.HashMap;
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

public class QnaDAOTest {

	private static BeanFactory beans;
	private static QnaDAO dao;
	
	
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
		dao = (QnaDAO) beans.getBean("qdao");
		
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
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
	@Ignore
	public void read() throws Exception {
		assertNotNull(dao.read(2));
	}
	
	@Test
	@Ignore
	public void create() throws Exception {
		QnaDTO dto = new QnaDTO();
		dto.setQ_num(3);
		dto.setQ_title("정신이 혼미해");
		dto.setQ_content("내용도 혼미해");
		dto.setId("ctest");
		dto.setQ_lock("L");
		assertTrue(dao.create(dto));	
	}
	
	@Test
	@Ignore
	public void update() throws Exception {
		QnaDTO dto = (QnaDTO) dao.read(1);
		dto.setQ_title("업뎃하겠음");
		dto.setQ_content("ㅇㅋㅇㅋ");
		assertTrue(dao.update(dto));
	}
	
	@Test
	@Ignore
	public void list() throws Exception {
		Map map = new HashMap();
		assertNotNull(dao.list(map));	
	}
}
