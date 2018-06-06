package mapper;

import model.BeOrderuser;

public interface BeOrderuserMapper {
    int deleteByPrimaryKey(Integer id);

    int addBeOrderuser(BeOrderuser beOrderuser);

    int insertSelective(BeOrderuser record);

    BeOrderuser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BeOrderuser record);

    int updateByPrimaryKey(BeOrderuser record);
}