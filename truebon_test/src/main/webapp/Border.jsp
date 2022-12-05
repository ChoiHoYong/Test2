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
	.div_posi2{
	width: 1000px;
	height: 1000px;
	background-color: white;
	position:absolute;top:300px;
	}
</style>
<body>
	<%
	// sample 생성
	List<String> list = new ArrayList<String>();
	for(int n = 1; n <= 400; n++){
		if(n <= 80 | 
				n==81 | n==82 | n==83 | n==84 | n==101 | n==102 | n==103 | n==104 | n==121 | n==122 | n==123 | n==124 | n==141 | n==142 | n==143 | n==144 | n==161 | n==162 | n==163 | n==164 | n==181 | n==182 | n==183 | n==184 | n==201 | n==202 | n==203 | n==204 | n==221 | n==222 | n==223 | n==224 | n==241 | n==242 | n==243 | n==244 | n==261 | n==262 | n==263 | n==264 | n==281 | n==282 | n==283 | n==284 | n==301 | n==302 | n==303 | n==304 | n==321 | n==322 | n==323 | n==324 | n==341 | n==342 | n==343 | n==344 | n==361 | n==362 | n==363 | n==364 | n==381 | n==382 | n==383 | n==384 |
				n==165 | n==166 | n==167 | n==168 | n==169 | n==170 | n==171 | n==172 | n==173 | n==174 | n==175 | n==176 | n==185 | n==186 | n==187 | n==188 | n==189 | n==190 | n==191 | n==192 | n==193 | n==194 | n==195 | n==196 | n==205 | n==206 | n==207 | n==208 | n==209 | n==210 | n==211 | n==212 | n==213 | n==214 | n==215 | n==216 | n==225 | n==226 | n==227 | n==228 | n==229 | n==230 | n==231 | n==232 | n==233 | n==234 | n==235 | n==236){
			list.add("classBlue");
		}
		else{
			list.add("classWhite");	
		}
		
	}
	%>
	<div>
	<% 
	//샘플 그리기
	for(int i = 1; i <= list.size()-1; i++){
	%>
		<div class="<%=list.get(i-1) %>" id="<%=i%>" style="float:left;"></div>
	<%
		if(i % 20 == 0){
	%>
			<div class="<%=list.get(i-1) %>" id="<%=i%>"></div>	
	<%
		} 
	}	
	%>
	<div class="<%=list.get(399) %>" id="<%=400%>" style="float:left;"></div>
	</div>
		
 	<%
	// 변경본 루틴
	for(int j = 1; j <= list.size(); j++){
		// out of bounds error
		if((j-1) <= 0 || (j+1) >= 400 || (j-19) <= 0 || (j+20) >= 400){
			
		}
		// 테두리 파랑
		else if(j % 20 == 0 | j % 20 == 19){
			if((list.get(j-1).equals("classBlue"))){		
			}
		}

		else{
			if ((list.get(j-1).equals("classWhite")) || (list.get(j+1).equals("classWhite")) || (list.get(j+20).equals("classWhite") ) || (list.get(j-20).equals("classWhite")))	{			
				}
			else {
				list.set(j, "classGreen");
			}
		}			
	}
	%>
	
	<%
	// Green To White
	for(int k = 1; k <= list.size()-1; k++){
		if(list.get(k-1).equals("classGreen")){
			list.set(k-1,"classWhite");
		}
	}
	%>
	
	<div class="div_posi">
	<% 
	//변경본 그리기
	for(int i = 1; i <= list.size()-1; i++){
	%>
		<div class="<%=list.get(i-1) %>" id="<%=i%>" style="float:left;"></div>
	<%
		if(i % 20 == 0){
	%>
			<div class="<%=list.get(i-1) %>" id="<%=i%>"></div>	
	<%
		} 
	}	
	%>
	<div class="<%=list.get(399) %>" id="<%=400%>" style="float:left;"></div>
	</div>
<!-- 	--------------------------------------------------------------------- -->
	<%
	// sample 생성
	List<String> list2 = new ArrayList<String>();
	for(int n = 1; n <= 400; n++){
		if(n <=20 | n % 20 == 0 | n % 20 == 19 | n % 20 == 18 | n >= 340 | ((n>=100) && (n % 20 > 6))){
			list2.add("classBlue");
		}
		else{
			list2.add("classWhite");	
		}
		
	}
	%>
	<div class="div_posi2">
	<% 
	//샘플 그리기
	for(int i = 1; i <= list2.size()-1; i++){
	%>
		<div class="<%=list2.get(i-1) %>" id="<%=i%>" style="float:left;"></div>
	<%
		if(i % 20 == 0){
	%>
			<div class="<%=list2.get(i-1) %>" id="<%=i%>"></div>	
	<%
		} 
	}	
	%>
	<div class="<%=list2.get(399) %>" id="<%=400%>" style="float:left;"></div>
	</div>
	
	<%
	// 변경본 루틴
	for(int j = 1; j <= list2.size(); j++){
		// out of bounds error
		if((j-1) <= 0 || (j+1) >= 400 || (j-19) <= 0 || (j+20) >= 400){
			
		}
		// 테두리 파랑
		else if(j % 20 == 0 | j % 20 == 19){
			if((list2.get(j-1).equals("classBlue"))){		
			}
		}

		else{
			if ((list2.get(j-1).equals("classWhite")) || (list2.get(j+1).equals("classWhite")) || (list2.get(j+20).equals("classWhite") ) || (list2.get(j-20).equals("classWhite")))	{			
				}
			else {
				list2.set(j, "classGreen");
			}
		}			
	}
	%>
	
	<%
	// Green To White
	for(int k = 1; k <= list2.size()-1; k++){
		if(list2.get(k-1).equals("classGreen")){
			list2.set(k-1,"classWhite");
		}
	}
	%>


<div class="div_posi2" style="left:300px;">
	<% 
	//샘플 그리기
	for(int i = 1; i <= list2.size()-1; i++){
	%>
		<div class="<%=list2.get(i-1) %>" id="<%=i%>" style="float:left;"></div>
	<%
		if(i % 20 == 0){
	%>
			<div class="<%=list2.get(i-1) %>" id="<%=i%>"></div>	
	<%
		} 
	}	
	%>
	<div class="<%=list2.get(399) %>" id="<%=400%>" style="float:left;"></div>
	</div>
</body>
</html>