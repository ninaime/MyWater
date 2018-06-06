package system.service;

import java.util.List;

import model.Page;
import model.SyArea;

public interface SyAreaService {
	int addArea(SyArea syArea);
	
	List<SyArea> findAll(Page page);
	
	int count();
	
	int delArea(int id);
	
	SyArea findById(int id);
	
	int updArea(SyArea syArea);
}
