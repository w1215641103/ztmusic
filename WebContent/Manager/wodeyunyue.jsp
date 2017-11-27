<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的音乐</title>
    <style type="text/css">
        .mymusic{
            height: 100%;
            width: 100%;
            border: 1px solid gainsboro;
            background-color: gainsboro;
        }
        .d-mymusic{
            height: 100px;
            border: 1px solid grey;
            background-color: grey;
            font-size: 30px;
            word-spacing: 50px;
            text-align: center;
            line-height: 100px;
        }
        .class1{
            border: 1px solid red;
            background-color: red;
            height: 5px;
        }
        .class2{
            border: 1px solid gainsboro;
            background-color: white;
            height: 82%;
            width: 180px;
            margin-left: 110px;
            font-size: 25px;
            text-align: center;
            word-spacing: 100px;

        }
        .class3{
            border: 0.1px solid gainsboro;
            background-color: white;
            height: 235px;
            width: 60%;
            margin-left: 291px;
            margin-top: -503px;
        }
        .class4{
            border: 0.1px solid gainsboro;
            background-color: white;
            height: 200px;
            width: 100%;

        }
        .class5{
            border: 0.1px solid gainsboro;
            font-size: 25px;
            text-align: left;
        }
        .class{
            border: 0.1px solid red;
            background-color: red;
            height: 3px;
            width: 100%;
            margin-top: 231px;
        }
        .class6{
            border: 1px solid gainsboro;
            background-color:white;
            height:43.5%;
            width: 60%;
            margin-left: 291px;
        }
        .class7{
            border: solid gainsboro;
            background-color: blue;
            height: 10px;
            width: 50px;
            margin-top: 200px;
            margin-left:50px;
        }
    </style>
</head>
<body>
<div class="mymusic" style="height: 611px">
    <div class="d-mymusic" >发现音乐 我的音乐 商城 音乐人</div>
    <div class="class1"></div>
    <div class="class2"><br><br>
        <a href="class4" target="_blank"><button onclick="getElementById('demo').innerHTML=Date()">我的歌手</button></a><br><br>
        <a href="class4" target="_blank"><button onclick="getElementById('demo').innerHTML=Date()">我的歌单</button></a><br><br>
        <a href="class4" target="_blank"><button onclick="getElementById('demo').innerHTML=Date()">我的电台</button></a><br><br>
        <a href="class4" target="_blank"><button onclick="getElementById('demo').innerHTML=Date()">我喜欢的音乐</button></a><br><br>
        <a href="class4" target="_blank"><button onclick="getElementById('demo').innerHTML=Date()">收藏的歌单</button></a><br><br>
    </div>
    <div class="class3">
        <div class="class4">
            <a href="muban.html" target="_blank">
                <div style="float:left;claear:both;margin: 30px 20px 20px 80px">
                    <img src="1.img.jpg"width="150" height="150"style="text-align: center">
                </div>
            </a>
            <div class="class7">
            <button onclick="getElementById('demo').innerHTML=Date()">播放</button>
            <button onclick="getElementById('demo').innerHTML=Date()">分享</button>
            <button onclick="getElementById('demo').innerHTML=Date()">下载</button>
            </div>
            <div class="class"></div>
        </div>
        <div class="class5">歌曲列表</div>
    </div>
    <div class="class6"></div>
    </div>
</body>
</html>