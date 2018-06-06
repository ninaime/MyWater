package system.service;

import java.util.List;

import model.SyEmp;

public interface SyEmpService {
	int findEmpByName(String empname);
	// 查询员工
	List<SyEmp> findEmp(int id);
	
	SyEmp findRegister(SyEmp syEmp);
	//判断密码是否正确
	SyEmp existsPwd(SyEmp emp);
	
	int updEmpPwd(SyEmp emp);
	
	SyEmp findEmpById(Integer id);
}
