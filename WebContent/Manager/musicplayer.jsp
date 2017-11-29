<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/jplay.css">
<style type="text/css">
*{padding:o;margin:0;}
body{
		background-color:#cccccc;
}
.player{
     	touch-callout:none;
		display:-webkit-flex;					/* 固定 */
		-webkit-justify-content:center;			/* 水平居中 */
		-webkit-align-items:center;				/* 垂直居中 */
		display:flex;							/* 固定 */
		justify-content:center;					/* 水平居中 */
		align-items:center;						/* 垂直居中 */
        width:100%;								
        height:40px;
        background-color:#2d2d2d;
        border-top:1px solid #4a4a4a;
        border-bottom:1px solid #4a4a4a;
        position:fixed;							/* 绝对定位*/
        bottom:0%;								/* 放置在底部*/
        }
.slider{
		flex:0 1 40%;							/* flex: [ <'flex-grow'> <'flex-shrink'>? || <'flex-basis'> ]*/
		height:4px;								/* 进度条高度*/
		background-color:#181818;
		border-top:1px solid #0b0b0b;
		border-bottom:1px solid #4a4a4a;
		border-radius:6px;
		margin:0px 2%;
		position:relative;
		}
.slider > .processor{
		width:0%;
		height:100%;
		background-color:#c70c0c;
		border-radius:6px;
		position:absolute;
		}
.processor > .controller{
		position:absolute;
		width:5px;
		height:5px;
		border:4px solid #f3f3f6;
		background-color:rgba(255,255,255,0);
		-webkit-border-radius:50%;
		-moz-border-radius:50%;
		border-radius:50%;
		top:-4.5px;
		left:calc(100% - 9px);
		}
.w{		
		margin-left:1%;
		margin-right:1%;
		flex:0 1 8%;
		height:3px;
		background-color:#181818;
		border-top:1px solid #0b0b0b;
		border-bottom:1px solid #4a4a4a;
		border-radius:6px;
		position:relative;
}
.w > .w1{
		width:50%;
		height:100%;
		background-color:#c70c0c;
		border-radius:6px;
		position:absolute;
}
.w1 > .w2{
		position:absolute;
		width:4px;
		height:4px;
		border:3px solid #f3f3f6;
		background-color:rgba(255,255,255,0);
		-webkit-border-radius:50%;
		-moz-border-radius:50%;
		border-radius:50%;
		top:-3.5px;
		left:calc(100% - 6px);
}
.q{		
		display:flex;								/* 固定 */
		justify-content:space-around;				/* 水平居中 */
		align-items:center;							/* 垂直居中 */
		display:-webkit-flex;						/* 固定 */
		-webkit-justify-content:space-around;		/* 水平居中 */
		-webkit-align-items:center;					/* 垂直居中 */
		margin-right:2%;
		border:1px;
		flex:0 1 8%;
		height:40px;
		/* background-color:red; */
}
.x{
		border:1px;
		width:5%;
		height:40px;
		background-color:green;
}

.button{
		line-height:90%;
		text-indent:15%;
		margin-right:0.5%;
		border-radius:100%;
		border:2px solid #555555;
		background-color:#2d2d2d;
		color:white;
		width:25px;
		height:25px;
		outline:none;					/* 消除蓝色边框 */
}
.button:hover {border-color:snow;}		/* 鼠标放到按钮上*/
.button:active {						/* 鼠标按下*/
		border-color:snow;
		transform: translateY(2px);		/* Y轴向下偏移2px*/
}
.button1{
		line-height:90%;
		text-indent:15%;
		margin-right:0.5%;
		border-radius:100%;
		border:2px solid #555555;
		background-color:#2d2d2d;
		color:white;
		width:30px;
		height:30px;
		outline:none;					/* 消除蓝色边框 */
}
.button1:hover {border-color:snow;}		/* 鼠标放到按钮上*/
.button1:active {						/* 鼠标按下*/
		border-color:snow;
		transform: translateY(2px);		/* Y轴向下偏移2px*/
}
</style>
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
	
	<div class="x"> </div>
	
</div>

<audio id="audio1" >
	<source src="2011tsukioru.mp3">
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
	
	/* 小数点转百分比 */
	function toPercent(point) {
		var str = Number(point*100).toFixed(1);
		str+="%";
		return str;
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
		if(myAudio.ended) {
			bf = false;
			//更换b1的图标
			document.getElementById("b1").innerHTML="►";
			//清除计时器
			clearInterval(t1);
			//重置进度条
			_d1.style.width = "0%";
		}
	}
</script>
</body>
</html>