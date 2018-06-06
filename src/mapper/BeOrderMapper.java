package mapper;

import java.util.List;

import model.BeOrder;

public interface BeOrderMapper {
	//获得总页数
	int count();
	
	//通过编号获得
	List<BeOrder> findBeOrderByDate(String NowTime);
	
	int addBeOrder(BeOrder beOrder);
	
    int deleteByPrimaryKey(String orderno);

    int insert(BeOrder record);

    int insertSelective(BeOrder record);

    BeOrder selectByPrimaryKey(String orderno);

    int updateByPrimaryKeySelective(BeOrder record);

    int updateByPrimaryKey(BeOrder record);
}