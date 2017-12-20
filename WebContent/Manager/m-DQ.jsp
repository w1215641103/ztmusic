<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>音乐大全</title>
<link rel="stylesheet" href="css/yetou.css">
<link rel="stylesheet" href="css/yqf.css">
<link rel="stylesheet" href="css/denglu.css">
<link rel="stylesheet" href="css/m-DQ.css">
<style>
.b_6{
        	position:absolute;
        	top:130px;
            border: 1px solid black;
            background-color:#232323;
            width:100%;
            box-shadow:0px 0px 10px 5px rgba(0,0,0,0.24), 0px 0px 1px 1px rgba(0,0,0,0.19);
        }
        .b_6 table{
            border-collapse: collapse;
        }
         .b_6 table, .b_6 td, .b_6 th
        {
            border:0.1px solid gainsboro;
        }
         .b_6 th{
            background: linear-gradient(white,gainsboro);
        }
         .b_6 table
        {
            width:100%;
        }
         .b_6 th
        {
            height:30px;
            text-align:left;
        }
</style>
</head>
<body>
<div id="a"><div id="ap"></div></div>

<div class="z-dq">
<!-- 	<div class="dq-head">
		<a href=" ">摇滚</a>
		<a href=" ">爵士</a>
		<a href=" ">流行</a>
		<a href=" ">古典</a>
	</div> -->
	<div class="dq-gs">
		<p>歌曲分类</p>
		<div class="dq-tx">
			<a href=" "><img src="images/yin1.jpg"></a>
			<span>摇滚</span>
		</div>
		
		<div class="dq-tx">
			<a href=" "><img src="images/yin1.jpg"></a>
			<span>爵士</span>
		</div>
		<div class="dq-tx">
			<a href=" "><img src="images/yin1.jpg"></a>
			<span>流行</span>
		</div>
		<div class="dq-tx">
			<a href=" "><img src="images/yin1.jpg"></a>
			<span>古典</span>
		</div>
	</div>
	<!-- ---------------------- -->
	<div class="dq-center">
		<!-------------------------------  -->
			<div class="dq_search">
				<form>
					<input type="text" placeholder="请输入歌名/作者...">
					<button type="submit">搜索</button>
				</form>
			</div>
		
		<div class="b_6">
     		<table>
       		 <tr>
            	<th>歌曲标题</th>
            	<th>分类</th>
            	<th>歌手</th>
            	<th>专辑</th>
       		 </tr>
        	<tr>
            	<td><a href=" ">你还要我怎样</a></td>
            	<td><a href=" ">流行</a></td>
            	<td><a href=" ">薛之谦</a></td>
            	<td><a href=" ">你还要我怎样</a></td>
        	</tr>
    		</table>

		</div>
	</div>
</div>

</body>
</html>