package mapper;

import model.UsUser;

public interface UsUserMapper {
    int deleteByPrimaryKey(String userno);

    int insert(UsUser record);

    int insertSelective(UsUser record);

    UsUser selectByPrimaryKey(String userno);

    int updateByPrimaryKeySelective(UsUser record);

    int updateByPrimaryKey(UsUser record);
}