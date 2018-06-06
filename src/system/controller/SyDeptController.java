package system.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Page;
import model.SyDept;
import system.service.SyDeptService;

@Controller
@RequestMapping("SyDept")
public class SyDeptController {

	@Autowired
	SyDeptService syDeptService;

	// 查询所有部门
	@RequestMapping("findAll")
	public String findAll(Model model,Page page) {
		page.totalPages(syDeptService.count());//总页数
		List<SyDept> dlist = syDeptService.findAll(page);
		model.addAttribute("page", page);
		model.addAttribute("list", dlist);
		return "page/sys_dept";
	}
	
	//通过ID查询
	@RequestMapping("findById")
	public String FindById(Model model,int id){
		SyDept syDept=syDeptService.findById(id);
		model.addAttribute("syDept", syDept);
		return "page/sys_dept_add";
	}
	
	// 添加
	@RequestMapping("addArea")
	public String addArea(Model model,SyDept syDept) {
		syDeptService.addDept(syDept);
		return "redirect:SyDept/findAll";
	}
	
	// 修改
	@RequestMapping("updDept")
	public String updDept(Model model,SyDept syDept) {
		syDeptService.updDept(syDept);
		return "redirect:SyDept/findAll";
	}
	
	//删除
	@RequestMapping("delDept")
	public String delDept(Model model,int id){
		syDeptService.delDept(id);
		return "redirect:SyDept/findAll";
	}
}
