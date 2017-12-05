<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="common.cookie"%>
<html>
<%
	String data = cookie.readCookie(request, "name");
	if (data.equals("")) {
		out.println("<script>window.location.href='main.jsp';</script>");
	} else {
		cookie.writeCookie(response, "name", "");
		out.println("<script>window.location.href='main.jsp';</script>");
	}
%>
</html>