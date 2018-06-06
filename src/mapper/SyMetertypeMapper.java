package mapper;

import java.util.List;

import model.Page;
import model.SyMetertype;

public interface SyMetertypeMapper {
	List<SyMetertype> findSyMeterType();

	public SyMetertype findMeterTypeById(Integer meterTypeId);
	
	List<SyMetertype> findAll(Page page);
	
	int count();
	
	int updMetertype(SyMetertype syMetertype);
	
	SyMetertype findById(int id);
	
	int delMetertype(int id);
	
	int addMetertype(SyMetertype syMetertype);
	
    int deleteByPrimaryKey(Integer id);

    int insert(SyMetertype record);

    int insertSelective(SyMetertype record);

    SyMetertype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SyMetertype record);

    int updateByPrimaryKey(SyMetertype record);
}