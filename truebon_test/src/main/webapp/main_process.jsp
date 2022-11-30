<%@page import="truebon_test.dsa"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int nWidth = Integer.parseInt(request.getParameter("haeng"));
		int nHeight = Integer.parseInt(request.getParameter("yeol"));
		dsa.resizePng(nWidth, nHeight);
		
		response.sendRedirect("main.jsp");
	%>
	
</body>
</html>