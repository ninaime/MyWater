/**
 * 		点击跳转到相关页面,URL为方法名称 ,路劲
 */
var count=function(url){
	var date= $("#date").val();
	window.location.href="/Water/sumreport/"+url+"?date="+date;
};
//生成按月统计中的月份
var createDate=function (rdate){
	var date= document.getElementById("date");;
	var d=new Date();
	var year= d.getFullYear();
	var month=d.getMonth()+2;
	for(var i=0;i<12;i++){
		if(--month<=0){
			year--;
			month=12;
		}
		var ym="";
		if(month<10){
			 ym=year+"0"+month;
		}else{
			ym=year+""+month;
		} 
		var option =new Option(ym,ym);
		if(ym==rdate){
			option.selected=true;
		}
		date.add(option);
	}
	
};
//生成按年统计中的年份
var createYear=function (rdate){
	var date= document.getElementById("date");;
	var d=new Date();
	var year= d.getFullYear();
	for(var i=0;i<5;i++){
		var option =new Option(year,year);
		if(year==rdate){
			option.selected=true;
		}
		date.add(option);
		--year;
	}
	
};