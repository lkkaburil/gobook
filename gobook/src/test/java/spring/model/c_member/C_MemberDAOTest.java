package spring.model.c_member;

import static org.junit.Assert.*;

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

public class C_MemberDAOTest {

	private static BeanFactory beans;
	private static C_MemberDAO dao;
	
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
		dao = (C_MemberDAO) beans.getBean("c_memberdao");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testCreate() throws Exception {
		C_MemberDTO dto=new C_MemberDTO();
		dto.setC_id("c_user2");
		dto.setC_passwd("1234");
		dto.setC_gender("m");
		dto.setC_tel("010-1111-1111");
		dto.setC_zipcode("22-11");
		dto.setC_address1("우리동네시");
		dto.setC_address2("어딘가아파트 106-802");
		dto.setC_birth("1998-04-20");
		dto.setC_email("user2@naver.com");
		dto.setC_interest("병원,운동");
		dto.setC_name("김고북");
		dto.setC_nickname("몰랑이");

		assertTrue(dao.create(dto));
	}

	@Test
	@Ignore
	public void testEmailCheck() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testIdCheck() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testRead() {
		fail("Not yet implemented");
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
	public void testUpdatePasswd() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testPasswdCheck() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testDelete() {
		fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testTotal() {
		fail("Not yet implemented");
	}

}
