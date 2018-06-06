package expand.service;

import java.util.List;

import model.BeOrder;

public interface BeOrderService {
	public List<BeOrder> findBeOrderByDate(String NowTime);
	
	int addBeOrder(BeOrder beOrder);
	
	int addBeHistoryService(BeOrder beOrder,int isBack);
}
