function ajax(json){
	if(!json.url)
	{
		alert('你不是捣乱吗？');
		return;
	}
	json.data=json.data || {};
	json.type=json.type || 'get';
	json.time=json.time || '3000';
	
	var timer=null;
		//创建一个ajax对象
		if (window.XMLHttpRequest) {
			var oAjax=new XMLHttpRequest();
		} else{
			//兼容ie低版本
			var oAjax=new ActiveXObject('Microsoft.XMLHTTP');
		}
		
		switch(json.type.toLowerCase()){
			case 'get':
				oAjax.open('GET',json.url+'?'+str2Json(json.data),true);
				oAjax.send();
			break;
			case 'post':
				oAjax.open('POST',json.url,true);
				//设置一个请求头
				oAjax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
				oAjax.send(str2Json(json.data));
			break;
		}
		//监控状态
		oAjax.onreadystatechange=function(){
			if(oAjax.readyState==4)
			{
				//请求完成执行的函数
				json.complete&&json.complete();
				if(oAjax.status>=200&&oAjax.status<300 ||oAjax.status==304){
					json.success && json.success(oAjax.responseText);
				}else{
					json.error && json.error(oAjax.status);
				}
				clearTimeout(timer);
			}
		};
		timer=setTimeout(function(){
			alert('服务器超时！');
			oAjax.onreadystatechange=null;
		},json.time);
	};
	function str2Json(json){
		json.t=Math.random();//加随机数
		var arr=[];
		for(var name in json){
			arr.push(name+'='+json[name]);
		}
		return arr.join('&');
	};
