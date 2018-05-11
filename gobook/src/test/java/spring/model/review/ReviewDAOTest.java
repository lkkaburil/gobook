package spring.model.review;

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

public class ReviewDAOTest {

	private static BeanFactory beans;
	private static ReviewDAO dao;
	
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
		dao = (ReviewDAO) beans.getBean("rdao");
	}

	@After
	public void tearDown() throws Exception {
	}


	@Test
	@Ignore
	public void testRead() {
		int pk=9;
		try {
			ReviewDTO dto=(ReviewDTO) dao.read(pk);
			String id=dto.getC_id();
			System.out.println(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

	@Test
	public void testCreate() throws Exception {
		ReviewDTO dto = new ReviewDTO();
		dto.setRe_title("123");
		dto.setRe_content("13432");
		dto.setRe_rating(1);
		dto.setC_id("ctest");
		dto.setS_id("stest");
		
		assertTrue(dao.create(dto));
		
	
	}


	@Test
	@Ignore
	public void testList() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testUpdate() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testDelete() {
	
	}

	@Test
	@Ignore
	public void testTotal() throws Exception {
		Map map=new HashMap();
		assertNotNull(dao.total(map));
	}

	@Test
	@Ignore
	public void testPasswdCheck() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testRe_count() {
		fail("Not yet implemented");
	}

	public static void p(String string) {
		System.out.println(string);
	}
	private static void p(ReviewDTO dto) {
		p("번호:"+dto.getRe_num());
		p("제목:"+dto.getRe_title());
		p("내용:"+dto.getRe_content());
		p("파일이름:"+dto.getRe_filename());
		p("파일사이즈:"+dto.getRe_filesize());
		p("조회수:"+dto.getRe_count());
		p("조아요:"+dto.getRe_rating());
		p("조아요2:"+dto.getRe_like());
		p("c아이디:"+dto.getC_id());
		p("s아이디:"+dto.getS_id());
		p("날짜:"+dto.getRe_wdate());

		
	}

}
