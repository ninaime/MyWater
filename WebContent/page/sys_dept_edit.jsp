<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	  <h2>添加/修改部门</h2>
	  <div class="form label-inline uniform">
		<form method="post" onsubmit=""
		action="${pageContext.request.contextPath}/SyDept/updDept?id=${syDept.id}" >
		  <div class="field">
			<label for="id">部门ID</label> <input id="id" name="id" size="50"
			type="text" class="medium" disabled="disabled" value="${syDept.id}" />
		  </div>
		  <div class="field">
			<label for="name">部门名称</label> <input id="name" name="deptname"
			size="50" type="text" class="medium" value="${syDept.deptname}" />
		  </div>
		  <div class="field">
			<label for="description">备注</label>
			<textarea rows="7" cols="50" id="description" name="remark">${syDept.remark}</textarea>
		  </div>
		  <div class="buttonrow">
			<button class="btn" type="submit">保存</button>
			<button class="btn btn-grey" onClick="history.back(-1);">返回</button>
		  </div>
		</form>
	  </div>
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
</script>

</body>

</html>
