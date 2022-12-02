<%@page import="java.awt.Color"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
	.classBlue{
	border: 1px solid black;
	width: 10px;
	height:10px;
	padding:0;
	display: block;
 	background-color: blue;
	}
	.classWhite{
	border: 1px solid black;
	width: 10px;
	height:10px;
	padding:0;
	display: block;
 	background-color: white;
	}
	.classGreen{
	border: 1px solid black;
	width: 10px;
	height:10px;
	padding:0;
	display: block;
 	background-color: Green;
	}
	.div_posi{
	width: 1000px;
	height: 1000px;
	background-color: white;
	position:absolute; left:300px; top:10px;
}
</style>
<body>
	<%
	// sample 생성
	List<String> list = new ArrayList<String>();
	for(int n = 1; n <= 400; n++){
		list.add("classBlue");
	}
 
	list.set(210,"classWhite");
	// 변경본 루틴
	for(int j = 1; j <= list.size(); j++){
		if((j-1) <= 0 || (j+1) >= 400 || (j-20) <= 0 || (j+20) >= 400){
			continue;
		}
		else{
			if ((list.get(j-1).equals("classWhite")) || (list.get(j+1).equals("classWhite")) || (list.get(j+20).equals("classWhite") ) || (list.get(j-20).equals("classWhite")))	{			
				}
			else {
				list.set(j, "classGreen");
			}	
		}			
	}

	//샘플 그리기
	for(int i = 1; i <= list.size(); i++){
	%>	
		<div class="classBlue" id="<%=i%>" style="float:left;"></div>
	<%
		if(i % 20 == 0){
	
			 %>		
	
			<div class="classBlue" id="<%=i%>"></div>	
	<%
		}
		
	}
	%>
		
	<div class="div_posi">
	<% 
	//변경본 그리기
	for(int i = 1; i <= list.size()-1; i++){
	%>
		<div class="<%=list.get(i) %>" id="<%=i%>" style="float:left;"></div>
	<%
		if(i % 20 == 0){
	%>
			<div class="<%=list.get(i) %>" id="<%=i%>"></div>	
	<%
		} 
	}
	%>
	</div>
</body>
</html>