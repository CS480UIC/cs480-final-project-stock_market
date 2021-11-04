<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		background: #80b280; 
	}
	a {
		text-transform:none;
		text-decoration:none;
	} 
	a:hover {
		text-decoration:underline;
	}
</style>
  </head>
  
  <body>
<h1 style="text-align: center;">Stock Market Database</h1>
<div style="font-size: 10pt;">
	<c:choose>
		<c:when test="${empty sessionScope.session_user }">
			<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">Login</a> |&nbsp; 
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">Register</a> |&nbsp; 
			
			
		</c:when>
		<c:otherwise>
			Hello：${sessionScope.session_user.username };
			<a href="<c:url value='/jsps/user/queries.jsp'/>" target="body">Query Result</a> |&nbsp;&nbsp;
			<a href="<c:url value='/UserServletLogout'/>" target="_parent">Logout</a> |&nbsp; 
			<a href="<c:url value='/jsps/Account/menu.jsp'/>" target="body">Account</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/Location/menu.jsp'/>" target="body">Location</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/Brokerage/menu.jsp'/>" target="body">Brokerage</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/CurrentStockInfo/menu.jsp'/>" target="body">Current Stock Info</a> |&nbsp;&nbsp;
			<a href="<c:url value='/jsps/fundamental_analysis/menu.jsp'/>" target="body">Fundamenal_analysis</a> |&nbsp;&nbsp;
		    <a href="<c:url value='/jsps/technical_analysis/menu.jsp'/>" target="body">Technical Analysis</a> |&nbsp;&nbsp;
			
		</c:otherwise>
	</c:choose>

</div>
  </body>
</html>

