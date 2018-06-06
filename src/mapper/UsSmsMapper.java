package mapper;

import model.UsSms;

public interface UsSmsMapper {
    int insert(UsSms record);

    int insertSelective(UsSms record);
}