<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
          <table width="100" border="0">
                <tr>
                    <td>用户名</td>
                    <td>
                        <input type="text" name="txtUserName" id="txtUserName" width="500px"/>
                    </td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td>
                        <input type="text" name="txtPassword" id="txtPassword" width="500px"/>
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
                         <input type="submit" name="button" id="button" value="注册"/>
                         <input type="reset" name="button2" id="button2" value="重置"/>
                    </td>
                </tr>
          </table>
    </form>
</div>
</body>
</html