<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
*{padding:0;margin:0;}
a:link,a:visited
 		{
				color:#d9d9d9; 
                text-decoration:none;/*超链接无下划线*/
		}
a:hover {color:white;} 
a:active{color:#d9d9d9;}
.center{			/* 整体的一个容器标签 */
      	width:100%;
      	height:100%;
      	border:1px solid red;
      	background-color:#d9d9d9;	
      	}
.a{				/* 首页的布局标签 */
		width:100%;
		height:70px;
		display:-webkit-flex;					/* 固定 */
		-webkit-justify-content:center;			/* 水平居中 */
		-webkit-align-items:center;				/* 垂直居中 */
		display:flex;							/* 固定 */
		justify-content:center;					/* 水平居中 */
		align-items:center;						/* 垂直居中 */
		border-bottom:2px solid #4CAF50;
		background-color:#393939;
		position:fixed;							/* 绝对定位*/
		border-style:none;
       	top:0%;								/* 放置在顶部*/
	}
.a_0{
		flex:0 1 20%;
		height:100%;
		line-height:300%;
		color:#d9d9d9;
		font-size:30px;			/*文字大小*/
        font-family:Blackoak Std;	/*字体*/
        text-align:center;
	}
.a_0:hover{
		transition:0.3s;
		line-height:280%;
		box-shadow:0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);	/* 双重阴影 */
}
.a_1{
		flex:0 1 10%;
		height:100%;
		color:#666;
		font-size:25px;			/*文字大小*/
        font-family:微软雅黑;	/*字体*/
        line-height:300%;
        align-items:center;	
        text-align:center;
        background-color:#151515;
        cursor:pointer; /* 改变鼠标 */
        overflow: hidden;	/* 超出文本隐藏 */
        white-space: nowrap;	/* 强制不换行 */
	}
.a_1:hover {
			line-height:280%;
			transition:0.5s;	/* 过渡动画时间   顺序是property duration timing-function delay*/
			box-shadow:0 8px 10px 0 rgba(0,0,0,0.24), 0 11px 30px 0 rgba(0,0,0,0.19);	/* 双重阴影 */
	}
	/* 下拉按钮样式 */
.buttonz {
  	border-radius: 4px;
  	background-color: #f4511e;
 	border: none;
 	color: #FFFFFF;
 	text-align: center;
  	font-size: 18px;
 	padding: 10px;
  	width: 100px;
  	transition: all 0.5s;
  	cursor: pointer;
  	margin: 5px;
}
.buttonz:hover{
	background-color:#4CAF50;
	
}
.buttonz span {
  	cursor: pointer;
  	display: inline-block;
  	position: relative;
  	transition: 0.5s;
}

.buttonz span:after {
 	 content: 'V';
   	 position: absolute;	
  	 opacity: 0;		/* 透明 */
 	 bottom: -10px;	/* 起始位置 */
  	 left: 11px;		/* content的左右位置 */
 	 transition: 1s;	/* 动画时间 */
}

.buttonz:hover span {
 	 padding-bottom: 10px;	/* 改变按钮大小 */
}

.buttonz:hover span:after {
	 opacity: 1;		/* 不透明 是1*/
	 bottom: -10px;		/* 触发时出现位置 */
}
/* 容器<div a_2>---需要定位下拉内容 */
.a_2{
	 position:relative; 
	 display:inline-block;
}
/* 下拉内容 (默认隐藏) */
.a_3{
	display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 100px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
/* 下拉菜单的链接 */
.a_3 .a_4 {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}
/* 鼠标触发后修改a_4的颜色 */
.a_3 .a_4:hover {
	background-color: #f1f1f1;
	transition-duration:500ms;/*过渡动画时间*/
    transition-property:background-color;/*动画效果是改变背景颜色*/
	}

/* 在鼠标触发后显示下拉菜单 */
.a_2:hover .a_3 {
    display: block;
    transition-duration:500ms;/*过渡动画时间*/
    transition-property:display;/*动画效果是改变display*/
}

/* 当下拉内容显示后修改下拉按钮的背景颜色 */
.a_2:hover .buttonz {
    background-color: #3e8e41;
     transition-duration:500ms;/*过渡动画时间*/
    transition-property:background-color;/*动画效果是改变背景颜色*/
}
 	.webdesigntuts-workshop {

 	white-space: nowrap;
	line-height:350%;
	text-align: center;
	width: 15%;
} 

 .webdesigntuts-workshop:before,
.webdesigntuts-workshop:after {
	content: '';
	display: block;	
	height: 3px;
	/* left: 40%; */
	margin: 5px 0 0px -280%;
/* 	position: absolute; */
	width:200%;
}  

.webdesigntuts-workshop:before {
	background: #444;
	background: -webkit-linear-gradient(left, #151515, #444, #151515);
	background: -moz-linear-gradient(left, #151515, #444, #151515);
	background: -o-linear-gradient(left, #151515, #444, #151515);
	background: -ms-linear-gradient(left, #151515, #444, #151515);
	background: linear-gradient(left, #151515, #444, #151515);
	top: 192px;
}

.webdesigntuts-workshop:after {
	background: #000;
	background: -webkit-linear-gradient(left, #151515, #000, #151515);	
	background: -moz-linear-gradient(left, #151515, #000, #151515);	
	background: -o-linear-gradient(left, #151515, #000, #151515);	
	background: -ms-linear-gradient(left, #151515, #000, #151515);	
	background: linear-gradient(left, #151515, #000, #151515);	
	top: 191px;
}

.webdesigntuts-workshop form {
	background: #111;
	background: -webkit-linear-gradient(#1b1b1b, #111);
	background: -moz-linear-gradient(#1b1b1b, #111);
	background: -o-linear-gradient(#1b1b1b, #111);
	background: -ms-linear-gradient(#1b1b1b, #111);
	background: linear-gradient(#1b1b1b, #111);
	border: 1px solid #000;
	border-radius: 5px;
	box-shadow: inset 0 0 0 1px #272727;
	display: inline-block;
	font-size: 0px;
/* 	margin: 150px auto 0;
	padding: 20px; */
	position: relative;
	z-index: 1;
}

.webdesigntuts-workshop input {  /* 文本框 */
	background: #222;
	background: -webkit-linear-gradient(#333, #222);	
	background: -moz-linear-gradient(#333, #222);	
	background: -o-linear-gradient(#333, #222);	
	background: -ms-linear-gradient(#333, #222);	
	background: linear-gradient(#333, #222);	
	border: 1px solid #444;
	border-radius: 5px 0 0 5px;
	box-shadow: 0 2px 0 #000;
	color: #888;
	display: block;
	float: left;
	font-family: 'Cabin', helvetica, arial, sans-serif;
	font-size: 13px;
	font-weight: 400;
	height: 40px;
	margin: 0;
	padding: 0 10px;
	text-shadow: 0 -1px 0 #000;
	width: 79%;
}

.ie .webdesigntuts-workshop input {
	line-height: 40px;
}

.webdesigntuts-workshop input::-webkit-input-placeholder {
   color: #888;
}

.webdesigntuts-workshop input:-moz-placeholder {
   color: #888;
}

.webdesigntuts-workshop input:focus {
	-webkit-animation: glow 800ms ease-out infinite alternate;
	-moz-animation: glow 800ms ease-out infinite alternate;
	-o-animation: glow 800ms ease-out infinite alternate;
	-ms-animation: glow 800ms ease-out infinite alternate;
	animation: glow 800ms ease-out infinite alternate;
	background: #222922;
	background: -webkit-linear-gradient(#333933, #222922);
	background: -moz-linear-gradient(#333933, #222922);
	background: -o-linear-gradient(#333933, #222922);
	background: -ms-linear-gradient(#333933, #222922);
	background: linear-gradient(#333933, #222922);
	border-color: #393;
	box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
	color: #efe;
	outline: none;
}

.webdesigntuts-workshop input:focus::-webkit-input-placeholder { 
	color: #efe;
}

.webdesigntuts-workshop input:focus:-moz-placeholder {
	color: #efe;
}

.webdesigntuts-workshop button {
	background: #222;
	background: -webkit-linear-gradient(#333, #222);
	background: -moz-linear-gradient(#333, #222);
	background: -o-linear-gradient(#333, #222);
	background: -ms-linear-gradient(#333, #222);
	background: linear-gradient(#333, #222);
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	-o-box-sizing: content-box;
	-ms-box-sizing: content-box;
	box-sizing: content-box;
	border: 1px solid #444;
	border-left-color: #000;
	border-radius: 0 5px 5px 0;
	box-shadow: 0 2px 0 #000;
	color: #fff;
	display: block;
	float: left;
	font-family: 'Cabin', helvetica, arial, sans-serif;
	font-size: 13px;
	font-weight: 400;
	height: 40px;
	line-height: 40px;
	margin: 0;
	padding: 0;
	position: relative;
	text-shadow: 0 -1px 0 #000;
	width: 20%;
}	

.webdesigntuts-workshop button:hover,
.webdesigntuts-workshop button:focus {
	background: #292929;
	background: -webkit-linear-gradient(#393939, #292929);	
	background: -moz-linear-gradient(#393939, #292929);	
	background: -o-linear-gradient(#393939, #292929);	
	background: -ms-linear-gradient(#393939, #292929);	
	background: linear-gradient(#393939, #292929);
	color: #5f5;
	outline: none;
	line-height:280%;
	transition:0.1s;
	box-shadow:0 0px 0px 0 rgba(0,0,0,0.24), 0 10px 30px 0 rgba(0,0,0,0.19);
}

.webdesigntuts-workshop button:active {
	background: #292929;
	background: -webkit-linear-gradient(#393939, #292929);
	background: -moz-linear-gradient(#393939, #292929);
	background: -o-linear-gradient(#393939, #292929);
	background: -ms-linear-gradient(#393939, #292929);
	background: linear-gradient(#393939, #292929);
	box-shadow: 0 1px 0 #000, inset 1px 0 1px #222;
	top: 1px;
}

@-webkit-keyframes glow {
    0% {
		border-color: #393;
		box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
    }	
    100% {
		border-color: #6f6;
		box-shadow: 0 0 20px rgba(0,255,0,.6), inset 0 0 10px rgba(0,255,0,.4), 0 2px 0 #000;
    }
}

@-moz-keyframes glow {
    0% {
		border-color: #393;
		box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
    }	
    100% {
		border-color: #6f6;
		box-shadow: 0 0 20px rgba(0,255,0,.6), inset 0 0 10px rgba(0,255,0,.4), 0 2px 0 #000;
    }
}

@-o-keyframes glow {
    0% {
		border-color: #393;
		box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
    }	
    100% {
		border-color: #6f6;
		box-shadow: 0 0 20px rgba(0,255,0,.6), inset 0 0 10px rgba(0,255,0,.4), 0 2px 0 #000;
    }
}

@-ms-keyframes glow {
    0% {
		border-color: #393;
		box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
    }	
    100% {
		border-color: #6f6;
		box-shadow: 0 0 20px rgba(0,255,0,.6), inset 0 0 10px rgba(0,255,0,.4), 0 2px 0 #000;
    }
}

@keyframes glow {
    0% {
		border-color: #393;
		box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;
    }	
    100% {
		border-color: #6f6;
		box-shadow: 0 0 20px rgba(0,255,0,.6), inset 0 0 10px rgba(0,255,0,.4), 0 2px 0 #000;
    }
}

</style>
</head>
<body>
	<div class="a">
			<div class="a_0"><a href="head.jsp">ZT.music</a></div>
			<div class="a_1"><a href="index.jsp">音乐首页</a></div>
			<div class="a_1"><a href="index.jsp">发现音乐</a></div>
			<div class="a_1"><a href="wodeyunyue.jsp">我的音乐</a></div>
			<div class="a_1"><a href="music.jsp">音乐大全</a></div>
			<div class="a_1"><a href="index.jsp">音乐简介</a></div>
				<section class="webdesigntuts-workshop">
					<form action="" method="">		    
						<input type="search" placeholder="请输入搜索内容">		    	
						<button>搜索</button>
					</form>
				</section>
  					<script src='jquery.js'></script>
  			<div class="a_2">
  				<button class="buttonz" style="vertical-align:middle"><span>登陆</span></button>
  				<div class="a_3">
  					<a class="a_4" href="">登陆</a>
  					<a class="a_4" href="">注册</a>
  				</div>
  			</div>
	</div>
</body>
</html>