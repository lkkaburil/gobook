package spring.model.faq;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

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

public class FaqDAOTest {

	private static BeanFactory beans;
	private static FaqDAO dao;
	
	
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
		dao = (FaqDAO) beans.getBean("fdao");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	@Ignore
	public void test() {
		fail("Not yet implemented");
	}
	
	
	@Ignore
	@Test
	public void Total() throws Exception{
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
	public void List() throws Exception {
		Map map = new HashMap();
		List list = dao.list(map);
		for(int i=0; i<list.size(); i++) {
			FaqDTO dto = (FaqDTO) list.get(i);
		}
		assertEquals(list.size(), 3);
	}
	
	@Test
	@Ignore
	public void Read() throws Exception {
		assertNotNull(dao.read(2));
	}
	
	@Test
	@Ignore
	public void create() throws Exception {
		FaqDTO dto = new FaqDTO();
		dto.setFaq_num(3);
		dto.setFaq_category("기간");
		dto.setFaq_title("기간이 얼마나 걸려유~~?");
		dto.setFaq_content("진시크!");
		dto.setA_id("atest");
		dto.setFaq_wdate("2018-05-10");
		assertTrue(dao.create(dto));
	}
	
	@Test
	@Ignore
	public void update() throws Exception {
		FaqDTO dto = new FaqDTO();
		dto.setFaq_num(1);
		dto.setFaq_category("비용");
		dto.setFaq_title("총 비용이 궁금해요");
		dto.setFaq_content("제가 돈이 없어서 그런데 총 비용이 궁금해요");
		assertTrue(dao.update(dto));
	}
	
	private void p(FaqDTO dto) {
		System.out.println("번호:" + dto.getFaq_num());
		System.out.println("분류:" + dto.getFaq_category());
		System.out.println("제목:" + dto.getFaq_title());
		System.out.println("제목:" + dto.getFaq_content());
		System.out.println("작성자:" + dto.getA_id());
	}
}
