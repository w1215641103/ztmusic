<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Music interfac</title>
    <style type="text/css">
        .music{
            width: 100%;
            height: 100%;
            border: 1px solid gainsboro;
            background-color: gainsboro;
        }
        .c{
            height: 100px;
            border: 1px solid #333333;
            background-color: #333333;
            font-size: 30px;
            word-spacing: 50px;
            line-height: 100px;
        }
        .c_0{
            border: 0.1px solid #333333;
            background-color: #333333;
            line-height: 100px;
            margin-left: 260px;
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
        a:link{color:black;}
        a:visited{color:black;}
        a:hover{color:red;}
        a:active{color:red;}
        .c_1{
            border: 1px solid lawngreen;
            background-color: lawngreen;
            height: 1px;
        }
        .c_2{
            border:0.1px solid white;
            background-color: white;
            width: 300px;
            height: 83%;
            margin-left: 200px;
        }
        .c_2_1{margin: 30px auto;}
        .c_3{
            border: 0.1px solid gainsboro;
            background-color: white;
            height: 83%;
            width: 40%;
            margin-left: 500px;
            margin-top: -507px;
        }
        .c_4{
            border: 0.1px solid gainsboro;
            background-color: white;
            width: 100%;
            height: 200px;
        }
        .c_4_1{
            border: 0.1px solid white;
            background-color: white;
            width: 40%;
            height: 40px;
            margin: 30px auto;
        }
        .c_4_1_1{
            font-size: 27px;

        }
        .c_4_2{
            font-size: 8px;
        }
        .c_5{
            border: 0.1px solid white;
            background-color: white;
            width: 28%;
            margin: auto;
        }
    </style>
</head>
<body>
<div class="music" style="height: 611px">
    <div class="c">
        <div class="c_0">
            <ul>
                <li><a class="active" href="#home">音乐首页</a> </li>
                <li><a href="#news">发现音乐</a></li>
                <li><a href="#content">我的音乐</a> </li>
                <li><a href="#about">音乐大全</a> </li>
                <li><a href="#about">音乐简介</a></li>
            </ul>
        </div>
    </div>
    <div class="c_1"></div>
    <div class="c_2">
        <div class="c_2_1" style="width:150px; height:150px; border-radius:50%; overflow:hidden;" >
        <img src=".idea/9)HW5M2TP]]ZFAIRD{H{}XO.png" height="167" width="166" alt="歌手图片">
    </div>
    </div>
    <div class="c_3">
        <div class="c_4">
            <div class="c_4_1">
                <em class="c_4_1_1">不说</em>
            </div>
            <p class="c_4_2">
                歌手：
                <span title=" ">
                </span>
            </p>
            <p class="c_4_2">
                所属专辑：
            </p>
            <div class="c_5">
                <button onclick="getElementById('demo').innerHTML=Date()">播放</button>
                <button onclick="getElementById('demo').innerHTML=Date()">下载</button>
                <button onclick="getElementById('demo').innerHTML=Date()">评论</button>
            </div>
        </div>
    </div>

</div>
</body>
</html>