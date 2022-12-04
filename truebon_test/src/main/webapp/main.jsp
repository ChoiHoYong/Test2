<%@page import="truebon_test.dsa"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.updown{
	border: 1px solid black;
	width:0.1px;
	height:50px;
	}

	#div_con{
	width: 1000px;
	height: 1000px;
	background-color: white;
	position:absolute; left:480px; top:10px;
}
</style>
</head>
<body>	
	<script type="text/javascript">
	function reLoad(){
		location.reload();
	}
	</script>
	<img src="images/sample_main.png" alt="이미지" style="position:static;"/>
	
	<form action="main_process.jsp">
		<input name="haeng" id="haeng"style="position:absolute; left:350px; top:110px; width:80px; text-align: center;">
		<input name="yeol" id="yeol" style="position:absolute; left:350px; top:140px; width:80px; text-align: center;">
		<input type="submit" value="조정" style="margin-left:365px; text-align: center;
			position:absolute; top:170px; ">
		<input type="button" value="새로고침" onClick="reLoad()" style="margin-left:353px; text-align: center;
			position:absolute; top:200px; ">
	</form>
	<div id="div_con">
		
		<img src="images/sample_update.png" alt="이미지"  style="position:absolute;" />
		<img src="images/board.png" alt="이미지" style="position:absolute;"  />
	</div>
	
</body>
</html>