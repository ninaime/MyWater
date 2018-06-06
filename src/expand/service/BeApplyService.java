package expand.service;

import java.util.List;

import model.BeApply;

public interface BeApplyService {
	
	List<BeApply> findAll(int id);
	
	int count(int id);
	
	//查询业扩工程进度
	List<BeApply> findExpand();
	
	List<BeApply> findExpandByType();
	
	List<BeApply> findExpandByid();
	
	List<BeApply> findExpandByCG();
	
	List<BeApply> findExpandByEnd();
}
