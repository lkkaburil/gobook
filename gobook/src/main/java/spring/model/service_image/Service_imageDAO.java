package spring.model.service_image;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;


public class Service_imageDAO {
	
private static SqlSessionTemplate mybatis;

public static void setMybatis(SqlSessionTemplate mybatis) {
	Service_imageDAO.mybatis = mybatis;
}

public Service_imageDTO read(int simg_num) {
		
		return mybatis.selectOne("service_image.read", simg_num);
	}

   public boolean create(Service_imageDTO dto) {
       boolean flag = false;
	   int cnt = mybatis.insert("service_image.create", dto);
       if(cnt>0)flag=true;
   
       return flag;
   }
   
   public List<Service_imageDTO> list() {
	   return mybatis.selectList("service_image.list");
   }
   
   public boolean update(Service_imageDTO dto) {
       boolean flag= false;
	
	   int cnt = mybatis.update("service_image.update", dto);
       if(cnt>0)flag=true;
     
       return flag;
   }
   
   public boolean delete(int simg_num) {
       boolean flag= false;
	   int cnt = mybatis.delete("service_image.delete", simg_num);
       if(cnt>0)flag=true;
  
       return flag;
   }
}
