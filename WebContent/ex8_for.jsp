<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ex8.TestVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	TestVO t1 = new TestVO("마루치","010","asd1");
	TestVO t2 = new TestVO("아루치","010","asd2");
	TestVO t3 = new TestVO("창루치","010","asd3");

	List<TestVO> list = new ArrayList<TestVO>();
	list.add(t1);
	list.add(t2);
	list.add(t3);
	
	session.setAttribute("list", list);//세션에 저장
%>
	<button type="button" onclick="javascript:location.href='ex8_for2.jsp'">버튼</button>
	
</body>
</html>