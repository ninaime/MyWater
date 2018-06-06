package mapper;

import model.RdYearmonth;

public interface RdYearmonthMapper {
    int insert(RdYearmonth record);

    int insertSelective(RdYearmonth record);
}