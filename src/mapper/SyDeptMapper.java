package mapper;

import java.util.List;

import model.Page;
import model.SyDept;

public interface SyDeptMapper {
	List<SyDept> findDept();
	
	int addDept(SyDept syDept);
	
	int delDept(int id);
	
	SyDept findById(int id);
	
	int updDept(SyDept syDept);
	
	List<SyDept> findAll(Page page);
	//总条数
	int count();	
	
    int deleteByPrimaryKey(Integer id);

    int insert(SyDept record);

    int insertSelective(SyDept record);

    SyDept selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SyDept record);

    int updateByPrimaryKey(SyDept record);
}