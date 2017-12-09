<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
        .v_1{
            position: absolute;
            left:15%;
            top:20%;
            width:1200px;   /*改成获取屏幕宽度*/
            border:2px solid black;
            background-color:#666;
            height:2000px;
        }
        .v_x{
            position: absolute;
            left:0%;
            width:400px;
            height:400px;
            margin-left:5%;
            margin-right:10%;
            margin-bottom:10%;
            top:0%;
            background-color:red;
        }
        .v_a{
            position:absolute;
            top:6%;
            left:50%;
            border:2px solid black;
            background-color: antiquewhite;
            width:45%;
            height:200px;
        }
        .v_t{
            position:absolute;
            top:500px;
            left:20%;
            width:60%;
            border: 1px solid fuchsia;
            border-radius:10%;
            height:900px;
            background-color:white;
        }
        .v_j{
            position:absolute;
            top:460px;
            left:20%;
            width:60%;
            border: 1px solid black;
            border-radius:90%;
        }
        .v_s{
            position:absolute;
            border-right: 2px solid black;
            border-radius:70%;
            height:300px;
            top:3%;
            left:45%;
        }
    </style>
</head>
<body>  <!--你需要在每个DIV里面加东西然后用class="v_*"的形式布局css不要随便使用全局，定义css全部按v_*的格式来-->
                    <!--        v_1是全局         -->
    <div class="v_1">
                    <!--   v_s是中间那根竖线    -->
        <div class="v_s"></div>
                    <!--    v_x是图片布局       -->
        <div class="v_x"></div>
                    <!--    v_a是文本区域      -->
        <div class="v_a"></div>
                    <!--    v_j是歌词上面那根线   -->
        <div class="v_j"></div>
                    <!--    v_t是歌词区域        -->
        <div class="v_t"></div>
    </div>
</body>
</html>