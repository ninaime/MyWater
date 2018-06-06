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
	  <span id="pagetitle"><a href="javascript:;">部门设置</a></span> 
	  <span id="welcome_span">欢迎回来，${user.empname}</span>
	</div>
  </div>
  
  <!-- #masthead -->
  <div id="content" class="xgrid">
	<div class="x12">
	  <h2>部门设置</h2>
	  <p>
		<button class="btn-icon btn-plus"
		onClick="location='${pageContext.request.contextPath}/page/sys_dept_add.jsp';">
		  <span></span>添加部门
		</button>
	  </p>
	  <table class="data display">
		<thead>
		  <tr>
			<th>部门ID</th>
			<th>部门名称</th>
			<th>备注</th>
			<th></th>
		  </tr>
		</thead>
	    <tbody>
	      <c:forEach items="${list}" var="d">
		    <tr class="odd gradeX">
		  	  <td>${d.id}</td>
		  	  <td>${d.deptname}</td>
		  	  <td>${d.remark}</td>
		  	  <td class="center">
				<button class="btn-icon btn-small btn-blue btn-star"
				onClick="location='${pageContext.request.contextPath}/SyDept/findById?id=${d.id}';">
			  	  <span></span>修改
			 	</button> <a href="javascript:delDept('${d.id}')"
				class="btn-icon btn-small btn-red btn-cross"><span></span>禁用</a>
		 	  </td>
			</tr>
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
<script src="../js/menuPower.js"></script>
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

var delDept = function(x) {
	showDialog("确认禁用？", function() {
		window.location.href = "<%=request.getContextPath()%>/SyDept/delDept?id=" + x;
	}, "xxx");
};
</script>

</body>

</html>
