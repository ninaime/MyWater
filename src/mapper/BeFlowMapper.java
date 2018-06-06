package mapper;

import java.util.List;

import model.BeFlow;

public interface BeFlowMapper {
	//业扩 1-8
	List<BeFlow> findStepnameByid();
	
    int deleteByPrimaryKey(Integer id);

    int insert(BeFlow record);

    int insertSelective(BeFlow record);

    BeFlow selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BeFlow record);

    int updateByPrimaryKey(BeFlow record);
}