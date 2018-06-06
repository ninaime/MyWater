package system.service;

import java.util.List;

import model.Page;
import model.SyMetertype;

public interface SyMetertypeService {
	List<SyMetertype> findSyMeterType();

	SyMetertype findMeterTypeById(Integer meterTypeId);
	
	List<SyMetertype> findAll(Page page);
	
	int count();
	
	int updMetertype(SyMetertype syMetertype);
	
	SyMetertype findById(int id);
	
	int delMetertype(int id);
	
	int addMetertype(SyMetertype syMetertype);
}
