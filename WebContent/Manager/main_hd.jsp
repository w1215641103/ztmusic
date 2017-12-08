<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
    <style>
        .h_t{
            width:70%;
            height:150px;
            position:fixed;
            top:0;
            left:20%;
            border-left:1px solid black;
            border-right:1px solid black;
            background-color:gray;
            z-index:2;
        }
        .h_t_kl{
            float:left;
            width:23%;
            height:90px;
            font-size: 30px;
            padding-top:60px;
            text-align: center;
            border:1px solid black;
            background-color: gold;
        }
        .h_t_k{
            float:left;
            width:14%;
            height:90px;
            font-size: 30px;
            padding-top:60px;
            text-align: center;
            border:1px solid black;
            background-color: gold;
        }
        .h_m{
            position: fixed;
            top:155px;
            left:20%;
            width:13.3%;
            height:100%;
            border:1px solid black;
            background-color: blueviolet;
        }
        .h_m_l{
            float:left;
            width:99%;
            height:70px;
            border:1px solid black;
            background-color: gray;
        }
        .h_center{
            position: absolute;
            top:155px;
            left:33.5%;
            width:41.5%;
            height:10000px;
            border:1px solid black;
            background-color: burlywood;
            z-index:1;
        }
    </style>
</head>
<body>
       <!-- h_t是头部-->
    <div class="h_t">
                    <!-- kl是块的LOGO，t_l是a标签的属性，现未css美化，留着备用 -->
        <div class="h_t_kl"><a class="h_t_l" href=" ">zt.music</a></div>
        <div class="h_t_k"><a class="h_t_l" href=" ">分类1</a></div>
        <div class="h_t_k"><a class="h_t_l" href=" ">分类2</a></div>
        <div class="h_t_k"><a class="h_t_l" href=" ">分类3</a></div>
        <div class="h_t_k"><a class="h_t_l" href=" ">分类4</a></div>
        <div class="h_t_k"><a class="h_t_l" href=" ">分类5</a></div>
    </div>
                    <!--            左边的菜单栏              -->
    <div class="h_m">
        <div class="h_m_l"></div>
        <div class="h_m_l"></div>
        <div class="h_m_l"></div>
        <div class="h_m_l"></div>
        <div class="h_m_l"></div>
        <div class="h_m_l"></div>
        <div class="h_m_l"></div>
    </div>
    <div class="h_center"></div>
</body>
</html>