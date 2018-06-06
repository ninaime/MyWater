var flag=true;//标记
//设置定时器,
var viewTime= setInterval(changeView, 5000);
//显示2种图形,第一个显示,第二个则隐藏,反之亦然
function changeView(){
	if(flag){
		$(".visualize-area").hide("slow");
		$(".visualize-bar").show("slow");
		flag=false;
	}else{
		flag=true;
		$(".visualize-bar").hide("slow");
		$(".visualize-area").show("slow");
	}
}
//清除定时器
var stop=function(){
	clearInterval(viewTime);
};
//开启定时器
var start=function (){
	viewTime= setInterval(changeView, 5000);
}
//非我写的方法,是从dashboard.js中复制过来,修改了部分代码
var myDashboard = function ()
{
	var chartColors = ['#F90','#333', '#555', '#111','#002646','#999','#bbb','#ccc','#eee'];

	return { init: init };
	
	function init (type)
	{		
		$('*[rel=facebox]').facebox ();
		$('.datatable').dataTable ();
		$('.uniform').find ('input, select').uniform ();
		$('input, textarea').placeholder ();
		
		$("#view").each(function() 
		{		
			chartType = type; 
			var chart_width = $(this).parent ().width () * .92;
			
			$(this).hide ().visualize({		
				type: chartType,	// 'bar', 'area', 'pie', 'line'
				width: chart_width,
				height: '240px',
				colors: chartColors,
				textColors:'#ff6666'
			});				
		});
	}	
}();
//初始化
var init=function (){
	//首先判断,是否存在这2个图形
	if($(".visualize-bar")){
		$(".visualize-bar").remove();
	}
	if($(".visualize-area")){
		$(".visualize-area").remove();
	}
	//初始化是生成2中图形
	myDashboard.init("bar");
	myDashboard.init("area");
	//隐藏掉一种
	$(".visualize-area").hide();
	//给2个图形添加鼠标悬浮离开事件
	$(".visualize-bar").mouseover(stop);
	$(".visualize-bar").mouseout(start);
	$(".visualize-area").mouseover(stop);
	$(".visualize-area").mouseout(start);
};
//生成用户的图形
var getUserView =function(){
	$("#caption").html("新增用户统计表");
	$.post("/Water/main/ajax_selUser",{},function (data){
		var list = eval("(" + data + ")");
		$("#tbody").html("");
		//查找月份的节点,并清空
		$("#monthId").html("<td>&nbsp;</td>");
		var monthTr=document.getElementById("monthId");
		
		var tr = document.createElement("tr");
		var th=document.createElement("th");
		th.innerHTML="人";
		tr.appendChild(th);
		for ( var i = 0; i < list.length; i++) {
			//添加每个月的数据
			var td=document.createElement("td");
			td.innerHTML=list[i].COUNT;
			tr.appendChild(td);
			//重新添加月份
			var th= document.createElement("th");
			th.innerHTML=list[i].CREATEDATE;
			monthTr.appendChild(th);
		}
		$("#tbody").html(tr);
		init();
	});
};
//生成用水的图形
var getWaterView=function (){
	$("#caption").html("用水统计表");
	$.post("/Water/main/ajax_selRead",{},function (data){
		var list = eval("(" + data + ")");
		$("#tbody").html("");
		//查找月份的节点,并清空
		$("#monthId").html("<td>&nbsp;</td>");
		var monthTr=document.getElementById("monthId");
		
		var tr = document.createElement("tr");
		var th=document.createElement("th");
		th.innerHTML="吨";
		tr.appendChild(th);
		for ( var i = 0; i < list.length; i++) {
			//添加每个月的数据
			var td=document.createElement("td");
			td.innerHTML=list[i].SUM;
			tr.appendChild(td);
			//重新添加月份
			var th= document.createElement("th");
			th.innerHTML=list[i].READDATE;
			monthTr.appendChild(th);
		}
		$("#tbody").html(tr);
		init();
	});
};

//生成缴费情况的图形
var getPayView =function (){
	$("#caption").html("收费情况统计表");
	$.post("/Water/main/ajax_selPay",{},function (data){
		
		$("#tbody").html("");
		//查找月份的节点,并清空
		$("#monthId").html("<td>&nbsp;</td>");
		var monthTr=document.getElementById("monthId");
		//获取到数据之后改变该tbody下面的数据
		var split=data.split(";");
		var list = eval("(" + split[0] + ")");
		var tr = document.createElement("tr");
		var th=document.createElement("th");
		th.innerHTML="实收水费";
		tr.appendChild(th);
		for ( var i = 0; i < list.length; i++) {
			var td=document.createElement("td");
			td.innerHTML=list[i].GSUM;
			tr.appendChild(td);
			//重新添加月份
			var th= document.createElement("th");
			th.innerHTML=list[i].PAYDATE;
			monthTr.appendChild(th);
		}
		var list1 = eval("(" + split[1] + ")");
		var tr1 = document.createElement("tr");
		var th1=document.createElement("th");
		th1.innerHTML="应收水费";
		tr1.appendChild(th1);
		for ( var i = 0; i < list1.length; i++) {
			var td=document.createElement("td");
			td.innerHTML=list1[i].GSUM;
			tr1.appendChild(td);
		}
		//绑定数据到tbody中去
		$("#tbody").html(tr1);
		document.getElementById("tbody").appendChild(tr);
		init();
	});
};
//生成抄表情况的图形
var getReadView =function (){
	$("#caption").html("抄表情况统计表");
	$.post("/Water/main/ajax_selRead",{flag:0},function (data){
		
		$("#tbody").html("");
		//查找月份的节点,并清空
		$("#monthId").html("<td>&nbsp;</td>");
		var monthTr=document.getElementById("monthId");
		//获取到数据之后改变该tbody下面的数据
		var split=data.split(";");
		var list = eval("(" + split[0] + ")");
		var tr = document.createElement("tr");
		var th=document.createElement("th");
		th.innerHTML="应抄表数";
		tr.appendChild(th);
		for ( var i = 0; i < list.length; i++) {
			var td=document.createElement("td");
			td.innerHTML=list[i].COUNT;
			tr.appendChild(td);
			//重新添加月份
			var th= document.createElement("th");
			th.innerHTML=list[i].READDATE;
			monthTr.appendChild(th);
		}
		//添加第二个tr节点,实抄表数的各个月的数据
		var list1 = eval("(" + split[1] + ")");
		var tr1 = document.createElement("tr");
		var th1=document.createElement("th");
		th1.innerHTML="实抄表数";
		tr1.appendChild(th1);
		for ( var i = 0; i < list1.length; i++) {
			var td=document.createElement("td");
			td.innerHTML=list1[i].COUNT;
			tr1.appendChild(td);
		}
		$("#tbody").html(tr1);
		document.getElementById("tbody").appendChild(tr);
		//重新绘制
		init();
	});
};
