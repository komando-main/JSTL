<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%-- JSTL 라이브러리 --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %><%-- JSTL 함수(펑션=function)라이브러리 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
현제 페이지에서 str이라는 파라미터를 받는다.
받은 파라미터의 값 길이를 구해보자
--%>
	
	<h2>str 파라이터 값 : ${param.str }</h2>
	<h2>str 길이 : ${param.str.length() }</h2>
	<h2>str.substring(0,3) : ${param.str.substring(0,3) }</h2>
	
	<c:set var="s1" value="${param.str }"/><%-- ****주소 값****을 담는다 --%>
	
	<h2>substring(s1,0,3) : ${fn:substring(s1,0,3) }</h2><%-- 내장 함수 사용시 펑션 라이브러리 사용 --%>
	<h2>toUpperCase(s1,0,3) : ${fn:toUpperCase(s1) }</h2><%-- fn:toUpperCase(param.str) JSTL 펑션 라이브러리 사용--%>
	<h2>indexOf(s1, "c") : ${fn:indexOf(s1, "c") }</h2>
	<h2>replace(s1, "cd", "CD") : ${fn:replace(s1, "cd", "CD") }</h2>
	<h2>length(s1) : ${fn:length(s1) }</h2>

</body>
</html>