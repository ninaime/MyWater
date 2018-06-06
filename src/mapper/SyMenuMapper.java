package mapper;

import java.util.List;

import model.SyMenu;

public interface SyMenuMapper {	
    int deleteByPrimaryKey(Integer id);

    int insert(SyMenu record);

    int insertSelective(SyMenu record);

    SyMenu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SyMenu record);

    int updateByPrimaryKey(SyMenu record);

	List<SyMenu> findMenu();
}