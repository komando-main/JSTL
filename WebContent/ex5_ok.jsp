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
<%
	//요청시 한글 처리
	request.setCharacterEncoding("utf-8");
	
	
	
%>

<%--파라매터 값을 담을 변수 선언 --%>
	<c:set var="s_id" value="${param.s_id }"/>
	
	<c:if test="${s_id eq 'admin'}"><%-- ==은 eq와 같다. --%>
		<h2>관리자님 환영합니다</h2>
	</c:if>
	<c:if test="${s_id ne 'admin'}"><%-- !=은 ne와 같다 --%>
		<h2>회원님 환영합니다</h2>
	</c:if>
</body>
</html>