package expand.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import expand.service.BeOrderService;
import mapper.BeHistoryMapper;
import mapper.BeOrderMapper;
import model.BeHistory;
import model.BeOrder;


@Service
public class BeOrderServiceImpl implements BeOrderService{
	
	@Autowired
	BeOrderMapper beOrderMapper;
	
	@Autowired
	BeHistoryMapper beHistoryMapper;
	
	public List<BeOrder> findBeOrderByDate(String NowTime) {
		return beOrderMapper.findBeOrderByDate(NowTime);
	}
	
	public int addBeOrder(BeOrder beOrder) {
		return beOrderMapper.addBeOrder(beOrder);
	}
	
	public int addBeHistoryService(BeOrder beOrder,int isBack) {
		BeHistory beHistory = new BeHistory();
		beHistory.setOrderno(beOrder.getOrderno());
		beHistory.setStepid(beOrder.getStepid());
		beHistory.setDatee(beOrder.getLasteditdate());
		beHistory.setEmpid(beOrder.getLasteditemp());
		beHistory.setIsback(isBack);
		return beHistoryMapper.addBeHistory(beHistory);
	}	

}
