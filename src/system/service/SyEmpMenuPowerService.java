package system.service;

import java.util.List;

import model.SyDept;
import model.SyMenu;

public interface SyEmpMenuPowerService {
	int saveEmpMenuPower(Integer empid, Integer menuid);
	
	int delEmpMenuPowerByEmpId(int empid);
	
	//获得系统管理员
	SyDept findDeptBydeptName();
	//查询所有菜单
	List<SyMenu> findMenu();
	
}
