<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/jplay.css">
</head>

<body onmouseup="mj()">
<div class="player">
	<!-- 控制按钮 -->
	<button class="button">«</button>
	<button onclick="playAV()" class="button1" type="button" id="b1">►</button>
	<button class="button">»</button>
	<!-- 音量 -->
	<div class="w" onmousedown="m1(event,this)" onmousemove="m2(event,this)" id="w">
		<div class="w1" id="w1">
			<div class="w2"></div>
		</div>
	</div>
	<!-- 进度条 -->
	<div class="slider" id="slider" onclick="j1(event,this)">
		<div id="jindu" class="processor">
			<div id="huadian" class="controller"></div>
		</div>
	</div>
	<!-- 循环 -->
	<button class="button1" id="xh" onclick="xhbf()">↻</button>
</div>

<audio id="audio1">
	<source src="music/Azis - Хоп.mp3">
</audio>

<script>
	var myAudio = document.getElementById("audio1");
	var _w1 = document.getElementById("w1");
	var _w = document.getElementById("w");
	var _d1 = document.getElementById("jindu");
	var _d = document.getElementById("slider");
	//是否播放
	var bf = false;
	//是否按在音量上
	var ax = false;
	//是否按在进度上
	var aj = false;
	//进度条播放
	var t1;
	//是否循环
	var	xh = false;
	
	//修改循环
	function xhbf() {
		if (!xh) {
			//设置位循环
			myAudio.loop = true;
			xh = true;
			document.getElementById("xh").style.border='2px solid snow';
		} else {
			myAudio.loop = false;
			xh = false;
			document.getElementById("xh").style.border='2px solid #555555';
		}
	}
	
	//点击播放按钮
	function playAV() {
		if (!bf) {	//未播放
			//播放
			myAudio.play();
			//设置检测为已播放
			bf = true;
			//更换b1的图标
			document.getElementById("b1").innerHTML="♫";
			//设置音量为当前显示音量
			myAudio.volume= _w1.clientWidth/_w.clientWidth;
			//移动进度条
			t1 = setInterval("j()", 1000);
		} else {	//正在播放
			//暂停
			myAudio.pause();
			//设置检测为未播放
			bf = false;
			//更换b1的图标
			document.getElementById("b1").innerHTML="►";
			//停止进度条
			j();
			clearInterval(t1);
		}
	}
	
	//按下音量条
	function m1(ev, obj) {
		//获取鼠标的位置
		var mX = ev.clientX-obj.offsetLeft;
		//设置w1的宽度
		_w1.style.width = mX + 'px';
		//调整音量
		myAudio.volume= _w1.clientWidth/_w.clientWidth;
		ax = true;
	}
	
	//按下且移动音量
	function m2(ev, obj) {
		if (ax) {
			//获取鼠标的位置
			var mX = ev.clientX-obj.offsetLeft;
			//设置w1的宽度
			_w1.style.width = mX + 'px';
			if (_w1.clientWidth > _w.clientWidth) {
				_w1.style.width = _w.clientWidth + 'px';
			}
			//调整音量
			myAudio.volume= _w1.clientWidth/_w.clientWidth;
		}
	}
	
	//按下进度条
	function j1(ev, obj) {
		//获取鼠标的位置
		var mX = ev.clientX-obj.offsetLeft;
		//设置w1的宽度
		_d1.style.width = mX + 'px';
		//获得总时间
		var time1 = myAudio.duration;
		//获得比值
		var bz = (_d1.clientWidth/_d.clientWidth).toFixed(5);
		//调整进度
		myAudio.currentTime = bz*time1;
		aj = true;
	}
	
	//按下且移动进度条
	function j2(ev, obj) {
		if (aj) {
			//获取鼠标的位置
			var mX = ev.clientX-obj.offsetLeft;
			//设置d1的宽度
			_d1.style.width = mX + 'px';
			if (_d1.clientWidth > _d.clientWidth) {
				_d1.style.width = _d.clientWidth + 'px';
			}
			//获得总时间
			var time1 = myAudio.duration;
			//获得 1 位小数的比值
			var bz = (_d1.clientWidth/_d.clientWidth).toFixed(5);
			//调整进度
			myAudio.currentTime = bz*time1;
		}
	}
	
	//松开鼠标
	function mj() {
		ax = false;
		aj = false;
	}
	
	//设置进度条
	function j() {
		//获取歌曲总时间
		var time1 = myAudio.duration;
		//获取歌曲当前播放时间
		var time2 = myAudio.currentTime;
		var yw = toPercent(time2 / time1);
		//调整进度条位置
		_d1.style.width= yw ;
		//如果播放结束
		if(myAudio.ended && !xh) {
			bf = false;
			//更换b1的图标
			document.getElementById("b1").innerHTML="►";
			//清除计时器
			clearInterval(t1);
			//重置进度条
			_d1.style.width = "0%";
		}
	}
	
	/* 小数点转百分比 */
	function toPercent(point) {
		var str = Number(point*100).toFixed(1);
		str+="%";
		return str;
	}
</script>
</body>
</html>