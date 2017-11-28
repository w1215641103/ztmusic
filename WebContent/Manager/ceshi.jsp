<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{padding:o;margin:0;}
body{
		background-color:#cccccc;	
}
.player{
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
		height:5px;								/* 进度条高度*/
		background-color:#181818;
		border-top:1px solid #0b0b0b;
		border-bottom:1px solid #4a4a4a;
		border-radius:6px;
		margin:0px 2%;
		position:relative;
		}
.slider > .processor{
		width:8px;
		height:100%;
		background-color:#c70c0c;
		border-radius:6px;
		position:absolute;
		}
.slider > .controller{
		position:absolute;
		width:6px;
		height:6px;
		border:5px solid #f3f3f6;
		background-color:rgba(255,255,255,0);
		-webkit-border-radius:50%;
		-moz-border-radius:50%;
		border-radius:50%;
		top:-5px;
		left:-6px;
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
		width:8px;
		height:100%;
		background-color:#c70c0c;
		border-radius:6px;
		position:absolute;
}
.w > .w2{
		position:absolute;
		width:5px;
		height:5px;
		border:3px solid #f3f3f6;
		background-color:rgba(255,255,255,0);
		-webkit-border-radius:50%;
		-moz-border-radius:50%;
		border-radius:50%;
		top:-4px;
		left:-4px;
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
<body>
<div class="player">
	<button class="button"><</button>
	<button class="button1" id="bofang" name="bofang">=</button>
	<button class="button">></button>
	<div class="w">
		<div class="w1"></div>
		<div class="w2"></div>
	</div>
	<div class="slider">
		<div id="jindu" class="processor"></div>
		<div id="huadian" class="controller"></div>
	</div>
	<div class="x"> </div>
</div>

<audio id="audio" scr="" loop="loop" autoplay="autoplay"></audio>

<script>
	var slider = document.querySelector(".slider");
	var step = 0.05;
	
	var timer = window.setInterval(function() {
		var sw = slider.offsetWidth;
	})
	var processor = document.querySelector(".processor");
	var controller = document.querySelector(".controller");
	
	slider.addEventListener("mousedown", dragDropHandler);
	
	function dragDropHandler(event) {
		switch(event.type) {
		case "mousedown": break;
		case "mousemove": break;
		case "mouseup": break;
		}
	}
</script>

</body>
</html>










