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
	setCookie(url);
}

function ssgt() {
	var wb = document.getElementById("inpt").value;
	window.location.href="amusic.jsp";
}

function wb() {
	var exp = new Date();
	exp.setTime(exp.getTime()+60*60*24);
	document.cookie = "wb="+document.getElementById("inpt").value+";expires="+exp.toGMTString;
	window.location.href="amusic.jsp";
}

function setCookie(url) {
	var exp = new Date();
	exp.setTime(exp.getTime()+60*60*24);
	document.cookie = "url="+url+";expires="+exp.toGMTString;
}

//获取cookie
function getCookie(name) {
	var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
	if(arr !=null) return unescape(arr[2]); return null;
}
