package expand.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import expand.service.BeOrderService;
import expand.service.BeOrderuserService;
import model.BeOrder;
import model.BeOrderUserList;
import model.BeOrderuser;
import model.SyMetertype;
import system.service.SyMetertypeService;
import util.CreateOrderId;

@Controller
@RequestMapping("BeOrder")
@Transactional(propagation = Propagation.SUPPORTS)
public class BeOrderController {
	
	@Autowired
	SyMetertypeService syMetertypeService;
	
	@Autowired
	BeOrderService beOrderService;
	
	@Autowired
	CreateOrderId createOrderId;
	
	@Autowired
	BeOrderuserService beOrderuserService;
	
	//初始化新增页面
	@RequestMapping("findOrderNew")
	public String findOrderNew(Model model) {
		List<SyMetertype> mlist = syMetertypeService.findSyMeterType();
		model.addAttribute("mlist", mlist);
		return "page/be_request_add";
	}
	
	
	//用户申请办理
	@RequestMapping("addOrderAndOrderUser")
	@Transactional(propagation = Propagation.REQUIRED)
	public String addOrderAndOrderUser(Model model,BeOrder beOrder,BeOrderUserList beOrderUserList) {
		beOrder.setOrderno(createOrderId.generate());
		beOrder.setOrdertype(1);
		beOrder.setStepid(2);
		beOrder.setCreatedate(new Date());
		beOrder.setLasteditdate(new Date());
		beOrderService.addBeOrder(beOrder);
		List<BeOrderuser> blist = beOrderUserList.getBeOrderuserList();
		for (BeOrderuser beOrderuser : blist) {
			beOrderuser.setOrderno(beOrder.getOrderno());
			beOrderuserService.addBeOrderuser(beOrderuser);
		}
		beOrderService.addBeHistoryService(beOrder, 0);
		return "redirect:/Order/findOrderNew";
	}

	
	
	
	
}
