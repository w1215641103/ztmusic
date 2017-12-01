<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的音乐</title>
    <style>
    *{padding:0;margin:0;}
    .a_5{
   		width:130px;
   		height:55px;
   		position:relative;	/* 定位自己 */
   		top:10px;
    	border:1px;
    	background-color:#969696;
    }
    .a_5:hover{
/*     	transition-timing-function:ease-out;	先快后慢     两个都是曲线速率
    	transition-timing-function:ease-in;  越来越快 */
    	animation-name:a_5;
    	/* animation:a_5 5s; */
    	animation-delay:50ms;
    	animation-duration:5s;
    	/* animation-itertion-count:infinite;动画播放次数，infinite表示动画无限次播放 */
    	animation-fill-mode:forwards;  /* 这句话可以让动画停止在最后一帧不变回去 */
    	/* -webkit-animation:a_5 2s; */
    }
     @keyframes a_5{
    	from {background:#969696; left:0px; top:10px; width:height:55px;}
    	25%  {background:yellow; left:10px; top:7px; height:60px;}
    	100%  {background:green;  left:0px; top:0px; height:70px;}
    }
    @-webkit-keyframes a_5{
    	0%	 {background:#969696; left:0px; top:10px;}
    	25%  {background:yellow; left:10px; top:3px; height:60px;}
    	100%  {background:green;  left:0px; top:10px; height:70px;}
    } 
    .a_6t{
    	width:50px;
    	height:50px;
    	border-style:solid;
    	border-color:#d9d9d9;
    	border-width:1px;
    	border-radius:50px;
    	padding:auto;
    	position:absolute;
    	top:2px;
    	left:10px;
    	cursor:pointer;
    	background-color:#d9d9d9;
    	
    }
    .a_6t:hover{
    	border-color:white;
    	background-color:white;
    }
    .a_7{
    	overflow:ellipsis;	/* 超出文本省略号 */
    	position:absolute;
    	top:20px;
    	left:80px;
    	width:40px;
    	height:20px;
    	border:0;
    	background-color:red;
    	cursor:pointer;
    }
    /* 下拉内容 (默认隐藏) */
.a_8{
	display: none;
    position: absolute;
    top:55px;
    background-color: #f9f9f9;
    min-width: 100px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
/* 下拉菜单的链接 */
.a_8 .a_9 {
    color: black;
    padding: 16px 46px;
    text-decoration: none;
    display: block;
}
/* 鼠标触发后修改a_4的颜色 */
.a_8 .a_9:hover {
	background-color: #f1f1f1;
	transition-duration:500ms;/*过渡动画时间*/
    transition-property:background-color;/*动画效果是改变背景颜色*/
	}

/* 在鼠标触发后显示下拉菜单 */
.a_5:hover .a_8
{
	display: block;
    transition-duration:500ms;/*过渡动画时间*/
    transition-property:display;/*动画效果是改变display*/
}
 .a_8 {  
     animation-delay:50ms;
    animation-duration:5s;
    animation-fill-mode:forwards;
}

/* 当下拉内容显示后修改下拉按钮的背景颜色 */
.a_5:hover .buttonz {
    background-color: #3e8e41;
    transition-duration:500ms;/*过渡动画时间*/
    transition-property:background-color;/*动画效果是改变背景颜色*/
}
    </style>
</head>
<body>
<div class="a_5">
				<div class="a_6"><a onclick="mymusic()"><img class="a_6t" src="images/logo.png"></a></div>
				<div class="a_7"><a onclick="mymusic()">user</a></div> 
				<div class="a_8">
 					<a class="a_9" href="denglu.jsp">个人中心</a>
  					<a class="a_9" href="zhuce.jsp">我的音乐</a>
  				</div>
</div>

</body>
</html>