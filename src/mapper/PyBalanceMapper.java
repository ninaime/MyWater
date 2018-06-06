package mapper;

import model.PyBalance;

public interface PyBalanceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PyBalance record);

    int insertSelective(PyBalance record);

    PyBalance selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PyBalance record);

    int updateByPrimaryKey(PyBalance record);
}