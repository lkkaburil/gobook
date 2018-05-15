package spring.model.member;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}
	
	public boolean create(Map map) throws Exception {
		boolean flag=false;

		int cnt=mybatis.insert("member.create", map);
		
		if(cnt>0)flag=true;

		return flag;
	}
	
	public String getGrade(String id) throws Exception{

		return mybatis.selectOne("member.getGrade", id);
	}

}
