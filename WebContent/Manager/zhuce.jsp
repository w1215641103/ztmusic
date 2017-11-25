<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript">
function Mi(){
	
	var user = document.getElementById("txtUserName").value;
	var pwd = document.getElementById("txtPassword").value;
	if(user.trim() == "" || pwd.trim() == ""){
	    alert("用户和密码不能为空");
	    return false;
	}else if(pwd.length < 6){
	    alert("密码不能低于6位");
	    return false;
	}
	return true;
}
</script>
<style type="text/css">
body{
background-color:gray;
font-family:STKaiti;
color:white;
font-size:20px;
}
#biao{
height:500px;
width:400px;
margin:100px;
background-image:url(../images/bj8.JPG);
position:relative;  

}
#content{
 position:absolute;
 height:250px;
 width:350px;
 left:50%;             
 top:50%; 
 margin-left:-175px;   /*设置为宽度(width:450px;)的一半*/             
 margin-top:-125px; 
}
</style>
</head>
<body>
<%--  <%
   String regex = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$";	
   request.setCharacterEncoding("utf-8");
   String action=request.getParameter("action");
   String usern=request.getParameter("txtUserName");
   String pwd=request.getParameter("txtPassword");
   String email=request.getParameter("txtEmail");
   UserInfo info=new UserInfo();
   Users user=new Users();
   if("reg".equals(action))
   {
	   if(usern.equals("")||pwd.equals(""))
	   { out.println("<script>alert('用户名或密码不能为空');window.location.href('register.jsp');</script>");}
	   else if(user.isExistUserInfo(request.getParameter("txtUserName")))
	   {  out.println("<script>alert('用户已存在');window.location.href('register.jsp');</script>");}
	   else if(pwd.length()<6||pwd.length()>10)
	   { out.println("<script>alert('密码必须在6-10位之间');window.location.href('register.jsp');</script>");}
	   else if(pwd.matches(regex)==false)
	   {
		   out.println("<script>alert('密码必须包含数字和字母');window.location.href('register.jsp');</script>");
	   }
	   else if(email.indexOf("@")==-1)
	   {
		   out.println("<script>alert('邮箱格式不正确,必须包含@和.com');window.location.href('zhuce.jsp');</script>");
	   }
	   else if(email.indexOf(".com")==-1)
	   {
		   out.println("<script>alert('邮箱格式不正确,必须包含@和.com');window.location.href('zhuce.jsp');</script>");
	   }
	   else 
	   {
		   info.setUsername(request.getParameter("txtUserName"));
		   info.setPassword(MD5.Encrypt(request.getParameter("txtPassword")));
		   info.setEmail(request.getParameter("txtEmail"));
		   info.setPower("user");
		   user.insert(info);
		   out.println("<script>alert('注册成功');window.location.href('index.jsp');</script>");
	   }
   }
%> --%>
<center>
<div id="biao">
<div id="content">
    <form id="form1" name="form1" method="post" action="zhuce.jsp?action=reg">
          <table width="100" border="0">
          <tr id="1">
           <td colspan="2" align="center"><strong>用户注册</strong></td>
       </tr>
                <tr>
                    <td>用户名</td>
                    <td>
                        <input type="text" name="txtUserName" id="txtUserName" width="500px"/>
                    </td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td>
                        <input type="text" name="txtPassword" id="txtPassword" width="500px" />
                    </td>
                </tr>
               <!--   <tr>
                    <td>确认密码</td>
                    <td>
                        <input type="text" name="txtPassword2" id="txtPassword2" width="500px"/>
                    </td>
                </tr>-->
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="text" name="txtEmail" id="txtEmail" width="500px"/>
                    </td>
                </tr>
                <tr>
                    <td>身份</td>
                    <td>
                        <input type="text" name="txtPower" id="txtPower" width="500px"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                         <input type="submit" name="button" id="button" value="注册" onclick="return Mi();"/>
                         <input type="reset" name="button2" id="button2" value="重置"/>
                    </td>
                </tr>
          </table>
    </form>
</div>
</div>
</center>
</body>
</html>