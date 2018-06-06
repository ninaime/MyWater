package mapper;

import model.PyPay;

public interface PyPayMapper {
    int insert(PyPay record);

    int insertSelective(PyPay record);
}