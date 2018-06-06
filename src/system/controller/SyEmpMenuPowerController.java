package system.controller;
import java.util.ArrayList;
import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.Cookie;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import main.controller.MainController;
//import main.dto.MainDto;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import model.SyDept;
import model.SyEmp;
import model.SyMenu;
import system.service.SyDeptService;
import system.service.SyEmpMenuPowerService;
import system.service.SyEmpService;

@Controller
@RequestMapping("SyEmpMenuPower")
public class SyEmpMenuPowerController {
	
	@Autowired
	SyEmpService syEmpService;
	
	@Autowired
	SyEmpMenuPowerService syEmpMenuPowerService;
	
	@Autowired
	SyDeptService syDeptService;
	
	// 登录查询
	@RequestMapping("findRegister")
	public String findRegister(SyEmp syEmp,HttpSession httpSession,Model model) throws Exception {
		System.out.println(syEmp.toString());
		SyEmp emp = syEmpService.findRegister(syEmp);
		String result;
		if (emp == null) {
			System.out.println("用户名或密码错误");
			result = "login";
		} else {
			List<SyMenu> mlist = new ArrayList<SyMenu>();
			// 查询部门名称为系统管理员
			SyDept dept = syEmpMenuPowerService.findDeptBydeptName();
			System.out.println(dept.toString());
//			if (emp.getDeptid() == dept.getId()) {
				mlist = syEmpMenuPowerService.findMenu();
//				for (int i = 0; i < mlist.size(); i++)System.out.println(mlist.get(i).toString());
//			} 
//			else {
//				// 查询该员工拥有的菜单权限
//				List<SyEmpmenupower> list_empmenupower = sy_EmpMenuPowerDao
//						.findEmpMenuPowerById(emp.getId());
//				if (list_empmenupower != null) {
//					// 查询员工拥有权限的菜单
//					for (int i = 0; i < list_empmenupower.size(); i++) {
//						Sy_menu menu = sy_EmpMenuPowerDao
//								.findMenuByMenuId(list_empmenupower.get(i)
//										.getMenuId());
//						list_menu.add(menu);
//					}
//				}
			httpSession.setAttribute("empMenu", mlist);
			httpSession.setAttribute("user", emp);
			httpSession.setMaxInactiveInterval(30 * 60);
			result = "workspace";
		}
		return result;
	}
	
	// 退出用户
	@RequestMapping("exit")
	public String exit(HttpSession httpSession)throws Exception {
		httpSession.invalidate();
		return "login";
	}
	
	// 修改员工密码
	@RequestMapping("updEmpPwd")
	@Transactional(propagation = Propagation.REQUIRED)
	public String updEmpPwd(HttpSession httpSession,String lnewpwd1) throws Exception {
		SyEmp emp=(SyEmp) httpSession.getAttribute("user");
		emp.setPwd(lnewpwd1);
		System.out.println(syEmpService.updEmpPwd(emp));
		httpSession.invalidate();
		return "login";
	}
	
	//判断密码是否正确
	@ResponseBody
	@RequestMapping("existsPwd")
	public  JSONObject existsLoginName(HttpSession httpSession,String pwd)throws Exception{
		JSONObject json = new JSONObject();
		SyEmp emp=(SyEmp) httpSession.getAttribute("user");
		emp.setPwd(pwd);
		SyEmp e = syEmpService.existsPwd(emp);
		if(e!=null) {
			json.put( "success","<font color=\"green\">√</font>");
		}else {
			json.put( "success","<font color=\"red\">× 密码错误</font>");
		}
		return json ;
	}
	
	// 菜单权限设置跳转查询
	@RequestMapping("findEmp")
	public String findEmp(Model model,HttpSession httpSession) {
		SyEmp syEmp = (SyEmp) httpSession.getAttribute("user");
		// 查询员工
		List<SyEmp> emplist = syEmpService.findEmp(syEmp.getId());
		System.out.println("Stemp:"+ emplist.size());
		// 查询部门
		List<SyDept> deptlist = syDeptService.findDept();

		model.addAttribute("emplist", emplist);
		model.addAttribute("deptlist", deptlist);

		return "page/sys_menupower";
	}
	
	// 批量设置菜单权限 跳转查询
	@RequestMapping("findEmpMenuPowers")
	public String findEmpMenuPowers(Model model,String s) {
		List<SyEmp> emplist = new ArrayList<SyEmp>();
		String[] split = s.split(",");
		for (int i = 0; i < split.length; i++) {
			SyEmp emp = syEmpService.findEmpById(Integer.valueOf(split[i]));
			emplist.add(emp);
		}
		List<SyMenu> menulist = syEmpMenuPowerService.findMenu();
		model.addAttribute("emplist", emplist);
		model.addAttribute("menulist", menulist);
		// 辅助
		model.addAttribute("auxiliary", 2);
		return "page/sys_menupower_set";
	}
	
	// 批量修改员工菜单权限
	@RequestMapping("updEmpMenuPowers")
	@Transactional(propagation = Propagation.REQUIRED)
	public String updateEmpMenuPowers(Model model,String s, String tx) {
		// 分割 获取菜单的ID
		String[] menuId = s.split(",");
		// 分割 获取员工名字
		String[] empName = tx.split(",");
		// 根据员工名字查询出员工ID
		// 准备一个集合收集员工ID
		List<Integer> list_int = new ArrayList<Integer>();
		for (int i = 0; i < empName.length; i++) {
			int empid = syEmpService.findEmpByName(empName[i]);
			list_int.add(empid);
			// 同时根据员工ID清空员工菜单权限表的数据
			syEmpMenuPowerService.delEmpMenuPowerByEmpId(empid);
		}
		// 添加员工菜单权限
		int i;
		for (Integer in : list_int) {
			for (i = 0; i < menuId.length; i++) {
				syEmpMenuPowerService.saveEmpMenuPower(in,Integer.valueOf(menuId[i]));
			}
			i = 0;
		}

		return "redirect:syEmpMenuPower/findEmp";
	}
	
}