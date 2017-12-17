<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.cookie" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的音乐</title>
    <link rel="stylesheet" href="css/ss.css" media="screen"/>
	<link rel="stylesheet" href="css/bd.css" media="screen"/>
	<link rel="stylesheet" href="css/yetou.css">
	<link rel="stylesheet" href="css/yqf.css">
	<link rel="stylesheet" href="css/denglu.css">
	<script src="js/goto.js"></script>
	<script src='js/jquery.js'></script>
    <style type="text/css">
        .mymusic{
        	position:relative;
        	top:70px;
        	margin:auto;
        	width:50%;
            height: 1500px;
            border: 1px solid gainsboro;
            background-color: gainsboro;
        }
        .d-mymusic{
            height: 100px;
            border: 1px solid #333333;
            background-color: #333333;
            font-size: 30px;
            word-spacing: 50px;
            line-height: 100px;
        }
        .b_2{
        	position:fixed;
        	top:70px;
            border: 1px solid gainsboro;
            background-color: gray;
            height: 100%;
            width: 10%;
            font-size: 20px;
            text-align: center;
          /*   word-spacing: 100px; /* 字段间的空隙 */ */

        }
        .dropdown{
            position:absolute;
            left:0;
            top:20px;
            width:100%;
        }
        .dropdown-content{
           text-align:center;
           line-height:100%;
           float:left;
           width:99%;
           height:25px;
           margin:2% 0 2% 0;
           padding:3% 0 0 0;
           border:1px solid black; 
        }
        .dropdown-content:hover{
        	border:0;
        	background:#232323;
        }
        .b_3{
            border: 0.1px solid gainsboro;
            background-color: white;
            position:relative;
            height: 235px;
            width:60%;
            margin-left:30%;
        }
        .b_4{
        	position:absolute;
        	top:20%;
            background-color: white;
            height: 200px;
            width: 100%;
            height:50%; 
            background-color: gray;
        }
        .b_4 img{
        	width:20%;
        	height:100%;
        	margin:0;
        }
        .b_4x{
        	font-size:30px;
        	width:60%;
        	position:absolute;
        	top:30%;
        	left:40%;
        }
        .b_5{
        	position:absolute;
        	bottom:0;
            border:0.1px solid gainsboro;
            font-size:25px;
            text-align:left;
        }
        .b_6{
            border: 1px solid gainsboro;
            background-color:white;
            height:43.5%;
            width: 60%;
            margin-left:30%;
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
         .b_6 ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

         .b_6 li {
            float: left;
            padding: 0;
            margin: 0 auto;
        }

         .b_6 li a {
            display: block;
            color: white;
            text-align: center;
            padding: 1px 20px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #111;
        }
		*{margin:0;padding:0;}
    </style>
</head>

<body onload="gth('mymusic.jsp')">
<div id="a"><div id="ap"></div></div>
<div class="mymusic">

    <div class="b_2">
		<div class="dropdown">
    		<span>收藏的专辑</span>
    		<hr>
    		<div class="dropdown-content">
       	 		<a href=" ">民谣100首</a>
    		</div>
    		<div class="dropdown-content">
       	 		<a href=" ">牛仔很忙</a>
    		</div>
	   </div>
	</div>
	<div class="b_3">
    	<div class="b_4">
			<img src="music/异类.png" alt="头像">
			<div class="b_4x"><span>user: class</span></div>
    	</div>
    	
    <div class="b_5">歌曲列表</div>
</div>
<div class="b_6">
    <table>
        <tr>
            <th>歌曲标题</th>
            <th>时长</th>
            <th>歌手</th>
            <th>专辑</th>
        </tr>
        <tr>
            <td>你还要我怎样</td>
            <td>04:10</td>
            <td>薛之谦</td>
            <td>你还要我怎样</td>
        </tr>
        <tr>
            <td>功夫熊猫</td>
            <td>04:00</td>
            <td>周杰伦</td>
            <td>新专辑</td>
        </tr>
        <tr>
            <td>你好吗</td>
            <td>04:05</td>
            <td>周杰伦</td>
            <td>你好吗</td>
        </tr>
        <tr>
            <td>我不配</td>
            <td>04:25</td>
            <td>周杰伦</td>
            <td>魔杰座</td>
        </tr>
    </table>

</div>
</div>
</body>
</html>