package mapper;

import model.RdReadtypes;

public interface RdReadtypesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RdReadtypes record);

    int insertSelective(RdReadtypes record);

    RdReadtypes selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RdReadtypes record);

    int updateByPrimaryKey(RdReadtypes record);
}