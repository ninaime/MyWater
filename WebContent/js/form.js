var payForm=function(){			//交施工费
	var id=document.getElementById("sum").value;
	var d=document.getElementById("s");//.innerHTML="第"+(i+1)+"行,正则表达式匹配失败";
	d.innerHTML="";
	for(var i=0;i<id;i++){
		var reg=/^\d{1,9}(|.0)$/;
		var projectMoney=document.getElementsByName("orderuser["+i+"].projectMoney")[0].value;
		if(reg.test(projectMoney)==false){
			d.innerHTML="第"+(i+1)+"行,应收收金额只能是数字";
			return false;
		}
		//实收金额
		var realMoney=document.getElementsByName("orderuser["+i+"].realMoney")[0].value;
		if(reg.test(realMoney)==false){
			d.innerHTML="第"+(i+1)+"行,实收金额只能是数字";
			return false;
		}
		
		//发票号
		var invoiceno=document.getElementsByName("orderuser["+i+"].invoiceno")[0].value;
		var reg1=/^B\d{3,8}$/;
		if(reg1.test(invoiceno)==false){
			d.innerHTML="第"+(i+1)+"行,发票号格式错误";
			return false;
		}
	}
	return true;
};

var workingForm=function(){		//施工竣工
	var id=document.getElementById("sum").value;
	var d=document.getElementById("s");//.innerHTML="第"+(i+1)+"行,正则表达式匹配失败";
	d.innerHTML="";
	for(var i=0;i<id;i++){
		//表身码
		var reg1=/^\w{1,16}$/;
		var meterName=document.getElementsByName("orderuser["+i+"].meterName")[0].value;
		if(reg1.test(meterName)==false){
			d.innerHTML="第"+(i+1)+"行,表身码只能字母和数字";
			//d.BgColer=red;
			return false;
		}
		//最大表码值
		var reg=/^\d{1,4}$/;
		var maxValue=document.getElementsByName("orderuser["+i+"].maxValue")[0].value;
		if(reg.test(maxValue)==false){
			d.innerHTML="第"+(i+1)+"行,最大表码值只能是1-4位数字";
			//d.BgColer=red;
			return false;
			}
		//起始码
		var startValue=document.getElementsByName("orderuser["+i+"].startValue")[0].value;
		if(reg.test(startValue)==false){
			d.innerHTML="第"+(i+1)+"行,起始码只能是1-4位数字";
			//d.BgColer=red;
			return false;
			}
		//水表厂家
		var meterFactory=document.getElementsByName("orderuser["+i+"].meterFactory")[0].value;
		if(meterFactory==""){
			d.innerHTML="第"+(i+1)+"行,水表厂家不能为空";
			//d.BgColer=red;
			return false;
		}
	}
	return true;
};

var saveForm=function(){   		//档案存档
	var id=document.getElementById("sum").value;
	var reg=/^T\d{3,8}$/;
	for(var i=0;i<id;i++){
		var name=document.getElementsByName("orderuser["+i+"].docnum")[0].value;
		if(reg.test(name)==true){
		}else{//innerHTML
			document.getElementById("s").innerHTML="第"+(i+1)+"行,正则表达式匹配失败";
			return false;
		};
	}
		return true;
};




$.validator.setDefaults({
	submitHanler: function(){
		
	}
	});

$.validator.setDefaults({
	submitHanler: function(){
	}
	});
$(document).ready(function(){
	$.validator.addMethod("quanxian",function(v){
		if(v==0){
			return false;
		}else{
			return true;
		}
	},"权限未定义");
	
	$("#abort").validate({
		rules : {
			abortCause:"required"
		},
		messages:{
			abortCause:"不能为空"
		}
	});
	
	
	$("#loginForm").validate({
		rules:{
			"user.u_true_name":"required",
			"user.u_role_id":{
				required:true,
				"quanxian":true
			}
			},
		messages:{
			"user.u_true_name":{
				required:"真实姓名不能为空"
			},
			"user.u_role_id":{
				required:"权限不为空"
			}
			}
	});
});

