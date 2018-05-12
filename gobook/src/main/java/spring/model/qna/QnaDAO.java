package spring.model.qna;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;

import spring.model.notice.NoticeDAO;



public class QnaDAO implements IQnaDAO {

	private SqlSessionTemplate mybatis;
	
	public void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}
	
	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mybatis.insert("qna.create", dto);
		if(cnt>0)flag = true;
		
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {
		List list = mybatis.selectList("qna.list", map);
		
		return list;
	}

	@Override
	public Object read(Object pk) throws Exception {
		QnaDTO dto = mybatis.selectOne("qna.read", pk);
		
		return dto;
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mybatis.update("qna.update", dto);
		if(cnt>0)flag = true;
		
		return flag;
	}

	@Override
	public boolean delete(Object pk) throws Exception {
		boolean flag = false;
		int cnt = mybatis.delete("qna.delete", pk);
		if(cnt>0)flag = true;
		
		return flag;
	}

	@Override
	public int total(Map map) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}
