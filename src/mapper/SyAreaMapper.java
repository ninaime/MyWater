package mapper;

import java.util.List;

import model.Page;
import model.SyArea;

public interface SyAreaMapper {
	int addArea(SyArea syArea);
	
	int delArea(int id);
	
	SyArea findById(int id);
	
	int updArea(SyArea syArea);
	
	List<SyArea> findAll(Page page);
	//总条数
	int count();
	
    int insert(SyArea record);

    int insertSelective(SyArea record);
}