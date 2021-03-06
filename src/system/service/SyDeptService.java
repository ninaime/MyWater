package system.service;

import java.util.List;

import model.Page;
import model.SyDept;

public interface SyDeptService {
	List<SyDept> findDept();
	
	int addDept(SyDept syDept);
	
	int delDept(int id);
	
	SyDept findById(int id);
	
	int updDept(SyDept syDept);
	
	List<SyDept> findAll(Page page);
	//总条数
	int count();
}
