<%@ page import="model.SyMenu"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"> 
 
<head> 
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" /> 
	<title>湖南省自来水公司营销管理信息系统</title> 
	
	<link rel="stylesheet" href="../css/reset.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/text.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/form.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/buttons.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/grid.css" type="text/css" media="screen" title="no title" />	
	<link rel="stylesheet" href="../css/layout.css" type="text/css" media="screen" title="no title" />	
	
	<link rel="stylesheet" href="../css/ui-darkness/jquery-ui-1.8.12.custom.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/plugin/jquery.visualize.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/plugin/facebox.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/plugin/uniform.default.css" type="text/css" media="screen" title="no title" />
	<link rel="stylesheet" href="../css/plugin/dataTables.css" type="text/css" media="screen" title="no title" />
	
	<link rel="stylesheet" href="../css/custom.css" type="text/css" media="screen" title="no title">

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
  </div> <!-- #masthead -->	
  <div id="content" class="xgrid">
	<div class="x12">
	  <h2>设置菜单权限</h2>
	  <div class="form label-inline uniform xgrid">
		<div class="field">
		  <span class="bold">正在设置以下员工的菜单权限</span> <br/>
		  <span class="red">注意：你正在编辑多个员工的菜单权限，不会显示这些员工的原有权限。
		    <br/>仅仅在只编辑一个员工时，才会显示该员工的原有权限。
		  </span>
		</div>
		<c:if test="${auxiliary == 2}">
		  <div class="field">
			<textarea class="medium" disabled="disabled" style="width:100%;height:50px;" id="tx">
			  <c:forEach items="${emplist}" var="e">${e.empname},</c:forEach>
			</textarea>
		  </div>
		</c:if>
		<c:if test="${auxiliary == 1}">
		  <div class="field">
		    <textarea class="medium" disabled="disabled" style="width:100%;height:50px;" id="tx">
		      ${emp.empname}
			</textarea>
		  </div>
		</c:if>
				
		<div class="portlet x4">
		  <div class="controlset field">
			<span class="label">收费管理</span>
			<div class="controlset-pad">
			  <c:forEach items="${menulist}" var="m">
				<c:if test="${m.parent == -4 || m.parent == -5}">
				  <c:if test="${auxiliary == 1}">
					<input type="checkbox" name="a" value="${m.id}" ${fn:contains(list_empmenuid,m.id) == true ? "checked" : ""}/>
					<label for="check2">${m.menuname}</label><br />
				  </c:if>
				  <c:if test="${auxiliary == 2}">
					<input type="checkbox" name="b" value="${m.id}"/>
					<label for="check2">${m.menuname}</label><br />
				  </c:if>
				</c:if>
			  </c:forEach>
			</div>
		  </div>
		</div>
		<div class="portlet x4">
		  <div class="controlset field">
			<span class="label">业扩工程</span>
			<div class="controlset-pad">
			  <c:forEach items="${menulist}" var="m">
				<c:if test="${m.parent == -1}">
				  <c:if test="${auxiliary == 1}">
					<input type="checkbox" name="a" value="${m.id}" ${fn:contains(list_empmenuId,m.id) == true ? "checked" : ""}/>
					<label for="check2">${m.menuname}</label><br />
				  </c:if>
				  <c:if test="${auxiliary == 2}">
				    <input type="checkbox" name="b" value="${m.id}"/>
				    <label for="check2">${m.menuname}</label><br />
				  </c:if>
				</c:if>
			  </c:forEach>
			</div>
		  </div>
		</div>
		<div class="portlet x4">
		  <div class="controlset field">
			<span class="label">用户管理</span>
			<div class="controlset-pad">
			  <c:forEach items="${menulist}" var="m">
				<c:if test="${m.parent == -2}">
				  <c:if test="${auxiliary == 1}">
					<input type="checkbox" name="a" value="${m.id}" ${fn:contains(list_empmenuid,m.id)== true ? "checked" : ""}/>
					<label for="check2">${m.menuname}</label><br />
				  </c:if>
				  <c:if test="${auxiliary == 2}">
					<input type="checkbox" name="b" value="${m.id}"/><label for="check2">${m.menuname}</label><br />
				  </c:if>
				</c:if>
			  </c:forEach>
			</div>
		  </div>
		</div>
		<div class="portlet x4">
		  <div class="controlset field">
			<span class="label">抄表管理</span>
			  <div class="controlset-pad">
				<c:forEach items="${menulist}" var="m">
				  <c:if test="${m.parent == -3}">
					<c:if test="${auxiliary == 1}">
					  <input type="checkbox" name="a" value="${m.id}" ${fn:contains(list_empmenuid,m.id)==true ? "checked" : ""}/>
					  <label for="check2">${m.menuname}</label><br />
					</c:if>
					<c:if test="${auxiliary == 2}">
					  <input type="checkbox" name="b" value="${m.id}"/><label for="check2">${m.menuname}</label><br />
					</c:if>
				  </c:if>
				</c:forEach>
			  </div>
			</div>
		  </div>
		  <div class="portlet x4">
			<div class="controlset field">
			  <span class="label">系统管理</span>
			  <div class="controlset-pad">
				<c:forEach items="${menulist}" var="m">
				  <c:if test="${m.parent == -6}">
					<c:if test="${auxiliary == 1}">
					  <input type="checkbox" name="a" value="${m.id}" ${fn:contains(list_empmenuId,m.id)==true ? "checked" : ""}/>
					  <label for="check2">${m.menuname}</label><br />
					</c:if>
					<c:if test="${auxiliary == 2}">
					  <input type="checkbox" name="b" value="${m.id}"/>
					  <label for="check2">${m.menuname}</label><br />
					</c:if>
				  </c:if>
				</c:forEach>
			  </div>
			</div>
		  </div>
		  <div class="buttonrow">
			<button class="btn" onclick="con('${auxiliary}')">保存</button>  
			<button class="btn btn-grey" onClick="history.back(-1);">返回</button>
		  </div>
	  </div>
	</div> <!-- .x12 -->	
  </div> <!-- #content -->
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
<script src="../js/dashboard.js"></script>

<script type="text/javascript">
	
$(document).ready ( function () 
{
	Dashboard.init ();		
});

function con(auxiliary){
	if(auxiliary == 1){
		var b=document.getElementsByName("a");
		var tx=document.getElementById("tx");
		
		var s="";
		for ( var i = 0; i < b.length; i++) {
			if(b[i].checked == true){
				s=s+b[i].value+",";
			}
		}
		alert("保存成功");
		location.href="updEmpMenuPowers?s="+s+"&tx="+tx.value;
	}else if(auxiliary == 2){
		var b=document.getElementsByName("b");
		var tx=document.getElementById("tx");
		
		var s="";
		for ( var i = 0; i < b.length; i++) {
			if(b[i].checked == true){
				s=s+b[i].value+",";
			}
		}
		alert("保存成功");
		location.href="updEmpMenuPowers?s="+s+"&tx="+tx.value;
	}
}
</script>

</body> 
 
</html>
