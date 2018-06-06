package mapper;

import model.BeHistory;

public interface BeHistoryMapper {
    int deleteByPrimaryKey(Integer id);

    int addBeHistory(BeHistory beHistory);

    int insertSelective(BeHistory record);

    BeHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BeHistory record);

    int updateByPrimaryKey(BeHistory record);
}