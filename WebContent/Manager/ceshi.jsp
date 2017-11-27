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
         width:100%;
         height:40px;
         background-color:#2d2d2d;
         border-top:1px solid #4a4a4a;
         border-bottom:1px solid #4a4a4a;
         position:fixed;
         bottom:50%;
        }
.slider{
		width:600px;
		height:10px;
		background-color:#181818;
		border-top:1px solid #0b0b0b;
		border-bottom:1px solid #4a4a4a;
		border-radius:6px;
		margin:20px 120px;
		position:relative;
		}
.slider > .buffer{
		width:60%;
		height:100%;
		background-color:#535353;
		border-radius:6px;
		position:absolute;
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
		border:10px solid #f3f3f6;
		background-color:rgba(255,255,255,0);
		-webkit-border-radius:50%;
		-moz-border-radius:50%;
		border-radius:50%;
		top:-8px;
		left:-8px;
		}
.a{	
		float:left;
		border:1px;
		width:100%;
		height:100%;
		margin:10px 10px;
	}
</style>
</head>
<body>
<div class="player">
<div class="a">
<a href=" " ><img src="images/04.jpg" width="30px" height="30px" alt="bofang"></a>
<a href=" " ><img src="images/01.jpg" width="30px" height="30px" alt="bofang"></a>
<a href=" " ><img src="images/05.jpg" width="30px" height="30px" alt="bofang"></a>
</div>

	<div class="slider">
	<div class="buffer"></div>
	<div class="processor"></div>
	<div class="controller"></div>
	</div>
</div>
</body>
</html>