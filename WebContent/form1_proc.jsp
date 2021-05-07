<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
	String lname = request.getParameter("lname");
	String fname = request.getParameter("fname");
%>

<body>
First name : <%= fname%><br>
Last name : <%= lname%><br>
</body>
</html>