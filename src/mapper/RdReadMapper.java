package mapper;

import model.RdRead;

public interface RdReadMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RdRead record);

    int insertSelective(RdRead record);

    RdRead selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RdRead record);

    int updateByPrimaryKey(RdRead record);
}