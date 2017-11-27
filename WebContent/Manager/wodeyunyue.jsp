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
            font-size: 20px;
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
            margin-top: 0px;
        }
        .class6{
            border: 1px solid gainsboro;
            background-color:white;
            height:43.5%;
            width: 60%;
            margin-left: 291px;
        }
        .class7{
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
a:link{color:black;}
a:visited{color:black;}
a:hover{color:red;}
a:active{color:red;}
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
ul{
  list-style-type:none;
  margin:0;
  padding:0;
  overflow:hidden;
  background-color:#333;
 }
 li{
   float:left;
 }
 li a{
   display:block;
   color:white;
   text-align:center;
   padding:1px 20px;
   text-decoration:none;
 }
 li a:hover{
   background-color:#111;
   }
    </style>
</head>
<body>
<div class="mymusic" style="height: 611px">
    <div class="d-mymusic" >
    <ul>
       <li><a class="active" href="#home">发现音乐</a></li>
       <li><a href="#news">我的音乐</a></li>
       <li><a href="#content">商城</a></li>
       <li><a href="#about">音乐人</a></li>
       </ul>
</div>
    <div class="class1"></div>
    <div class="class2"><br>
        <p><b><a href="class3" target="_blank">我的歌手</a></b>
        <p><b><a href="class3" target="_blank">我的电台</a></b>
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
                <button onclick="getElementById('demo').innerHTML=Date()">评论</button>
            </div>
            
        </div>
        <div class="class5">歌曲列表</div>
        <div class="class"></div>
    </div>
    <div class="class6">
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