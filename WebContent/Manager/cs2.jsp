<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	function loadXMLDoc() {
		var xmlhttp;
		xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange=function() {
			if (xmlhttp.readyState==4 && xmlhttp.status==200) {
				document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "a.jsp");
		xmlhttp.send();
	}
</script>
</head>
<body>
	<div id = "myDiv"></div>
	<button type="button" onclick="loadXMLDoc()">修改</button>
</body>
</html>