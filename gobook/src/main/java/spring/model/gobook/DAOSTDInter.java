package spring.model.gobook;

import java.util.List;
import java.util.Map;

import spring.model.freeboard.FreeboardDTO;

public interface DAOSTDInter {
	
    boolean create(Object dto) throws Exception;

	List list(Map map) throws Exception;

	Object read(Object pk) throws Exception;

	boolean update(Object dto) throws Exception;

	boolean delete(Object pk) throws Exception;

	int total(Map map) throws Exception;

	

}