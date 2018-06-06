<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
<style type="text/css">
	table.report tr { line-height:38px; }
	table.report th,table.report td.item{ background-color:#CCCCCC; }
	table.report .todo , table.report .cnt{ background-color:#99FFFF; }
	table.report tr.todo td.cnt { font-weight:bold; color:red; }
	table.report td.hover { cursor:pointer; }
	table.report td.hover { background-color:#FFFF99; }
</style>	
	

</head> 
 
<body> 

<div id="wrapper">	
<jsp:include page="../head.jsp"></jsp:include> <!-- #header -->	
<div id="masthead">
  <div>
	<span id="pagetitle"><a href="javascript:;">业扩工程进度</a></span>
	<span id="welcome_span">欢迎回来，${user.empname}</span>
  </div>
</div> <!-- #masthead -->	
	
<div id="content" class="xgrid" >
  <div class="x12">
	<h2>业扩工程进度</h2>
	<table class="report">
	  <thead>
	    <tr>
		  <th>进度</th>
		  <th width="100">新户</th>
		  <th width="100">分户</th>
		  <th width="100">过户</th>
		  <th width="100">代扣</th>
		  <th width="100">换表</th>
		  <th width="100">重签</th>
		  <th width="100">销户</th>
		  <th width="100">总数</th>
		</tr>
	  </thead>
	  <tbody>
	    <c:forEach items="${stepNameByidList}" var="list">
		  <tr>
			<td class="center item">0${list.id}${list.stepname}</td>
			<!-- 1 	--> 
			<% for(int is=1;is<=7;is++){%>
			<% request.setAttribute("is",is);%>
			<% request.setAttribute("i",1);%>
			<c:forEach items="${expandList}" var="elist">
			  <c:if test="${elist.type==is}">
			    <c:if test="${elist.step==list.id}">
				  <% request.setAttribute("i",2);%>
				  <td class="center num" x="${list.id},${is}">${elist.typecount}</td>
				</c:if>
			  </c:if>
			</c:forEach>
			<c:if test="${i==1}">
			  <td class="center num"></td>
			</c:if>
			<% } %>
			<% request.setAttribute("i",1);%>
			  <c:forEach items="${expandByidList}" var="elist">
			    <c:if test="${elist.step==list.id}">
				  <% request.setAttribute("i",2);%>
				  <td class="center cnt num" x="${list.id},-10">${elist.stepcount}</td>
				</c:if>	 	 	
			  </c:forEach>
			  <c:if test="${i==1}">
			  	<td class="center cnt num"></td>
			  </c:if>
		 	</tr>
		  </c:forEach>
		  <tr class="todo">
			<td class="center item">　 待办总数</td>
			<% for(int is=1;is<=7;is++){%>
			  <!-- 1 -->
			  <% request.setAttribute("is",is);%>
			  <% request.setAttribute("i",1);%>
			  <c:forEach items="${expandByTypeList}" var="elist">
				<c:if test="${elist.type==is}">
				  <% request.setAttribute("i",2);%>
				  <td class="center num" x="-10,${is}">${elist.typecount}</td>
				</c:if>
			  </c:forEach>
			  <c:if test="${i==1}">
			  	<td class="center num"></td>
			  </c:if>
			<% } %>
		  <td class="center cnt num" x="-10,-10">${typeCount}</td>
		  </tr>
		  <tr>
			<td class="center item">　 工单完成</td>
			  <% for(int is=1;is<=7;is++){%>
			    <% request.setAttribute("is",is);%>
				<% request.setAttribute("i",1);%>
				<c:forEach items="${expandByCGList}" var="elist">
				  <c:if test="${elist.type==is}">
				    <c:if test="${elist.step==list.id}">
				      <% request.setAttribute("i",2);%>
				      <td class="center num" x="0,${is}">${elist.typecount}</td>
				    </c:if>
				   </c:if>
				  </c:forEach>
				  <c:if test="${i==1}">
				 	<td class="center num"></td>
				  </c:if>
				<% } %>
				<% request.setAttribute("i",1);%>
				  <c:forEach items="${expandByidList}" var="elist">
					<c:if test="${elist.step==list.id}">
				  	  <% request.setAttribute("i",2);%>
				 	  <td class="center cnt num" x="0,-10">${elist.stepcount}</td>
				 	</c:if>	 	 	
				  </c:forEach>
				  <c:if test="${i==1}">
				    <td class="center cnt num"></td>
				  </c:if>
				</tr>
				<tr>
				  <td class="center item">　 工单终止</td>
					<% for(int is=1;is<=7;is++){%>
				 	  <% request.setAttribute("is",is);%>
				 	  <% request.setAttribute("i",1);%>
				 	  <c:forEach items="${expandByEndList}" var="elist">
				 	 	<c:if test="${elist.type==is}">
				 	 	  <c:if test="${elist.step==list.id}">
				 	 		<% request.setAttribute("i",2);%>
				 	 		<td class="center num" x="-1,${is}">${elist.typecount}</td>
				 	 	  </c:if>
				 		</c:if>
					  </c:forEach>
				 	  <c:if test="${i==1}">
				 	 	<td class="center num"></td>
				 	  </c:if>
				 	<% } %>
				 	
					<% request.setAttribute("i",1);%>
				 	<c:forEach items="${expandByidList}" var="elist">
				 	  <c:if test="${elist.step==list.id}">
				 	 	<% request.setAttribute("i",2);%>
				 	 	<td class="center cnt num" x="-1,-10">${elist.stepcount}</td>
				 	  </c:if>	 	 	
					</c:forEach>
				 	<c:if test="${i==1}">
				 	  <td class="center cnt num"></td>
				 	</c:if>
	 	</tr>
	  </tbody>
	</table>
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

<script src="../My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript">
	
$(document).ready ( function () 
{
	Dashboard.init ();
	$('.num').hover(function(){
		$(this).addClass('hover');
	},function(){
		$(this).removeClass('hover');
	}).click(function(){
		var s=this.getAttribute("x");
		var ss=s.split(",");
		
		if(!$(this).text())return;
		window.open('/Water/order/orders?stepId='+ss[0]+"&orderType="+ss[1]);
	});
});


</script>

</body> 
 
</html>