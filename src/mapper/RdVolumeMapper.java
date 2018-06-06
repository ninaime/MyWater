package mapper;

import model.RdVolume;

public interface RdVolumeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RdVolume record);

    int insertSelective(RdVolume record);

    RdVolume selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RdVolume record);

    int updateByPrimaryKey(RdVolume record);
}