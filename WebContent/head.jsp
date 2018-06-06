<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- #header -->
<body onload="load('${empMenu}')"> 
<div id="header">
  <div class="content_pad">
  	<h1><a href="${pageContext.request.contextPath}/workspace.jsp">湖南省自来水公司营销管理信息系统</a></h1>
	<ul id="nav">
	  <li class="nav_dropdown nav_icon">
		<a href="javascript:;"><span class="ui-icon ui-icon-wrench"></span>业扩工程</a>
		<div class="nav_menu">			
		  <ul id="-1"></ul>
 		</div> 
	  </li>
	  <li class="nav_dropdown nav_icon">
		<a href="javascript:;"><span class="ui-icon ui-icon-person"></span>用户管理</a>
		  <div class="nav_menu">			
			<ul id="-2"></ul>
		  </div> 
	  </li>
	  <li class="nav_dropdown nav_icon">
		<a href="javascript:;"><span class="ui-icon ui-icon-pencil"></span>抄表管理</a>
		<div class="nav_menu">			 
		  <ul id="-3"></ul>
		</div>
	  </li>
	  <li class="nav_dropdown nav_icon">
		<a href="javascript:;"><span class="ui-icon ui-icon-star"></span>收费管理</a>
		<div class="nav_menu">			
		  <ul id="-4"></ul>
		</div> 
	  </li>
	  <li class="nav_dropdown nav_icon">
		<a href="javascript:;"><span class="ui-icon ui-icon-script"></span>发票管理</a>
		<div class="nav_menu">			
	      <ul id="-5"></ul>
		</div> 
	  </li>
	  <li class="nav_dropdown nav_icon">
		<a href="javascript:;"><span class="ui-icon ui-icon-gear"></span>系统设置</a>
		<div class="nav_menu">			
		  <ul id="-6"></ul>
		</div>
	  </li>
	  <li class="nav_current nav_dropdown nav_icon_only">
		<a href="javascript:;">&nbsp;</a>
		<div class="nav_menu">
		  <ul>
			<li><a href="${pageContext.request.contextPath}/workspace.jsp">我的工作台</a></li>
			<li><a href="${pageContext.request.contextPath}/page/sys_pwd.jsp">修改密码</a></li>
			<li><a href="${pageContext.request.contextPath}/syEmpMenuPower/exit">退出系统</a></li>
		  </ul>
		</div> <!-- .menu -->
	  </li>
	</ul>
  </div> <!-- .content_pad -->
</div> 
  
<!-- #wrapper -->
<script src="/Water/js/menuPower.js"></script>
<script src="/Water/js/jquery/jquery-1.5.2.min.js"></script>
<script src="/Water/js/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script src="/Water/js/misc/excanvas.min.js"></script>
<script src="/Water/js/jquery/facebox.js"></script>
<script src="/Water/js/jquery/jquery.visualize.js"></script>
<script src="/Water/js/jquery/jquery.dataTables.min.js"></script>
<script src="/Water/js/jquery/jquery.tablesorter.min.js"></script>
<script src="/Water/js/jquery/jquery.uniform.min.js"></script>
<script src="/Water/js/jquery/jquery.placeholder.min.js"></script>
<script src="/Water/js/widgets.js"></script>
<script src="/Water/js/dashboard.js"></script>
<script src="/Water/js/main/main.js"></script>
</body>