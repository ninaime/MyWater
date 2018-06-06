package mapper;

import model.SyCosttype;

public interface SyCosttypeMapper {
    int insert(SyCosttype record);

    int insertSelective(SyCosttype record);
}