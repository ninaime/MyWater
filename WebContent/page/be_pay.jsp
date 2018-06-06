<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"> 
 
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

</head> 
 
<body> 

<div id="wrapper">	
<jsp:include page="../head.jsp"></jsp:include>  <!-- #header -->	
	
<div id="masthead">
  <div>
	<span id="pagetitle"><a href="javascript:;">交施工费</a></span>
	<span id="welcome_span">欢迎回来，${user.empname}</span>
  </div>
</div> <!-- #masthead -->	
	
<div id="content" class="xgrid">
  <div class="x12">
	<h2>正在等待【交施工费】的工单</h2>
	<table class="data display">
	  <thead>
		<tr>
		  <th width="120">工单号</th>
		  <th width="60">类型</th>
		  <th width="80">进度</th>
		  <th width="90">当前处理部门</th>
		  <th width="100">最后操作日期</th>
		  <th width="200">用户名称</th>
		  <th></th>
		</tr>
	  </thead>
	  <tbody>
	  	<c:if test="${page.sum==0 }">
		  <!-- 没有工单的情况 -->
		  <tr class="odd">
		 	<td colspan="7" align="center" style="line-height:260px;">
			      没有等待【交施工费】的工单
			</td>
		  </tr>
		</c:if>
		<c:forEach items="${list}" var="list">
		  <tr class="odd">
			<td><a href="/Water/order/orderInfo?id=${list.orderno}" target="orderInfo">${list.orderno}</a></td>
			<td>${list.ordername}</td>
			<td>${list.stepname }</td>
			<td>${list.deptname }</td>
			<td>${list.time}</td>
			<td>${list.username}</td>
			<td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = '/Water/order/payForm?id=${list.orderno}';"><span></span>处理</button></td>
		  </tr>
		</c:forEach>
	  </tbody>
	</table>
	<div class="page">
	  <c:choose>
   		<c:when test="${page.pages==1}">
   			首页
   			上一页
   		  <a href="../BeApply/PublicExpense?pages=${page.pages+1}">下一页</a>
   			<a href="../BeApply/PublicExpense?pages=${page.last}">末页</a>
   		  </c:when>
   		  <c:when test="${page.pages==page.last}">
   			<a href="../BeApply/PublicExpense?pages=1">首页</a>
   			<a href="../BeApply/PublicExpense?pages=${page.pages-1}">上一页</a>
   			下一页
   			末页
   		  </c:when>
   		  <c:otherwise>
   			<a href="../BeApply/PublicExpense?pages=1">首页</a>
   			<a href="../BeApply/PublicExpense?pages=${page.pages-1}">上一页</a>
   			<a href="../BeApply/PublicExpense?pages=${page.pages+1}">下一页</a>
   			<a href="../BeApply/PublicExpense?pages=${page.last}">末页</a>
   		  </c:otherwise>
   	  </c:choose>	
   	  <form action="${pageContext.request.contextPath}/BeApply/PublicExpense" method="post">
   		     当前是第<input type="text" name="pages" value="${page.pages}" size="2"/>页
   		<input type="submit" value="Go"/>
   	  </form>
	</div>
  </div> <!-- .x12 -->
	
</div> <!-- #content -->
	
<jsp:include page="../foot.jsp"></jsp:include><!-- #footer -->
	
</div> <!-- #wrapper -->

<script src="${pageContext.request.contextPath}/js/menuPower.js"></script>
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

$(document).ready ( function () 
{
	Dashboard.init ();		
});

</script>

</body> 
 
</html>