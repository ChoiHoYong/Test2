<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
	.updown{
	border: 1px solid black;
	width: 10px;
	height:10px;
	padding:0;
	display: block;
	background-color: blue;
	}
</style>
<body>
	<%
	for(int i = 0; i < 20; i++){
		for(int j = 0; j < 19; j++){
			
	%>
		<div class="updown" style="float:left;"></div>
		
	<%	
		}
	%>
		<div class="updown"></div>
	<% 
	}
	%>
	
	
</body>
</html>