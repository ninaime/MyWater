package mapper;

import model.PyUserhistory;

public interface PyUserhistoryMapper {
    int insert(PyUserhistory record);

    int insertSelective(PyUserhistory record);
}