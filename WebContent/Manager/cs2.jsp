<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	
</style>
</head>
<body>
	<audio id="audio1">
		<source src="2011tsukioru.mp3">
	</audio>
	<button onclick="playAV()" type="button">播放</button>
	<button onclick="pauseAV()" type="button">暂停</button>
	
	<script>
	
	var myAudio = document.getElementById("audio1");
	
	function playAV() {
		myAudio.play();
		
	}
	function pauseAV() {
		myAudio.pause();
	}
	</script>
</body>
</html>