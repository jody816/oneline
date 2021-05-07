<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- This is a JSP example with scriplets, comments, expression --%>
<% out.println("This is guru JSP Example"); %>
<% out.println("The number is "); %>
<%! int num12 = 12; int num32 = 12;%>
<%= num12*num32 %><br>
Today's date : <%= (new java.util.Date()).toLocaleString()%>
</body>
</html>