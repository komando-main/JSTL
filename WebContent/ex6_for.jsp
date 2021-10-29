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
	<h1>JSTL for문 연습</h1>
	<c:set var="cnt" value="10" scope="page"/><%--scope 사용 범위 지정--%>
	<ul>
	<c:forEach begin="0" end="${cnt }" varStatus="st"><%--반복횟수를 정확히 알때  --%>
		<li>${st.index } / <c:out value = "${st.index }"/></li><%-- 반복횟수 --%>
	</c:forEach>
	</ul>
	
	
	<c:set var="str" value="<strong>INCREPAS</strong>"/>
	<h1>${str }</h1>
	<h1><c:out value="${str }" escapeXml="true"/></h1>
</body>
</html>