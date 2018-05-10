package spring.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ServiceDAO {
	
	@Autowired
	private static SqlSessionTemplate mybatis;
	
	
	
	
   public static void setMybatis(SqlSessionTemplate mybatis) {
		ServiceDAO.mybatis = mybatis;
	}

public ServiceDTO read(int sv_num) {
		
		return mybatis.selectOne("service.read", sv_num);
	}
   
   public List<ServiceDTO> list() {
	   return mybatis.selectList("service.list");
   }

   public boolean update(ServiceDTO dto) {
	 
	   boolean flag = false;
	   int cnt = mybatis.update("service.update", dto);
	   if(cnt>0)flag=true;
	
	   return flag;
   }
   
   public boolean create(ServiceDTO dto) {
	   boolean flag = false;

	   int cnt = mybatis.insert("service.create", dto);
	   if(cnt>0)flag=true;
	 
	   return flag;
   }
	
   public boolean delete(int sv_num) {
	 
	   boolean flag = false;  
	   int cnt = mybatis.delete("service.delete", sv_num);
	   if(cnt>0)flag=true;
	   
	   return flag;
   }
}





