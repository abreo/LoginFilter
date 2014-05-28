<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LoginCheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is LoginCheck JSP page. <br>
    <%if("dai".equals(request.getParameter("username")) && "123".equals(request.getParameter("password"))){
    	session.setAttribute("username",request.getParameter("username"));
    	session.setAttribute("password",request.getParameter("password"));
    	session.setMaxInactiveInterval(3);
    	response.sendRedirect("In.jsp");
    }else{
    	response.sendRedirect("Login.jsp");
    }
     %>
  </body>
</html>
