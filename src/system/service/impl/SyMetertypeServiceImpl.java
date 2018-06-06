package system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.SyMetertypeMapper;
import model.Page;
import model.SyMetertype;
import system.service.SyMetertypeService;

@Service
public class SyMetertypeServiceImpl implements SyMetertypeService{
	@Autowired
	SyMetertypeMapper syMetertypeMapper;
	
	public List<SyMetertype> findAll(Page page){
		if(page.getPages() != 1) {
			page.setStart(page.getCount()*(page.getPages()-1));
			page.setCount(page.getCount()*(page.getPages()));
		}
		return syMetertypeMapper.findAll(page);
	}
	
	public int count() {
		return syMetertypeMapper.count();
	}
	
	public int updMetertype(SyMetertype syMetertype) {
		return syMetertypeMapper.updMetertype(syMetertype);
	}
	
	public SyMetertype findById(int id) {
		return syMetertypeMapper.findById(id);
	}
	
	public int delMetertype(int id) {
		return syMetertypeMapper.delMetertype(id);
	}
	
	public int addMetertype(SyMetertype syMetertype) {
		return syMetertypeMapper.addMetertype(syMetertype);
	}
	
	public List<SyMetertype> findSyMeterType(){
		return syMetertypeMapper.findSyMeterType();
	}

	public SyMetertype findMeterTypeById(Integer meterTypeId) {
		return syMetertypeMapper.findMeterTypeById(meterTypeId);
	}
}
