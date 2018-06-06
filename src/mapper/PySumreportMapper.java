package mapper;

import model.PySumreport;

public interface PySumreportMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PySumreport record);

    int insertSelective(PySumreport record);

    PySumreport selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PySumreport record);

    int updateByPrimaryKey(PySumreport record);
}