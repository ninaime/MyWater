package system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.SyAreaMapper;
import model.Page;
import model.SyArea;
import system.service.SyAreaService;

@Service
public class SyAreaServiceImpl implements SyAreaService {
	
	@Autowired
	SyAreaMapper syAreaMapper;
	
	public List<SyArea> findAll(Page page){
		if(page.getPages() != 1) {
			page.setStart(page.getCount()*(page.getPages()-1));
			page.setCount(page.getCount()*(page.getPages()));
		}
		return syAreaMapper.findAll(page);
	}
	
	public int count() {
		return syAreaMapper.count();
	}
	
	public int delArea(int id) {
		return syAreaMapper.delArea(id);
	}
	
	public SyArea findById(int id) {
		return syAreaMapper.findById(id);
	}
	
	public int updArea(SyArea syArea) {
		return syAreaMapper.updArea(syArea);
	}
	
	public int addArea(SyArea syArea) {
		return syAreaMapper.addArea(syArea);
	}
}
