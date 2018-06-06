package system.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Page;
import model.SyMetertype;
import system.service.SyMetertypeService;

@Controller
@RequestMapping("SyMetertype")
public class SyMetertypeController {

	@Autowired
	SyMetertypeService syMetertypeService;

	// 查询全部
	@RequestMapping("findAll")
	public String findAll(Model model,Page page) {
		page.totalPages(syMetertypeService.count());//总页数
		List<SyMetertype> mlist = syMetertypeService.findAll(page);
		model.addAttribute("page", page);
		model.addAttribute("list", mlist);
		return "page/sys_meterType";
	}

	// 删除
	@RequestMapping("delMetertype")
	public String delMetertype(Model model,Integer id) {
		syMetertypeService.delMetertype(id);
		return "redirect:syMetertype/findAll";
	}

	// 添加
	@RequestMapping("addMetertype")
	public String addMetertype(Model model,SyMetertype syMetertype) {
		syMetertypeService.updMetertype(syMetertype);
		return "redirect:syMetertype/findAll";
	}
		
	//根据ID查询
	@RequestMapping("findById")
	public String findById(Model model,Integer id){
		SyMetertype syMetertype=syMetertypeService.findById(id);
		model.addAttribute("sm", syMetertype);
		return "page/sys_meterType_edit";
	}
		
	//修改
	@RequestMapping("updMetertype")
	public String updMetertype(Model model,SyMetertype syMetertype){
		syMetertypeService.updMetertype(syMetertype);
		return "redirect:syMetertype/findAll";
	}
}
