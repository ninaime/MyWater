package mapper;

import model.UsMeter;

public interface UsMeterMapper {
    int insert(UsMeter record);

    int insertSelective(UsMeter record);
}