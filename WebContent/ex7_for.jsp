<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL for연습</h1>
<%
	String[] ar = {"자바","mybatis","Spring","Lombok"};
	request.setAttribute("ar", ar);
%>
	<ul>
	<%-- for(String str : ar){ --%>
	<c:forEach var="str" items="${ar }" varStatus="st"><%-- 리스트나 배열구조를 반복처리할때 쓰인다!! --%>
		<li>${st.index+1} . ${str }</li>
	</c:forEach>	
	</ul>
	
	<ol>
	<c:forEach begin="1" end="10">
		<li>INCREPAS</li>
	</c:forEach>
	</ol>
</body>
</html>