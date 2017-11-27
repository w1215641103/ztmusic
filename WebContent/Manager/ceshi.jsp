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
        height:auto;
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
</style>
</head>
<body>
<div class="player">
	<div class="q">
		<a href=" "><img src="images/04.png" width="25px" height=audo></a>
		<a href=" "><img src="images/01.png" width="35px" height=audo></a>
		<a href=" "><img src="images/05.png" width="25px" height=audo></a>
	</div>
		<div class="w">
			<div class="w1"></div>
			<div class="w2"></div>
		</div>
		<div class="slider">
			<div class="processor"></div>
			<div class="controller"></div>
		</div>
	<div class="x"> </div>
</div>	
</body>
</html>