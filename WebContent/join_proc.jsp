<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String uid = request.getParameter("uid");
	String umail = request.getParameter("umail");
	String pwd1 = request.getParameter("pwd1");
	String pwd2 = request.getParameter("pwd2");
	String path = request.getParameter("path");
	String memo = request.getParameter("memo");
%>
<body>
id : <%= uid%><br>
email : <%= umail%><br>
password : <%= pwd1%><br>
password check : <%= pwd2%><br>
department : <%= path%><br>
memo : <%= memo%><br>
</body>
</html>