<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>湖南省自来水公司营销管理信息系统</title>

<link rel="stylesheet" href="../css/reset.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="../css/text.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="../css/form.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="../css/buttons.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="../css/grid.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="../css/layout.css" type="text/css"
	media="screen" title="no title" />

<link rel="stylesheet"
	href="../css/ui-darkness/jquery-ui-1.8.12.custom.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="../css/plugin/jquery.visualize.css"
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="../css/plugin/facebox.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="../css/plugin/uniform.default.css"
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="../css/plugin/dataTables.css"
	type="text/css" media="screen" title="no title" />

<link rel="stylesheet" href="../css/custom.css" type="text/css"
	media="screen" title="no title">

</head>

<body onload="load('${empMenu}')">
<div id="wrapper">
  <jsp:include page="/head.jsp"></jsp:include>
  <!-- #header -->
  <div id="masthead">
	<div>
	  <span id="pagetitle"><a href="javascript:;">菜单权限</a></span> 
	  <span id="welcome_span">欢迎回来，${user.empname}</span>
	</div>
  </div>
  <!-- #masthead -->
  <div id="content" class="xgrid">
    <div class="x12">
	  <h2>菜单权限</h2>
	  <p>
		<div style="float: left;">
		  <button class="btn-icon btn-star"onClick="ch()">
		 	<span></span>批量设置菜单权限
		  </button>
		</div>
		<div style="float: right;">部门
		  <select onchange="on()" id="type" class="medium" name="deptname">
			<option selected="selected" value="">所有部门</option>
			<c:forEach items="${deptlist}" var="b">
			  <c:if test="${b.deptname != '系统管理员'}">
			    <option value="${b.deptname}" ${deptname == b.deptname ? "selected" : ""}>${b.deptname}</option>
			  </c:if>
			</c:forEach>
		  </select>
		</div>
	  </p>
	  <table class="data display">
		<thead>
		  <tr>
			<th><input type="checkbox"
			onChange="$(':checkbox').attr('checked', this.checked)" /></th>
			<th>员工ID</th>
			<th>员工工号</th>
			<th>员工姓名</th>
			<th>所属部门</th>
			<th>备注</th>
			<th></th>
		  </tr>
		</thead>
		<tbody>
		  <c:forEach items="${emplist}" var="v">
			<c:if test="${v.id > 0}">
			  <tr class="odd gradeX">
				<td><input type="checkbox" name="e" value="${v.id}"/></td>
				<td>${v.id}</td>
				<td>${v.empno}</td>
				<td>${v.empname}</td>
				<c:forEach items="${deptlist}" var="n">
				  <c:if test="${n.id==v.deptid}">
					<td>${n.deptname}</td>
				  </c:if>
				</c:forEach>
				<td>${v.remark}</td>
				<td class="center">
				  <button class="btn-icon btn-small btn-blue btn-star"
				  onClick="location='${pageContext.request.contextPath}/syEmpMenuPower/findEmpMenuPower?id=${v.id}';">
				    <span></span>设置菜单权限
				  </button>
				</td>
			  </tr>
			</c:if>
		  </c:forEach>
	  	</tbody>
	  </table>
  	</div>
  <!-- .x12 -->
  </div>
  <!-- #content -->
  <jsp:include page="/foot.jsp"></jsp:include>
  <!-- #footer -->
</div>

<!-- #wrapper -->
<script src="${pageContext.request.contextPath}/js/menuPower.js"></script>
<script src="../js/jquery/jquery-1.5.2.min.js"></script>
<script src="../js/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script src="../js/misc/excanvas.min.js"></script>
<script src="../js/jquery/facebox.js"></script>
<script src="../js/jquery/jquery.visualize.js"></script>
<script src="../js/jquery/jquery.dataTables.min.js"></script>
<script src="../js/jquery/jquery.tablesorter.min.js"></script>
<script src="../js/jquery/jquery.uniform.min.js"></script>
<script src="../js/jquery/jquery.placeholder.min.js"></script>
<script src="../js/widgets.js"></script>
<script src="../js/dashboard.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	Dashboard.init();
});
		
function on(){
	var deptName=document.getElementById("type").value;
	location.href="findEmpByLike?deptname="+deptname;
}
		
function ch(){
	var e=document.getElementsByName("e");
	var s="";
	for ( var i = 0; i < e.length; i++) {
		if(e[i].checked == true){
			s=s+e[i].value+",";
		}
	}
	if(s == ""){
		alert("请选中一个菜单设置");
		return false;
	}
	location.href="findEmpMenuPowers?s="+s;
}
</script>

</body>

</html>
