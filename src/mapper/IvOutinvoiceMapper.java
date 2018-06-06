package mapper;

import model.IvOutinvoice;

public interface IvOutinvoiceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(IvOutinvoice record);

    int insertSelective(IvOutinvoice record);

    IvOutinvoice selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(IvOutinvoice record);

    int updateByPrimaryKey(IvOutinvoice record);
}