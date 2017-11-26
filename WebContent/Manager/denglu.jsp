<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>登录</title>
</head>
<body>
<%-- <%
   request.setCharacterEncoding("utf-8");
   String action=request.getParameter("action");
   UserInfo info=new UserInfo();
   Users user=new Users();
   if("reg".equals(action))
   {
	   
	   if(user.isExistUserInfo(request.getParameter("txtUserName")))
		   out.println("<script>alert('用户已存在');window.location.href('register.jsp');</script>");
	   else
	   {
		   
		   info.setEmail(request.getParameter("txtEmail"));
		   info.setPower(request.getParameter("txtPower"));
		   user.insert(info);
		   out.println("<script>alert('注册成功');window.location.href('index.jsp');</script>");
	   }
   }
%> --%>
<div id="content">
    <form id="form1" name="form1" method="post" action="register.jsp?action=reg">
          <table style = (width:100)  border="1">
                <tr>
                    <td>用户名</td>
                    <td>
                        <input type="text" name="name" id="name" width="500px"/>
                    </td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td>
                        <input type="text" name="pass" id="pass" width="500px"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                         <input type="submit" name="button" id="button" value="登录"/>
                         <input type="reset" name="button2" id="button2" value="重置"/>
                    </td>
                </tr>
          </table>
    </form>
</div>
</body>
</html>