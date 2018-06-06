package expand.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import expand.service.BeApplyService;
import expand.service.BeFlowService;
import model.BeApply;
import model.BeFlow;
import model.Page;

@Controller
@RequestMapping("BeApply")
@Transactional(propagation = Propagation.SUPPORTS)
public class BeApplyController {
	
	@Autowired
	BeApplyService beApplyService;	
	
	@Autowired
	BeFlowService beFlowService;
	
	@RequestMapping("Auditing")
	public String ShenHe(Model model, Page page) {
		List<BeApply> alist = beApplyService.findAll(1);
		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
		for (BeApply b : alist) {
			if (b.getLasteditdate() != null) {
				b.setTime(s.format(b.getLasteditdate()));
			}
		}
		page.setSum(beApplyService.count(1));
		page.totalPages(page.getSum());//总页数
		model.addAttribute("page", page);
		model.addAttribute("list", alist);
		return "page/be_audit";
	}
	
	@RequestMapping("PublicExpense")
	public String gongFei(Model model, Page page) {
		List<BeApply> alist = beApplyService.findAll(1);
		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
		for (BeApply b : alist) {
			if (b.getLasteditdate() != null) {
				b.setTime(s.format(b.getLasteditdate()));
			}
		}
		page.setSum(beApplyService.count(1));
		page.totalPages(page.getSum());//总页数
		model.addAttribute("page", page);
		model.addAttribute("list", alist);
		return "page/be_pay";
	}
	
	
	@RequestMapping("Billclear")
	public String Billclear(Model model, Page page) {
		List<BeApply> alist = beApplyService.findAll(1);
		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
		for (BeApply b : alist) {
			if (b.getLasteditdate() != null) {
				b.setTime(s.format(b.getLasteditdate()));
			}
		}
		page.setSum(beApplyService.count(1));
		page.totalPages(page.getSum());//总页数
		model.addAttribute("page", page);
		model.addAttribute("list", alist);
		return "page/be_billclear";
	}
	
	@RequestMapping("Contract")
	public String Contract(Model model, Page page) {
		List<BeApply> alist = beApplyService.findAll(1);
		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
		for (BeApply b : alist) {
			if (b.getLasteditdate() != null) {
				b.setTime(s.format(b.getLasteditdate()));
			}
		}
		page.setSum(beApplyService.count(1));
		page.totalPages(page.getSum());//总页数
		model.addAttribute("page", page);
		model.addAttribute("list", alist);
		return "page/be_contract";
	}
	
	@RequestMapping("ReportProgress")
	public String ReportProgress(ModelMap map) {
		List<BeApply> expandList = beApplyService.findExpand();	
		List<BeApply> expandByidList = beApplyService.findExpandByid();
		List<BeApply> expandByCGList = beApplyService.findExpandByCG();
		List<BeFlow> stepNameByidList = beFlowService.findStepNameByid();
		List<BeApply> expandByEndList = beApplyService.findExpandByEnd();
		List<BeApply> expandByTypeList = beApplyService.findExpandByType();
		int typeCount = 0;
		for (BeApply b : expandByTypeList) {
			typeCount = typeCount + b.getTypecount();
		}
		map.put("expandByTypeList", expandByTypeList);
		map.put("stepNameByidList", stepNameByidList);
		map.put("expandByEndList", expandByEndList);
		map.put("expandByidList", expandByidList);
		map.put("expandByCGList", expandByCGList);		
		map.put("expandList", expandList);
		map.put("typeCount", typeCount);
		return "page/be_reportProgress";
	}

//	@RequestMapping("/reportMoney")
//	public String reportMoney(Be_user u, HttpServletRequest request) {
//		HttpSession session = request.getSession();
//		if (u.getYeId() != null) {
//			int s = u.getYeId();// ��ǰ��ҳ��
//			u = (Be_user) session.getAttribute("u");// ����session�������
//			u.setMin(2 * (s - 1));
//			u.setMax(2 * s);
//			u.setYeId(s);
//		} else {
//			u.setMin(0);
//			u.setMax(2);
//			u.setYeId(1);
//			session.setAttribute("u", u);
//		}
//		List<Be_user> list = dao.findByType(u);
//		request.setAttribute("list", list);
//		double allMoney = 0;
//		for (Be_user user : list) {
//			// System.out.println(user.getRealMoney());
//			allMoney = user.getRealMoney() + allMoney;
//		}
//		// һ���ж����û�
//		Integer sum = dao.findByTypeCount(u);
//		Integer yeSum = 0;
//		if (sum % 2 != 0) {
//			yeSum = sum / 2 + 1;
//		} else {
//			yeSum = sum / 2;
//		}
//		request.setAttribute("yeSum", yeSum);
//		request.setAttribute("ye", u.getYeId());
//		request.setAttribute("allMoney", allMoney);
//		return "/page/be_reportMoney";
//	}
	
}
