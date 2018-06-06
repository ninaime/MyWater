package util;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import expand.service.BeOrderService;
import model.BeOrder;
//import expand.dao.OrderDao_2;

@Repository
public class CreateOrderId {
	
	@Autowired
	private BeOrderService beOrderService;

	private static int flowId = 0;
	
	private String getFlowNo() {
		return "B1";
	}
	
	private String getDateString(){
		return SystemDate.systemSimpleTime();
	}

	public String generate() {
		String custno = "";
		custno += getFlowNo()+"-";
		custno += getDateString()+"-";
		custno += getNo();
		return custno;
	}

	private String getNo() {
		List<BeOrder> list = beOrderService.findBeOrderByDate(getDateString());
		int max = 0;
		if (list.size() > 0) {
			int[] id = new int[list.size()];
			int i = 0;
			for (BeOrder beOrder : list) {
				id[i] = Integer.parseInt(beOrder.getOrderno().substring(12).trim());
				i++;
			}
			max = id[0];
			for (int j = 1; j < id.length; j++) {
				if (id[j] > max) {
					max = id[j];
				}
			}
		}
		flowId = max;
		String s = "000" + ((int)++flowId);
		s = s.substring(s.length() - 4);
		return s;
	}
}
