function gth(url) {
	var xmlhttp;
	xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange=function() {
		if (xmlhttp.readyState==4 && xmlhttp.status==200) {
			document.getElementById("ap").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "head.jsp");
	xmlhttp.send();
	//获取宽度
	var a = window.screen.width;
	document.getElementById("ap").style.width = a + 'px';
	//setCookie
	setCookie("url", url);
}

function wb() {
	var exp = new Date();
	exp.setTime(exp.getTime()+60*60*24);
	document.cookie = "wb="+document.getElementById("inpt").value+";expires="+exp.toGMTString;
	window.location.href="m-DQ.jsp";
}
function wb1() {
	var exp = new Date();
	exp.setTime(exp.getTime()+60*60*24);
	document.cookie = "wb="+document.getElementById("inpt1").value+";expires="+exp.toGMTString;
	window.location.href="amusic.jsp";
}

function setCookie(name, date) {
	var exp = new Date();
	exp.setTime(exp.getTime()+60*60*24);
	document.cookie = name+"="+date+";expires="+exp.toGMTString;
}

//获取cookie
function getCookie(name) {
	var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
	if(arr !=null) return unescape(arr[2]); return null;
}

function stop_() {
	alert("您还未登录，请登录后重试！");
}
