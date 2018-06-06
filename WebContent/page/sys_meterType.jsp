<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>湖南省自来水公司营销管理信息系统</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" type="text/css"
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
	  <span id="pagetitle"><a href="javascript:;">水表型号设置</a></span> 
	  <span id="welcome_span">欢迎回来，${user.empname}</span>
	</div>
  </div>
  <!-- #masthead -->
  <div id="content" class="xgrid">
	<div class="x12">
  	  <h2>水表型号设置</h2>
 	  <p>
		<button class="btn-icon btn-plus"
		  onclick="window.location.href='${pageContext.request.contextPath}/page/sys_meterType_add.jsp'">
		  <span></span>添加水表型号
		</button>
	  </p>
 	  <table class="data display">
	  <thead>
		<tr>
	 	  <th>水表型号ID</th>
		  <th>水表型号</th>
		  <th>设备口径</th>
		  <th>最大表码</th>
 		  <th>下限设置</th>
		  <th>周检年限</th>
		  <th>备注</th>
		  <th></th>
		</tr>
	  </thead>
 	  <tbody>
	    <c:forEach items="${list}" var="b">
		  <tr class="odd gradeX">
		 	<td>${b.id}</td>
			<td>${b.metertypename}</td>
			<td>${b.aperture}</td>
			<td>${b.mavvalue}</td>
			<td>${b.minvalue}</td>
			<td>${b.life}</td>
			<td>${b.remark}</td>
			<td class="center">
			  <button class="btn-icon btn-small btn-blue btn-star"
			    onClick="location='${pageContext.request.contextPath}/syMetertype/findById?id=${b.id}';">
			    <span></span>修改
			  </button> 
			  <a href="javascript:delMetertype('${b.id}')" 
			  class="btn-icon btn-small btn-red btn-cross"><span></span>删除</a>
			</td>
		  </tr>
		</c:forEach>
	  </tbody>
	  <c:choose>
   		<c:when test="${page.pages==1}">
   		       首页
   		       上一页
   		  <a href="../SyArea/findAll?pages=${page.pages+1}">下一页</a>
   		  <a href="../SyArea/findAll?pages=${page.last}">末页</a>
   		</c:when>
   		<c:when test="${page.pages==page.last}">
   		  <a href="../SyArea/findAll?pages=1">首页</a>
   		  <a href="../SyArea/findAll?pages=${page.pages-1}">上一页</a>
   			下一页
   			末页
   		  </c:when>
   		  <c:otherwise>
   			<a href="../SyArea/findAll?pages=1">首页</a>
   			<a href="../SyArea/findAll?pages=${page.pages-1}">上一页</a>
   			<a href="../SyArea/findAll?pages=${page.pages+1}">下一页</a>
   			<a href="../SyArea/findAll?pages=${page.last}">末页</a>
   		  </c:otherwise>
   		</c:choose>		
   	    <form action="${pageContext.request.contextPath}/syMetertype/findAll" method="post">
   		       当前是第<input type="text" name="page" value="${page.pages}" size="2"/>页
   		  <input type="submit" value="Go"/>
   		</form>
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
		
var delMetertype = function(x) {
	showDialog("确认删除？", function() {
		window.location.href = "<%=request.getContextPath()%>/syMetertype/delMetertype?id=" + x;
	}, "xxx");
};
</script>

</body>

</html>
