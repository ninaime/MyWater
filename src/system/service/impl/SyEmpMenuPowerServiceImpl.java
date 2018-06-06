package system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.SyEmpmenupowerMapper;
import mapper.SyMenuMapper;
import model.SyDept;
import model.SyEmpmenupower;
import model.SyMenu;
import system.service.SyEmpMenuPowerService;

@Service
public class SyEmpMenuPowerServiceImpl implements SyEmpMenuPowerService{
	
	@Autowired
	SyEmpmenupowerMapper syEmpmenupowerMapper;
	
	@Autowired
	SyMenuMapper syMenuMapper;
	
	public SyDept findDeptBydeptName() {
		return syEmpmenupowerMapper.findDeptBydeptName("系统管理员");
	}
	
	public List<SyMenu> findMenu(){
		return syMenuMapper.findMenu();
	}
	
	public int delEmpMenuPowerByEmpId(int empid) {
		return syEmpmenupowerMapper.delEmpMenuPowerByEmpId(empid);
	}
	
	public int saveEmpMenuPower(Integer empid, Integer menuid) {
		SyEmpmenupower syEmpmenupower = new SyEmpmenupower();
		syEmpmenupower.setEmpid(empid);
		syEmpmenupower.setMenuid(menuid);
		return syEmpmenupowerMapper.saveEmpMenuPower(syEmpmenupower);
	}
}
