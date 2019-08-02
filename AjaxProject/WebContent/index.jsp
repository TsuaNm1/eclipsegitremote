<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

	//js方式
	/*function register()
	{
		
		var mobile = document.getElementById("mobile").value;
		xmlHttpRequest = new XMLHttpRequest();
		
		//设置回调函数
		xmlHttpRequest.onreadystatechange=callBack ;
		
		
		xmlHttpRequest.open("post","MobileServelt",true);
		//没有文件上传
		xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		
		xmlHttpRequest.send("mobile="+mobile);
		
		
	}
	
	//接受服务端返回值
	function callBack(){
		
		if(xmlHttpRequest.readyState  ==4 &&xmlHttpRequest.status ==200){
			
			var data = xmlHttpRequest.responseText;
			if(data =="true"){
				alert("成功");
			}else{
				alert("失败");
			}
			
		}
			
	}*/
	
	//ajax方式
	/*function register()
	{
		
		var $mobile = $("#mobile").val();
		$.ajax({
			url:"MobileServelt",
			请求方式:"post",
			data:"mobile="+$mobile,
			success:function(result,testStatus)
			{
				if(result == "true"){
					alert("已存在，注册失败");
				}else{
					alert("注册成功");
				}
			},
			error:function(xhr,errorMessage,e){
				alert("系统异常");
			}
			});
	}*/
	
	
	//load方式
	/*function register()
	{
		var $mobile = $("#mobile").val();
		$("#t1").load(
				"MobileServelt",
				"mobile="+$mobile
		);
	}*/
	
	//json方式
	function register()
	{
		var $mobile = $("#mobile").val();
		$.getJSON(
				"MobileServelt",
				{"mobile":$mobile},
				function(result){
					if(result.msg == "true"){
						alert("已存在，注册失败");
					}else{
						alert("注册成功");
					}
				}
		);
	}
	
	
</script>
<title>Insert title here</title>
</head>
<body>
	手机：<input  id="mobile" />
	<br/>
	<input type="button" value="注册" onclick="register()" />
	<span id="t1"></span>
</body>
</html>