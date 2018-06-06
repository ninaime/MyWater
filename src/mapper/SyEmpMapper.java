package mapper;

import java.util.List;

import model.SyEmp;

public interface SyEmpMapper {
	int findEmpByName(String empname);
	
	SyEmp findEmpById(Integer id);
	
	List<SyEmp> findEmp(Integer id);
	
	int updEmpPwd(SyEmp emp);
	
	SyEmp existsPwd(SyEmp emp);
	
	SyEmp findRegister(SyEmp syEmp);
	
    int deleteByPrimaryKey(Integer id);

    int insert(SyEmp record);

    int insertSelective(SyEmp record);

    SyEmp selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SyEmp record);

    int updateByPrimaryKey(SyEmp record);
}