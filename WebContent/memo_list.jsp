<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style>
	body {font-family: 'Nanum Pen Script', cursive;}
</style>
</head>
<body>
<%
	String url = "jdbc:mysql://localhost/world?characterEncoding=UTF-8&serverTimezone=UTC";
	String user = "root";
	String passwd = "2307";
	Connection con = null;
	String sql = "select * from oneline";
	PreparedStatement pstmt = null;

	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection(url, user, passwd);

	pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(); //select
	while(rs.next()) {
		int no = rs.getInt(1);
		String memo = rs.getString("memo");
		String wdate = rs.getString(3);

		out.print("^^" + no + ":" + memo + "(" + wdate + ")<br>");
	}
	rs.close();
	pstmt.close();
	con.close();
	
	//String sqld = "delete from oneline(memo) where num=?";
%>
<input type="submit" value="메모 작성" onclick="location.href='http://localhost:8080/memo/memo01.html'">

</body>
</html>