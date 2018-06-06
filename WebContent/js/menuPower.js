

function load(mlist){
	var arr=mlist.split(",");
	
	for ( var i = 0; i < arr.length; i++) {
		var arrs=arr[i].split("X");
		
		if(arrs[2] == -1){
			var parent1=document.getElementById("-1");
			var li=document.createElement("li");
			li.innerHTML="<a href="+arrs[3]+">"+arrs[1]+"</a>";
			parent1.appendChild(li);
		}
		else if(arrs[2] == -2){
			var parent2=document.getElementById("-2");
			var li=document.createElement("li");
			li.innerHTML="<a href="+arrs[3]+">"+arrs[1]+"</a>";
			parent2.appendChild(li);
		}
		else if(arrs[2] == -3){
			var parent3=document.getElementById("-3");
			var li=document.createElement("li");
			li.innerHTML="<a href="+arrs[3]+">"+arrs[1]+"</a>";
			parent3.appendChild(li);
		}	
		else if(arrs[2] == -4){
			var parent4=document.getElementById("-4");
			var li=document.createElement("li");
			li.innerHTML="<a href="+arrs[3]+">"+arrs[1]+"</a>";
			parent4.appendChild(li);
		}
		else if(arrs[2] == -5){
			var parent5=document.getElementById("-5");
			var li=document.createElement("li");
			li.innerHTML="<a href="+arrs[3]+">"+arrs[1]+"</a>";
			parent5.appendChild(li);
		}
		else if(arrs[2] == -6){
			var parent6=document.getElementById("-6");
			var li=document.createElement("li");
			li.innerHTML="<a href="+arrs[3]+">"+arrs[1]+"</a>";
			parent6.appendChild(li);
			
		}
	}
}
