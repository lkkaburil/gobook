package spring.model.reservation;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;

public class ReservationDAO implements IDAO {

	private static SqlSessionTemplate mybatis;
	
	
	
	public static void setMybatis(SqlSessionTemplate mybatis) {
		ReservationDAO.mybatis = mybatis;
	}

	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag=false;

		int cnt=mybatis.insert("reservation.create", dto);
		if(cnt>0)flag=true;
	
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {
		// TODO Auto-generated method stub
		return mybatis.selectList("reservation.list", map);
	}

	@Override
	public Object read(Object pk) throws Exception {
		
		return mybatis.selectOne("reservation.read", pk);
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag=false;
		
		int cnt=mybatis.update("reservation.update", dto);
		if(cnt>0)flag=true;
		
		return flag;
	}

	@Override
	public boolean delete(Object pk) throws Exception {
		boolean flag=false;
		int cnt=mybatis.delete("reservation.delete", pk);
		if(cnt>0)flag=true;
		
		return flag;
	}

	@Override
	public int total(Map map) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


}
