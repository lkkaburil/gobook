package spring.model.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NoticeTest {

	public static void main(String[] args) {
		
		NoticeDAO dao = new NoticeDAO();
		
		create(dao);
		//read(dao);
		//update(dao);
		//delete(dao);
		//list(dao);
		//total(dao);
		
		
	}

	private static void total(NoticeDAO dao) {
		// TODO Auto-generated method stub
		
	}

	private static void list(NoticeDAO dao) {
		Map map = new HashMap();
		try {
		List list = dao.list(map);
		for(int i=0; i<list.size(); i++) {
			NoticeDTO dto = (NoticeDTO) list.get(i); 
			p(dto);
		}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	private static void delete(NoticeDAO dao) {
		int n_num = 1;
		try {
			if(dao.delete(n_num)) {
				p("삭제성공!");
			}else {
				p("삭제실패");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
	}

	private static void update(NoticeDAO dao) {
		
		try {
			NoticeDTO dto = (NoticeDTO) dao.read(1);
			dto.setN_title("제목 바껴라");
			dto.setN_content("내용바껴라");
			if(dao.update(dto)) {
				p("업뎃 성공!");
			}else {
				p("업뎃 실패ㅠ");
}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private static void read(NoticeDAO dao) {
		
		int n_num = 2;
		NoticeDTO dto;
		try {
			dto = (NoticeDTO) dao.read(n_num);
			p(dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	private static void p(NoticeDTO dto) {
		System.out.println("번호:" + dto.getN_num());
		System.out.println("제목:" + dto.getN_title());
		System.out.println("내용:" + dto.getN_content());
		System.out.println("작성일:" + dto.getN_wdate());
		System.out.println("작성자:" + dto.getA_id());
		System.out.println("-----------------------");
		
	}

	private static void create(NoticeDAO dao) {
		NoticeDTO dto = new NoticeDTO();
		dto.setN_num(4);
		dto.setN_title("제목이드아아아아");
		dto.setN_content("내용이드아아아");
		//dto.setN_wdate("2018-05-03");
		dto.setA_id("atest");
		
		try {
			if(dao.create(dto)) {
				p("생성 성공!");
			}else {
				p("생성 실패ㅠ");
}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
	private static void p(String string) {
		System.out.println(string);
		
	}	
	
	
	}


