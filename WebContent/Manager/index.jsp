<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <title>Insert title here</title>
        <link rel="stylesheet" href="assets/css/style.css">
        <style type="text/css">
            a:link,a:visited
            {
                color: white;
                text-decoration:none;/*超链接无下划线*/
            }
        /*     body{
				background-color:#141414;

            } */
            #container{			/*全体设置*/
                background-color:#141414;
                margin:0px;
                padding:0px;
                width:100%px;
                height:60px;
            }
            #middle{		/*中间整个面板的固定大小*/
            	float:left;
                width:1200px;
                hight:500px;
/*                 border-left:1px #808080 solid;
                border-right:1px #808080 solid; */
                margin: 0px;
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
            }
            #nav{
                background-color:#aa0700;
                margin: 0px  auto ;
                width:1200px;
                height:32px;
            }
            #nav1{
                background-color:#aa0700;
                width:1920px;
                height:32px;

            }

            #b_0{
                float:left;
                /*	background-image:url(../images/red1.jpg);*/
                width:160px;
                height:32px;
            }
            #b_1{
                float:left;
                width:50px;
                height:25px;
                margin-right:30px;
                line-height:180%;
                border-radius:2em;
                font-size:15px ;
                text-align:center;
                color:white;
            }
            #b_1:hover
            {
                background-color: #7d040d;
                text-align:center;
                height:27px;
                width:60px;
                transition-delay:50ms;/*延迟*/
                transition-duration:300ms;/*过渡动画时间*/
                transition-property:width;/*动画效果是改变宽度*/

            }
            #b_2{
                float:left;
                width:50px;
                height:25px;
                margin-right:30px;
                line-height:180%;
                border-radius:2em;
                font-size:15px;
                text-align:center;
                color:white;
            }
            #b_2:hover
            {
                background-color: #7d040d;
                text-align:center;
                height:27px;
                width:60px;
                transition-delay:50ms;/*延迟*/
                transition-duration:300ms;/*过渡动画时间*/
                transition-property:width;/*动画效果是改变宽度*/
            }
            #b_3{
                float:left;
                width:50px;
                height:25px;
                margin-right:30px;
                line-height:180%;
                border-radius:2em;
                text-align:center;
                font-size:15px;
                color:white;
            }
            #b_3:hover
            {
                background-color: #7d040d;
                text-align:center;
                height:25px;
                width:60px;
                transition-delay:50ms;/*延迟*/
                transition-duration:300ms;/*过渡动画时间*/
                transition-property:width;/*动画效果是改变宽度*/
            }
            #b_4{
                float:left;
                width:50px;
                height:25px;
                line-height:180%;
                border-radius:2em;
                text-align:center;
                font-size:15px;
                color:white;
            }
            #b_4:hover
            {
                background-color: #7d040d;
                text-align:center;
                height:27px;
                width:60px;
                transition-delay:50ms;/*延迟*/
                transition-duration:300ms;/*过渡动画时间*/
                transition-property:width;/*动画效果是改变宽度*/
            }
            #midleft{
                float:left;
                width:800px;
                height:1000px;
                border:1px;
                border-style:solid;
                color:black;
                background-color:#323232;   

            }
            #midright{
                float:right;
                width:396px;
                height:1000px;
                border:1px;
                border-style:solid;
                background-color:gray;
            }
            #midl_0{
           		float:left;
                width:200px;
                height:20px;
                border:1;
                align:center;
                background-color:#323232;   

            }
           #midl_1{
    			float:right;
    			width:400px;
    			height:400ox;
    			border:1px;
    			background-color:#323232;       
           }
            .l_1{
                width:150px;
                height:50px;
                border-style:hiddle;
                align:center;
                
            }
            .l_2{
                width:50px;
                height:30px;
                font-size:20px;
                background-color:#323232;
                text-align:center;
            }
           	.l_2:hover{
           		height:50px;
           		 background-color:black;
           		 text-align:center;
           		transition-delay:50ms;/*延迟*/
                transition-duration:300ms;/*过渡动画时间*/
                transition-property:height;/*动画效果是改变宽度*/
           	}
            .t{
            	width:231px;
            	height:200px;
            	border:1;
            	margin:15px 10px 15px 10px;
            	border-style:hiddle;
            	text-align:center;
            }
            .t1{
				width:230px;
				height:200px;
				border-style:hiddle;
				
            }
            .r{
            	width:100px;
            	height:60px;
            	border:1;
            	margin:15px 0px 15px 0px;
            	border-style:hiddle;
            	text-align:center;
            	background-color:gray;
            	
            }
            .r1{
				width:100px;
				height:60px;
				border:1;
				border-style:;
				
            }
            .d{
            	background-color:red;
            }
          .r2{
          		width:290px;
				height:60px;
				border:1;
				text-align:center;
				border-style:;
          }
          .d:hover{
          		background-color:yellow;
          		transition-delay:50ms;/*延迟*/
                transition-duration:300ms;/*过渡动画时间*/
                transition-property:background-color;/*动画效果是改变宽度*/
          }
          .copyright{
         		width:1200px;
                height:70px;
                border:1;
                border-style:hiddle;
				
          }
          .copy{
         		width:1200px;
				height:60px;
				float:bottom;
				text-align:center;
				background-color:gray;
          }
          .leftwenli{
          		float:left;
          		width:358px;
          		height:1396px;
          		border:1px;
          		border-style:solid;
          		background-color:gray;
          }
          .rightwenli{
          		float:right;
          		width:358px;
          		height:1396px;
          		border:1px;
          		border-style:solid;
          		background-color:gray;
          }
        </style>
    </head>
<body id="body1" style="position:absolute;left:0px;top:0px;">
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
    <div id="nav1">
        <div id="nav">					<!-- 导航栏 -->
            <div id="b_0"></div>
            <div id="b_1"><a href="tuijian.jsp">推荐</a></div>
            <div id="b_2"><a href="paihang.jsp">排行榜</a></div>
            <div id="b_3"><a href="gedan.jsp">歌单</a></div>
            <div id="b_4"><a href="geshou.jsp">歌手</a></div>
        </div>
    </div>
    <div class="leftwenli"></div>		<!-- 左边背景纹理 -->
       <div class="rightwenli"></div>		<!-- 右边背景纹理 -->
    <div id="middle" >	<!-- 居中部分模板 -->
        <div id="jquery-script-menu"> </div>
        <div class="slider">
            <div class="slider-container">
                <div class="slider-wrapper">
                    <div class="slide"> <img src="assets/img/img5.jpg" alt="jQuery Slider with CSS Transitions"> </div>
                    <div class="slide"> <img src="assets/img/img2.jpg" alt="jQuery Slider with CSS Transitions"> </div>
                    <div class="slide"> <img src="assets/img/img3.jpg" alt="jQuery Slider with CSS Transitions"> </div>
                    <div class="slide"> <img src="assets/img/img4.jpg" alt="jQuery Slider with CSS Transitions"> </div>
                </div>
            </div>
        </div>
        <script src="assets/js/jquery-1.8.3.min.js"></script>
        <script src="assets/js/slider.js"></script>
        <script type="text/javascript">
            (function() {
                Slider.init({
                    target: $('.slider'),
                    time: 6000
                });
            })();
        </script>

        <div style="text-align:center;clear:both;">
            <script src="/gg_bd_ad_720x90-2.js" type="text/javascript"></script>
            <script src="/follow.js" type="text/javascript"></script>
        </div>

        <div id="midleft">				<!-- 主内容区左 -->
            <div >
            <table border=1 id="midl_0">
            	<tr>
            	<td>
            	<div class="l_1"><a href="tuijian.jsp"><img src="images/tuijian.jpg" border="0"  alt="推荐歌曲"></a></div>
            	</td>
            	 <td><div class="l_2"><a href="tuijian.jsp">推荐</a></div></td>
                 <td><div class="l_2"><a href="tuijian.jsp">榜单</a></div></td>
                 <td><div class="l_2"><a href="tuijian.jsp">专辑</a></div></td>
            	</tr>
            </table>
            </div>
            <br>
            <br>
            <br>
            <hr>
            <div>
            <table align="center" class="yinyue">		
            <!-- 	<tr>
                        <td><div class="l_1"><a href="tuijian.jsp"><img src="images/tuijian.jpg" border="0"  alt="推荐歌曲"></a></div></td>
                        <td><div class="l_2"><a href="tuijian.jsp">推荐</a></div></td>
                        <td><div class="l_2"><a href="tuijian.jsp">榜单</a></div></td>
                        <td><div class="l_2"><a href="tuijian.jsp">专辑</a></div></td>
            	</tr> -->
            <tr>
            	<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           		<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           		<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           	</tr>
            <tr>
            	<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           		<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           		<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           	</tr>
           	 <tr>
            	<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           		<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           		<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           	</tr>
           	 <tr>
            	<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           		<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           		<td>
           		<div class="t"><a href="tuijian.jsp"><img src="images/bj.jpg" class="t1" alt="歌曲1"></a></div>
           		</td>
           	</tr>
            </table>
            
            </div>
        </div>
        <div id="midright">
        <a>MUSICCLASS</a>
        <hr>
        <table class="mid_r">
        	<tr class="d">
        		<td><div class="r"><a href="tuijian.jsp"><img src="images/bj.jpg" class="r1" alt="歌曲1"></a></div></td>
        		<td><div class="r2"><a href="tuijian.jsp"><b>class</b></a></div></td>
        	</tr>
        	<tr class="d">
        		<td><div class="r"><a href="tuijian.jsp"><img src="images/bj.jpg" class="r1" alt="歌曲1"></a></div></td>
        		<td><div class="r2"><a href="tuijian.jsp"><b>class</b></a></div></td>
        	</tr>
        	        	<tr class="d">
        		<td><div class="r"><a href="tuijian.jsp"><img src="images/bj.jpg" class="r1" alt="歌曲1"></a></div></td>
        		<td><div class="r2"><a href="tuijian.jsp"><b>class</b></a></div></td>
        	</tr>
        	        	<tr class="d">
        		<td><div class="r"><a href="tuijian.jsp"><img src="images/bj.jpg" class="r1" alt="歌曲1"></a></div></td>
        		<td><div class="r2"><a href="tuijian.jsp"><b>class</b></a></div></td>
        	</tr>
        	        	<tr class="d">
        		<td><div class="r"><a href="tuijian.jsp"><img src="images/bj.jpg" class="r1" alt="歌曲1"></a></div></td>
        		<td><div class="r2"><a href="tuijian.jsp"><b>class</b></a></div></td>
        	</tr>
        </table>
        </div>
            <div class="copyright">
    	<table class="copy">
    		<tr>
    			<td>zhe li   shi  ye w wei  de  di fang</td>
    		</tr>
    	</table>
    </div>		<!-- 版权部分 -->
    </div>

   
 
</div>
</body>
</html>