<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html> 
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" /> 
<title>湖南省自来水公司营销管理信息系统</title> 

	
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" 
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/text.css" 
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/form.css" 
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/buttons.css" 
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/grid.css" 
	type="text/css" media="screen" title="no title" />	
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css" 
	type="text/css" media="screen" title="no title" />	
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ui-darkness/jquery-ui-1.8.12.custom.css" 
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugin/jquery.visualize.css" 
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugin/facebox.css"
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugin/uniform.default.css" 
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/plugin/dataTables.css" 
	type="text/css" media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css" 
	type="text/css" media="screen" title="no title">

<style type="text/css">
	a.metro {
		float:left; margin:4px 16px; font-size:20px; font-weight:bold;
		color:#FFFFFF;background-color:#666666;text-align:center;
	    line-height:100px;display:block;width:200px; vertical-align:middle;
	}a.metro:hover{
		background-color:#000033; text-decoration:none;
	}
	</style>
</head> 
 
<body > 

<div id="wrapper">
<jsp:include page="../head.jsp"></jsp:include>  <!-- #header -->	
<div id="masthead">
	<div>
		<span id="pagetitle"><a href="javascript:;">用户申请</a></span>
		<span id="welcome_span">欢迎回来，${user.empname}</span>
	</div>
</div> <!-- #masthead -->

<div id="content" class="xgrid">
	<div class="x12">
		<h2>用户申请</h2>
		<a class="metro" href="${pageContext.request.contextPath}/Order/findOrderNew">新户</a>
		<a class="metro" href="order/findOrderLoad1">分户</a>
		<a class="metro" href="order/findOrderLoad2">过户</a>
		<a class="metro" href="/Water/page/be__request4.jsp">代扣</a>
		<a class="metro" href="order/findOrderLoad3">换表</a>
		<a class="metro" href="order/findOrderLoad4">重签</a>
		<a class="metro" href="/Water/page/be__request7.jsp">销户</a>
		<a class="metro" href="order/selectOrder">工单</a>	
	</div> <!-- .x12 -->
</div> <!-- #content -->

<jsp:include page="../foot.jsp"></jsp:include>
<!-- #footer -->
	
</div> <!-- #wrapper -->
<script src="../js/menuPower.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery/jquery-1.5.2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/js/misc/excanvas.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery/facebox.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery/jquery.visualize.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery/jquery.tablesorter.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery/jquery.uniform.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery/jquery.placeholder.min.js"></script>
<script src="${pageContext.request.contextPath}/js/widgets.js"></script>
<script src="${pageContext.request.contextPath}/js/dashboard.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	Dashboard.init ();
});
</script>

</body> 
 
</html>