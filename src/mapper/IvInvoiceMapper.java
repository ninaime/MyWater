package mapper;

import model.IvInvoice;

public interface IvInvoiceMapper {
    int deleteByPrimaryKey(String invoiceno);

    int insert(IvInvoice record);

    int insertSelective(IvInvoice record);

    IvInvoice selectByPrimaryKey(String invoiceno);

    int updateByPrimaryKeySelective(IvInvoice record);

    int updateByPrimaryKey(IvInvoice record);
}