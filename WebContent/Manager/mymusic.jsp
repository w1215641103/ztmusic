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
	<link rel="stylesheet" href="css/denglu.css">
	<script src="js/goto.js"></script>
	<script src='js/jquery.js'></script>
    <style type="text/css">
        .mymusic{
            height: 100%;
            width: 100%;
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
        .b_8{
            height: 100px;
            border: 0.1px solid #333333;
            background-color: #333333;
            line-height: 100px;
            margin-left: 260px;
        }
        .b_1{
            border: 1px solid lawngreen;
            background-color: lawngreen;
            height: 1px;
        }
        .b_2{
            border: 1px solid gainsboro;
            background-color: white;
            height: 82%;
            width: 180px;
            margin-left: 110px;
            font-size: 20px;
            text-align: center;
            word-spacing: 100px;

        }
        .b_3{
            border: 0.1px solid gainsboro;
            background-color: white;
            height: 235px;
            width: 60%;
            margin-left: 291px;
            margin-top: -507px;
        }
        .b_4{
            border: 0.1px solid gainsboro;
            background-color: white;
            height: 200px;
            width: 100%;

        }
        .b_5{
            border: 0.1px solid gainsboro;
            font-size: 25px;
            text-align: left;
        }
        .b_0{
            border: 0.1px solid red;
            background-color: red;
            height: 3px;
            width: 100%;
            margin-top: 0px;
        }
        .b_6{
            border: 1px solid gainsboro;
            background-color:white;
            height:43.5%;
            width: 60%;
            margin-left: 291px;
        }
        .b_7{
            border: 0.1px solid white;
            background-color: white;
            height: 25px;
            width: 250px;
            margin-top: 70px;
            margin-left:250px;
        }
        table{
            border-collapse: collapse;
        }
        table,td,th
        {
            border:0.1px solid gainsboro;
        }
        th{
            background: linear-gradient(white,gainsboro);
        }
        table
        {
            width:100%;
        }
        th
        {
            height:30px;
            text-align:left;
        }
        .dropdown{
            position:relative;
            display:inline-block;
        }
        .dropdown-content{
            display:none;
            position:absolute;
            background-color:white;
            min-width:120px;
            box-shadow:0px 8px 16px 0px rgba(0,0,0,0.2);
            padding:5px 1px;
        }
        .dropdown:hover .dropdown-content {
            display:block;
        }
        .dropdown{
            position:relative;
            display:inline-block;
        }
        .dropdown-content{
            display:none;
            position:absolute;
            background-color:white;
            min-width:120px;
            box-shadow:0px 8px 16px 0px rgba(0,0,0,0.2);
            padding:5px 1px;
        }
        .dropdown:hover .dropdown-content {
            display:block;
        }


        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
            padding: 0;
            margin: 0 auto;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 1px 20px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #111;
        }

    </style>
</head>

<body onload="gth('mymusic.jsp')">
<div id="a"><div id="ap"></div></div>
<div class="mymusic" style="height: 611px">
<!--     <div class="d-mymusic" >
        <div class="b_8">
            <ul>
                <li><a class="active" href="#home">音乐首页</a></li>
                <li><a href="#news">发现音乐</a></li>
                <li><a href="#content">我的音乐</a></li>
                <li><a href="#about">音乐大全</a></li>
                <li><a href="#about">音乐简介</a>
            </ul>
        </div>
    </div> -->
    <div class="b_1"></div>
    <div class="b_2"><br>
        <p><b><a href="b_3" target="_blank">我的歌手</a></b>
        <p><b><a href="b_3" target="_blank">我的电台</a></b>
            <div class="dropdown">
                <span>我的歌单</span>
                <div class="dropdown-content">
        <p>我喜欢的音乐</p>
        <p>树</p>
    </div>
</div><br><br>
<div class="dropdown">
    <span>收藏的歌单</span>
    <div class="dropdown-content">
        <p>民谣100首</p>
        <p>DJ程一</p>
    </div>
</div>
</div>
</div>
<div class="b_3">
    <div class="b_4">
        <a href="muban.html" target="_blank">
            <div style="float:left;claear:both;margin: 30px 20px 20px 80px">
                <img src="1.img.jpg"width="150" height="150"style="text-align: center">
            </div>
        </a>
        <div class="b_7">
            <button onclick="getElementById('demo').innerHTML=Date()">播放</button>
            <button onclick="getElementById('demo').innerHTML=Date()">分享</button>
            <button onclick="getElementById('demo').innerHTML=Date()">下载</button>
            <button onclick="getElementById('demo').innerHTML=Date()">评论</button>
        </div>

    </div>
    <div class="b_5">歌曲列表</div>
    <div class="b_0"></div>
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
</body>
</html>