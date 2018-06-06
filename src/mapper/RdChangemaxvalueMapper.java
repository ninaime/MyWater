package mapper;

import model.RdChangemaxvalue;

public interface RdChangemaxvalueMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RdChangemaxvalue record);

    int insertSelective(RdChangemaxvalue record);

    RdChangemaxvalue selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RdChangemaxvalue record);

    int updateByPrimaryKey(RdChangemaxvalue record);
}