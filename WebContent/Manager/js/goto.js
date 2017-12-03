function gth() {
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
}

function ssgt() {
	var wb = document.getElementById("inpt").value;
	window.location.href="amusic.jsp";
}