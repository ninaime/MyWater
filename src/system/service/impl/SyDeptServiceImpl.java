package system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.SyDeptMapper;
import model.Page;
import model.SyDept;
import system.service.SyDeptService;

@Service
public class SyDeptServiceImpl implements SyDeptService{
	
	@Autowired
	SyDeptMapper syDeptMapper;
	
	public int addDept(SyDept syDept) {
		return syDeptMapper.addDept(syDept);
	}
	
	public int delDept(int id) {
		return syDeptMapper.delDept(id);
	}
	
	public SyDept findById(int id) {
		return syDeptMapper.findById(id);
	}
	
	public int updDept(SyDept syDept) {
		return syDeptMapper.updDept(syDept);
	}
	
	public List<SyDept> findAll(Page page){
		if(page.getPages() != 1) {
			page.setStart(page.getCount()*(page.getPages()-1));
			page.setCount(page.getCount()*(page.getPages()));
		}
		return syDeptMapper.findAll(page);
	}
	
	public int count() {
		return syDeptMapper.count();
	}
	
	public List<SyDept> findDept(){
		return syDeptMapper.findDept();
	}
}
