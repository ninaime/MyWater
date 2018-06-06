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
</head> 

<body> 
<div id="wrapper">
<jsp:include page="/head.jsp"></jsp:include><!-- #header -->	
  <div id="masthead">
    <div>
	  <span id="pagetitle"><a href="javascript:;">修改密码</a></span>
	  <span id="welcome_span">欢迎回来，${user.empname}</span>
    </div>
  </div> <!-- #masthead -->	
  <div id="content" class="xgrid">
  <form id="f" action="${pageContext.request.contextPath}/syEmpMenuPower/updEmpPwd" method="post" onsubmit="return ch()">
	<div class="x12">
	  <h2>修改密码</h2>
	  <div class="form label-inline uniform">
		<div class="field"><label for="id">员工姓名</label> <input id="id" name="fname" size="50" type="text" class="medium" disabled="disabled" value="${user.empname}" /></div>
		<div class="field"><label for="name">当前密码</label> <input id="pwd" name="lpwd" size="50" type="password" class="medium" />
		  <span  id = "checkResult"  ></span>
		</div>
		<div class="field"><label for="name">新密码</label> <input id="newpwd1" name="lnewpwd1" size="50" type="password" class="medium" /></div>
		<div class="field"><label for="name">确认新密码</label> <input id="newpwd2" name="lnewpwd2" size="50" type="password" class="medium" /></div>
		<div class="buttonrow">
		  <button class="btn" onclick="my_submit()">确定</button>  
		  <button class="btn btn-grey" onClick="history.back(-1);">返回</button>
		</div>
	  </div>	
	</div> <!-- .x12 -->
  </form>
  </div> <!-- #content -->
</div> <!-- #wrapper -->
<jsp:include page="/foot.jsp"></jsp:include><!-- #footer -->	

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

function my_submit(){
	document.f.submit();
}

var p = 0;
$(function(){
	//判断用户名是否存在
	$("input[name = lpwd]").blur(function(){
		var value = $(this).val();
		if(value.trim()!=""){
			$.ajax({
				type: "POST",
				dataType: "json",
	            url: "<%=request.getContextPath()%>/syEmpMenuPower/existsPwd",
	            data:{"pwd":value},
		            success:function(result){
	            	$("#checkResult").html(result.success);
	            	if(result.success == '<font color=\"green\">√</font>'){
	            		p=1;
	            	}else{
	            		p=0;
	            	}
	            },error:function(XMLHttpRequest, textStatus, errorThrown){
	            	p=0;
	            	alert("请求对象XMLHttpRequest: "+XMLHttpRequest);
	            	alert("错误类型textStatus: "+textStatus);
	            	alert("异常编号"+XMLHttpRequest.status);
	            	alert("执行步数"+XMLHttpRequest.readyState);
	            	alert("异常对象errorThrown: "+errorThrown);
				}
	 	    });	
		}else{
			p=0;
			$("#checkResult").html("<font color=\"red\">×  请输入密码</font>");
		}
	});
})


function ch(){
	var pwd=document.getElementById("pwd");
	var newpwd1=document.getElementById("newpwd1");
	var newpwd2=document.getElementById("newpwd2");
	if(p==0){
		alert("密码错误");
		return false;
	}else if(pwd.value == "" || pwd.value == null){
		alert("请输入旧密码");
		return false;
	}else if(newpwd1.value == "" || newpwd1.value == null){
		alert("请输入当前密码");
		return false;
	}else if(newpwd1.value != newpwd2.value){
		alert("两次密码不同");
		return false;
	}else{
		return true;
	}
}
</script>

</body> 
 
</html>
