package mapper;

import model.BeOrderlite;

public interface BeOrderliteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BeOrderlite record);

    int insertSelective(BeOrderlite record);

    BeOrderlite selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BeOrderlite record);

    int updateByPrimaryKey(BeOrderlite record);
}