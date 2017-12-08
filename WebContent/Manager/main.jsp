<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.cookie"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ZT</title>
		<frameset rows="*,40px" frameborder="no">
<%		String cook1 = cookie.readCookie(request, "url");
			if (cook1.equals("")) {%>
				<frame src=index.jsp noresize="noreszie" >
<% 			}else {%>
				<frame src=<%=cook1 %> noresize="noreszie" >
<%			} %>
  				<frame src="musicplayer.jsp"  noresize="noreszie">
		</frameset>
	<script src="js/jplay.js"></script>
</html>
