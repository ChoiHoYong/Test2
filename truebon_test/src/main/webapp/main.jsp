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
	<tr>
		<td>
			<form action="main_process.jsp">
				행 : <input name="haeng" id="haeng">
				열 : <input name="yeol" id="yeol" >
				<input type="submit" value="사이즈 조정">
			</form>
		</td>
	</tr>
	
	<img src="https://i.imgur.com/RMUWYx2.png" alt="이미지" style="position:static;"/>
	<input style="position:absolute; left:310px; top:140px; width:80px; text-align: center;">
	<input type="button" value="조정" style="margin-left:100px; text-align: center;
		position:absolute; top:170px; ">
	
</body>
</html>