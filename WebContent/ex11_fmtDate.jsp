<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%-- JSTL 라이브러리 --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %><%-- JSTL 함수(펑션=function)라이브러리 --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%><%-- 글및 숫자 표현 (포멧) --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="now" value="<%=new Date() %>"/>
<h2>${now}</h2>
	<h2><fmt:formatDate value="${now}" pattern="yyyy-MM-dd"/></h2><%-- 날짜 mm은 분을 의미 --%>
	<h2><fmt:formatDate value="${now}" pattern="(a)hh:mm:ss"/></h2><%-- 시간 (a)hh:mm:ss 오전 오후--%>
	<h2>------------------------숫자 형식----------------------------</h2>
	<h2><fmt:formatNumber value="120000000"/></h2>
	<h2><fmt:formatNumber value="120000000" groupingUsed="false"/></h2>
	<h2><fmt:formatNumber value="000120000000" pattern="#,##0.00"/></h2><%-- 1000단위 표시 #은 의미가 없으면 출력을 하지 안는다 하지만 0을 쓸경우 의미가 없어도 표시한다 --%>
	<h2><fmt:formatNumber value="0.195" type="percent" pattern="0.00%"/></h2><%-- 타입지정 --%>
	<h2><fmt:formatNumber value="120000000" type="currency" currencySymbol="￦"/></h2><%-- 타입지정 currency(금액) currencySymbol="￦"--%>
</body>
</html>