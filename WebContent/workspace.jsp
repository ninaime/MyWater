<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>湖南省自来水公司营销管理信息系统</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/text.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/form.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/buttons.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/grid.css" type="text/css"
	media="screen" title="no title" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css" type="text/css"
	media="screen" title="no title" />
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css" type="text/css"
	media="screen" title="no title">
</head>

<body>
<div id="wrapper">
<jsp:include page="/head.jsp"></jsp:include>
<!-- #header -->
<div id="masthead">
</div>
<!-- #masthead -->
<div id="content" class="xgrid">
  <div id="welcome" class="x4">
    <p><strong>
	  <a href="./pages/text.jsp">欢迎回来,${user.empname}</a></strong><br/>
	</p>
		  <!-- 
		  <table class="data info_table">
			<tbody>
			<tr>
			  <td class="value right">${mainDto.cuser }</td>
			  <td class="full"><a href="javascript:getUserView();">本月新增用户数</a></td>
			</tr>
			<tr>
			  <td class="value right">${mainDto.trd["COUNT"] }</td>
			  <td class="full"><a href="javascript:getReadView();">本月应抄表数</a></td>
			</tr>
			<tr>
			  <td class="value right">${mainDto.trd["NEWCOUNT"] }</td>
			  <td class="full"><a href="javascript:getReadView();">本月实抄表数</a></td>
			</tr>
			<tr>
			  <td class="value right">${mainDto.trd["SUM"] }吨</td>
			  <td class="full"><a href="javascript:getWaterView();">本月用水量</a></td>
			</tr>
			<tr>
			  <td class="value right">${mainDto.sumBill }元</td>
			  <td class="full"><a href="javascript:getPayView();">本月应收水费</a></td>
			</tr>
			<tr>
			  <td class="value right">${mainDto.sumPay }元</td>
			  <td class="full"><a href="javascript:getPayView();">本月实收水费</a></td>
			</tr>
		</tbody>
	    </table>
	   	-->
	</div>
	<jsp:include page="/foot.jsp"></jsp:include><!-- #footer -->
  </div>
</div>
</body>
<!-- #wrapper -->
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
<script src="${pageContext.request.contextPath}/js/main/main.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		Dashboard.init();
		init();
	});
</script>
</html>