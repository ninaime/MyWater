package mapper;

import model.RdTask;

public interface RdTaskMapper {
    int insert(RdTask record);

    int insertSelective(RdTask record);
}