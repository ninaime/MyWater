<%@page import="model.BeOrder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"> 

<head>
<base href="http://localhost:8080/Water/">
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
  #t_meterCount { text-align:right; width:30px; vertical-align:middle; }
</style>
<script type="text/javascript">
function setMeter(){
  	var n = $('#t_meterCount').val();
	if(isNaN(n))return;    //不是数字
	if(n<=0||n>100)return; //不合理
	var rows = $('table.data tbody tr');
	if(rows.length == n)return; //行数相同
	if(rows.length<n){//需增加行数
		for(var i=rows.length;i<n;i++){
			$('table.data tbody').append('<tr><td>' + (i+1) +
				'</td><td><input name="list['+i+'].userName" /></td><td><input name="list['+i+'].phone"/></td><td><input name="list['+i+'].smsphone"/></td><td><input name="list['+i+'].address"/></td><td></td></tr>');
		}
		
	}else{//需减少行数
		$('table.data tbody tr:gt('+(n-1)+')').remove();
	}
}
</script>
</head> 
 
<body> 
<div id="wrapper">
  <jsp:include page="../head.jsp"></jsp:include> <!-- #header -->	
  <div id="masthead">
	<div>
	  <span id="pagetitle"><a href="javascript:;">用户申请</a></span>
	  <span id="welcome_span">欢迎回来，${user.empname}</span>
	</div>
  </div> <!-- #masthead -->	
  
  <form action="order/updateOrderAndOrderUser">
  <div id="content" class="xgrid">
	<div class="x12">
	  <h2>
		用户申请 - 办理新开户业务
		<a style="float:right" href="javascript:history.back(-1);">返回</a>
	  </h2>
	<div class="tab_container">
	<ul class="tabs"> 
	  <li><a href="#tab1">申请表</a></li> 
	  <li><a href="#tab2">新户详细表</a></li> 
	</ul> 
	<div class="tab_content_container"> 
	  <div id="tab1" class="tab_content">
		<table style="width:100%">
		  <thead>
		  	<tr>
			  <th width="60"></th>
			  <th width="220"></th>
			  <th width="60"></th>
			  <th></th>
			<tr>
		  </thead>
		  <tbody>
			<tr>
			  <td>用户名称</td>
			  <td><input name="userName" value="${order.username}"/></td>
			  <td>用户类型</td>
			  <td>
			  <select style="width:158px;" name="userType">
				<option value="-1">请选择...</option>
				
				  <option value="公户" selected="selected">公户</option>
				  <option value="私户">私户</option>
				  
				  <option value="公户">公户</option>
				  <option value="私户" selected="selected">私户</option>
			  </select>
			  </td>
			</tr>
			<tr>
			  <td>联系人</td>
			  <td><input name="linkman" value="${order.linkman }"/></td>
			  <td>联系电话</td>
			  <td><input name="phone" value="${order.phone }"/></td>
			</tr>
			<tr>
			  <td>用户地址</td>
			  <td colspan="3"><input name="address" value="${order.address }" size="68" /></td>
			</tr>
			<tr>
			  <td>用水量</td>
			  <td><input name="maxAmount" value="${order.maxAmount }"/></td>
			  <td>申请表径</td>
			  <td>
			  <select style="width:158px;" name="meterTypeId">
				<option value="-1">请选择...</option>
				  <c:forEach items="${Sy_metertypes}" var="Sy_metertype">
					<c:choose>
					  <c:when test="${Sy_metertype.id==order.meterTypeId}">
						<option value="${Sy_metertype.id}" selected="selected">${Sy_metertype.meterTypeName}</option>
					  </c:when>
					  <c:otherwise>
						<option value="${Sy_metertype.id}">${Sy_metertype.meterTypeName}</option>
					  </c:otherwise>
					</c:choose>
				  </c:forEach>
				</select>
				</td>
			  </tr>
			  <tr>
				<td>房屋层次</td>
				  <td><input name="houseHeight" value="${order.houseHeight}"/></td>
				  <td>接水用途</td>
				  <td><input name="usetarget" value="${order.usetarget}"/></td>
			    </tr>
			  <tr>
				<td>备注说明</td>
				<td colspan="3"><input name="userRemark" value="${order.userRemark}" size="68" /></td>
			  </tr>
			</tbody>
		  </table>
		</div>
		<div id="tab2" class="tab_content">
		  申请装表表数 <input id="t_meterCount" name="meterCount" value="${order.meterCount}" />
		  <button class="btn btn-small" type="button" onClick="setMeter();">确定</button>
		  <div id="meters">
			<table class="data display">
			  <thead>
				<tr>
				  <th width="30">序号</th>
				  <th width="160">姓名</th>
				  <th width="160">电话</th>
				  <th width="160">短信号码</th>
				  <th width="160">地址</th>
				  <th></th>
				</tr>
			  </thead>
			  <tbody>
				<%int i=1; %>
				<c:forEach items="${orderusers}" var="orderuser">
				  <tr>
					<td><%=i %><input type="hidden" name="list[<%=i-1 %>].id" value="${orderuser.id}"/></td>
					<td><input name="list[<%=i-1 %>].userName" value="${orderuser.userName}"/></td>
					<td><input name="list[<%=i-1 %>].phone" value="${orderuser.phone}"/></td>
					<td><input name="list[<%=i-1 %>].smsphone" value="${orderuser.smsphone}"/></td>
					<td><input name="list[<%=i-1 %>].address" value="${orderuser.address}"/></td>
					<td></td>
				  </tr>
				  <%i++; %>
				</c:forEach>
			  </tbody>
			</table>
		  </div>
		</div>
	  </div>
	</div>
  </div> <!-- .x12 -->
  <div class="centerButtons">
	<button class="btn" type="submit">办理</button>
	<button class="btn btn-grey" type="button" onClick="history.back(-1);">返回</button>
	<input type="hidden" name="lasteditEmp" value="${user.id}"/>
	<input type="hidden" name="orderNo" value="${order.orderNo}"/>
	<input type="hidden" name="count" value="${order.meterCount}">
  </div>
  </div> <!-- #content -->
  </form>
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
	
	//选项卡初始化
	$('.tab_container').tabs ();	
});

</script>

</body> 

</html>