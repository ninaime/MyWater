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
	  <span id="pagetitle"><a href="javascript:;">抄表辖区设置</a></span> 
	  <span id="welcome_span">欢迎回来，${user.empname}</span>
	</div>
  </div>
  <!-- #masthead -->
  <div id="content" class="xgrid">
	<form action="${pageContext.request.contextPath}/syMetertype/addMetertype" 
	method="post" onsubmit="return checkFrom()">
	  <div class="x12">
 	  	<h2>添加/修改水表型号</h2>
		<div class="form label-inline uniform">
		  <div class="field">
		  <label for="id">水表型号ID</label> <input id="id" name="fname"
	      size="50" type="text" class="medium" disabled="disabled" value="自动生成" />
		  </div>
		  <div class="field">
		    <label for="name">水表型号</label> 
		    <input id="name" name="metertypename" size="50" type="text" 
		    class="medium" onblur="show()" />
	      </div>
		  <div class="field">
		    <label for="name">设置口径</label> 
		    <input id="aperture"name="aperture" size="50" type="text" 
		    class="medium" onblur="show2()" />
		  </div>
	  	  <div class="field">
	  	    <label for="name">最大表码</label> 
		    <input id="mavValue" name="mavvalue" size="50" type="text" 
		    class="medium" onblur="show3()" />
		  </div>
		  <!-- onblur="clnum2('mavValue')" -->
		  <div class="field">
		    <label for="name">下限设置</label> 
		    <input id="minValue" name="minvalue" size="50" type="text" 
		    class="medium" /> 吨
		  </div>
		  <div class="field">
		    <label for="name">周检年限</label> 
		    <input id="life" name="life"size="50" type="text" 
		    class="medium" onblur="show4()" /> 年
		  </div>
		  <div class="field">
		    <label for="description">备注</label>
		    <textarea rows="7" cols="50" id="remark" name="remark" onblur="show5()"></textarea>
		  </div>
		  <div class="buttonrow">
		    <button class="btn" type="submit" value="保存">保存</button>
		    <button class="btn btn-grey" onClick="history.back(-1);">返回</button>
		  </div>
	    </div>
	  </div>
	  <!-- .x12 -->
    </form>
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

function show() {
	var name = document.getElementById("name").value;
	var d = /^ND[0-9]{2}$/;
	if (d.test(name) == false) {
		alert("出错了");
	}	
}

function show2() {
	var m = /^\d{0,3}$/;
	var dd = document.getElementById("aperture").value;
	if (m.test(dd) == false) {
		alert("口径错了");
	}
}

function show3() {
	var ss = document.getElementById("mavValue").value;
	var a = /^9{0,5}$/;
	if (a.test(ss) == false) {
		alert("表码错了");
	}
}

function show4() {			
	var ee = document.getElementById("life").value;
	if (ee < 1 || ee > 12) {
		alert("只能填月份");
	}
}
		
function show5(){
	var rr=document.getElementById("remark").value;	
	if(rr =="" || rr==null){
		alert("备注不能为空");
	}
}
</script>

</body>

</html>
