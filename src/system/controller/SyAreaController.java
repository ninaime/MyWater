package system.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Page;
import model.SyArea;
import system.service.SyAreaService;

@Controller
@RequestMapping("SyArea")
public class SyAreaController {

	@Autowired
	SyAreaService syAreaService;	

	// 查询全部
	@RequestMapping("findAll")
	public String findAll(Model model,Page page) {
		page.totalPages(syAreaService.count());//总页数
		List<SyArea> alist = syAreaService.findAll(page);
		model.addAttribute("page", page);
		model.addAttribute("list", alist);
		return "page/sys_area";
	}

	// 删除就是把状态修改为1
	@RequestMapping("delArea")
	public String remove(Model model, Integer id) {
		//System.out.println(id);
		syAreaService.delArea(id);
		return "redirect:/SyArea/findAll";
	}

	// 添加
	@RequestMapping("addArea")
	public String addArea(Model model,SyArea syArea) {
		syAreaService.addArea(syArea);
		return "redirect:/SyArea/findAll";
	}

	// 根据ID查询
	@RequestMapping("findById")
	public String findById(Model model, Integer id) {	
		SyArea syArea = syAreaService.findById(id);
		model.addAttribute("syArea", syArea);
		return "page/sys_area_edit";
	}

	// 修改
	@RequestMapping("updArea")
	public String updArea(Model model,SyArea syArea) {
		syAreaService.updArea(syArea);
		return "redirect:/SyArea/findAll";
	}
}
