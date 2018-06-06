package mapper;

import model.SyDept;
import model.SyEmpmenupower;

public interface SyEmpmenupowerMapper {
	int saveEmpMenuPower(SyEmpmenupower syEmpmenupower);
	
	int delEmpMenuPowerByEmpId(int empid);
	
	SyDept findDeptBydeptName(String DeptName);
		
    int insert(SyEmpmenupower record);

    int insertSelective(SyEmpmenupower record);
}