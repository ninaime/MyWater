package system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.SyEmpMapper;
import model.SyEmp;
import system.service.SyEmpService;

@Service
public class SyEmpServiceImpl implements SyEmpService{
	
	@Autowired
	SyEmpMapper syEmpMapper;
	
	public SyEmp findRegister(SyEmp syEmp) {
		return syEmpMapper.findRegister(syEmp);
	}
	
	public SyEmp existsPwd(SyEmp syEmp) {
		return syEmpMapper.existsPwd(syEmp);
	}
	
	public int updEmpPwd(SyEmp syEmp) {
		return syEmpMapper.updEmpPwd(syEmp);
	}
	
	// 查询员工
	public List<SyEmp> findEmp(int id){
		return syEmpMapper.findEmp(id);
	}
	
	public SyEmp findEmpById(Integer id) {
		return syEmpMapper.findEmpById(id);
	}
	
	public int findEmpByName(String empname) {
		return syEmpMapper.findEmpByName(empname);
	}
}
