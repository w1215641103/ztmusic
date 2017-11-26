<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<style type="text/css">
            a:link,a:visited
            {
                color: white;
                text-decoration:none;/*超链接无下划线*/
            }
            #container{			/*全体设置*/
                background-color:#141414;
                margin:0px;
                padding:0px;
                width:100%px;
                height:60px;
                        }
            #banner{				/*页头设定*/
                background-color:#141414;
                width:1200px;
                height:60px;
                border:0px #330000 solid;
                blackground:#330000;
                margin: 0px auto;
            }
            #a_0{
                float:left;
                line-height:190%;
                /*text-indent:300px; /*文字缩进*/
                font-size:30px;			/*文字大小*/
                font-family:Blackoak Std;	/*字体*/
            }
            #a_1{
                float:left;
                line-height:300%;
                width:100px;
                height:60px;
                font-size:20px;
                text-align:center;
                background-color:#1a1a1a;
                /*	border-radius:2em;*/
            }
            #a_1:hover
            {
                width:120px;
                height:60px;
                background-color:#141414;
                text-align:center;
                transition-delay:150ms;/*延迟*/
                transition-duration:500ms;/*过渡动画时间*/
                transition-property:width;/*动画效果是改变宽度*/

            }
            #a_2{
                float:left;
                line-height:300%;
                width:100px;
                height:60px;
                text-align:center;
                font-size:20px;
                background-color:#1a1a1a;
                text-decoration:none;
            }
            #a_2:hover
            {
                width:120px;
                height:60px;
                background-color:#141414;
                text-align:center;
                transition-delay:150ms;/*延迟*/
                transition-duration:500ms;/*过渡动画时间*/
                transition-property:width;/*动画效果是改变宽度*/
            }
            #a_3{
                float:left;
                line-height:300%;
                width:75px;
                height:60px;
                background-color:#1a1a1a;
                font-size:20px;
            }
            #a_3:hover
            {
                width:95px;
                height:60px;
                background-color:#141414;
                text-align:center;
                transition-delay:150ms;/*延迟*/
                transition-duration:500ms;/*过渡动画时间*/
                transition-property:width;/*动画效果是改变宽度*/
            }
            #a_4{
                float:left;
                line-height:300%;
                width:50px;
                height:60px;
                text-align:center;
                background-color:#1a1a1a;
                /*	border:1px solid black;*/
                font-size:20px;
            }
            #a_4:hover
            {
                width:70px;
                height:60px;
                background-color:#141414;
                transition-delay:150ms;/*延迟*/
                transition-duration:500ms;/*过渡动画时间*/
                transition-property:width;/*动画效果是改变宽度*/
            }
            #a_5{
                float:left;

            }

            #a_dl{
                float:left;
                line-height:270%;
                font-size:20px;
                color:white;
            }
            #fenge{
                background-color:#aa0700;
                width:1920px;
                height:5px;

            }
            #fenge2{
                background-color:#141414;
                width:1920px;
                height:15px;
            
             .leftwenli{
          		float:left;
          		width:358px;
          		height:1399px;
          		border:1px;
          		border-style:solid;
          		background-color:gray;
          }
          .rightwenli{
          		float:right;
          		width:358px;
          		height:1399px;
          		border:1px;
          		border-style:solid;
          		background-color:gray;
          }
            .mid{
            	float:left;
                width:50%;
                hight:500px;
            }
            
            
            
            
</style>


</head>
<body>
<div id="container"style="position:absolute;">
    <div id="banner">			<!-- 页面头部 -->
        <div id="a_0"><a href="index.jsp">ZT .</a></div>
        <div id="a_1"><a href="faxianyy.jsp">发现音乐</a></div>
        <div id="a_2"><a href="wodeyy.jsp">我的音乐</a></div>
        <div id="a_3"><a href="yyren.jsp">音乐人</a></div>
        <div id="a_4"><a href="zhuce.jsp">注册</a></div>
        <div id="a_5">
            <table width="200" height="60" border="0">
                <tr>
                    <td><input type="search" name="searchword"/></td>
                    <td><input type="submit" name="button2" id="button2" value="搜索"/></td>
                </tr>
            </table>
        </div>
        <div id="a_dl">
            <form id="form1" name="form1" method="post" action="denglu.jsp?action=login">
                <table width="450" height="60" border="0">
                    <tr>
                        <td>用户名</td>
                        <td> <input name="id" type="hidden" id="id" value=" "/></td>
                        <td><input name="txtUserName" type="text" id="txtUserName" size="12"/></td>
                        <td>密码</td>
                        <td><input name="txtPassword" type="password" id="txtPassword" size="12"/></td>
                        <td><input type="submit" name="button" id="button" value="登陆"/></td>
                        <td><input type="submit" name="button1" id="button1"value="注册"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div id="fenge"></div>			<!-- 分割线 -->
    <div id="fenge2"></div>
    <div class="leftwenli"></div>		<!-- 左边背景纹理 -->
    <div class="rightwenli"></div>		<!-- 右边背景纹理 -->
    <div class="mid">
    	<div class="g_1"><a href=" "><img class="tou" src="images/bj1.jpg" alt="头像"width="100px" height="100px"></a></div>
    	<div class="g_2">
    		<h1 class="g_2_1"><b>class</b></h1>
    		<div class="g_2_2"><input type="submit" name="button2" id="button2" value="编辑个人资料"></div>
    		<hr>
    	<p>所在地区： </p>
    	<p>社交网络:</p>
    		<br>
    	</div>
    </div>
</div>
</body>
</html>