function smusic() {
		var xmlhttp;
		xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange=function() {
			if (xmlhttp.readyState==4 && xmlhttp.status==200) {
				document.getElementById("music").innerHTML=xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "index.jsp");
		xmlhttp.send();
	}
function fmusic() {
	var xmlhttp;
	xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange=function() {
		if (xmlhttp.readyState==4 && xmlhttp.status==200) {
			document.getElementById("music").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "fmusic.jsp");
	xmlhttp.send();
}
function mymusic() {
	var xmlhttp;
	xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange=function() {
		if (xmlhttp.readyState==4 && xmlhttp.status==200) {
			document.getElementById("music").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "mymusic.jsp");
	xmlhttp.send();
}
function amusic() {
	var xmlhttp;
	xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange=function() {
		if (xmlhttp.readyState==4 && xmlhttp.status==200) {
			document.getElementById("music").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "a.jsp");
	xmlhttp.send();
}
<<<<<<< HEAD

=======
function jmusic() {
	var xmlhttp;
	xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange=function() {
		if (xmlhttp.readyState==4 && xmlhttp.status==200) {
			document.getElementById("music").innerHTML=xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "jmusic.jsp");
	xmlhttp.send();
}
>>>>>>> 16a5f293f0ac00f422e328eacc20910f1bb4a178
function xwidth() {
	var a = window.screen.width;
	document.getElementById("ap").style.width = a + 'px';
}
