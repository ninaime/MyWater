<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        body{background:none;background-color:white;overflow:hidden;}
    </style>
</head>
<body onload="window.loaded=true;if(window.startup)window.startup();">
<iframe width="100%" height="2000" frameborder="0" src="about:blank" ></iframe>
<script type="text/javascript">
function init(arg){
    if(arg==null)return;
    window.pwin    = arg;
	window.options = arg.showWindow_options;
    window.frames[0].location = options.url;
}
init(window.dialogArguments);
</script>
</body>
</html>
