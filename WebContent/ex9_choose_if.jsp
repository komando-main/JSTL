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
<%-- 
	현제 페이지는 money라는 파라미터를 받는다
	money에 따라 과일을 선텍 할수 있다
	사과 : 700
	배 : 1000
	샤인머스켓 : 1800
 --%>
<%--http://localhost:9090/1015_JSTL/ex9_choose.jsp?money= 직접 줄수있다 --%>
<%--
 <c:if test="${param.money >= 1800 }">
 	사과 배 샤인머스켓 중 하나 선텍
 </c:if>
 <c:if test="${param.money >= 1000 and param.money <= 1799}">
 	사과 배 중 하나선텍
 </c:if>
 <c:if test="${param.money >= 700 and param.money <= 999}">
 	사과 선텍
 </c:if>
<%--     eq   ne    empty    !empty     --%> 
<%--	 ==	  !=   비어있다	 비어있지 안다 --%>


 --%>

<c:choose><%-- else if(스위치 문과 비슷하기도 하다) --%>
	<c:when test="${param.money >= 1800 }">사과 배 샤인머스켓 중 하나 선텍</c:when>
	<c:when test="${param.money >= 1000 }">사과 배 중 하나 선텍</c:when>
	<c:when test="${param.money >= 700 }">사과 선텍</c:when>
	<c:otherwise>
		선텍할수 있는 과일이 없습니다
	</c:otherwise>
</c:choose>

</body>
</html>