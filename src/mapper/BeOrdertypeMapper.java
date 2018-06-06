package mapper;

import model.BeOrdertype;

public interface BeOrdertypeMapper {
    int deleteByPrimaryKey(Integer orderid);

    int insert(BeOrdertype record);

    int insertSelective(BeOrdertype record);

    BeOrdertype selectByPrimaryKey(Integer orderid);

    int updateByPrimaryKeySelective(BeOrdertype record);

    int updateByPrimaryKey(BeOrdertype record);
}