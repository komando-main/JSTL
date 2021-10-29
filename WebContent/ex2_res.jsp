<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>m_pw: ${m_pw }</h1>
	<h1>param.m_pw: ${param.m_pw }</h1>
	<h1>param[m_pw]: ${param["m_pw"] }</h1>
	<h1>sessionScope.m_id: ${sessionScope.m_id }(세션으로 바로가서 찾는다)</h1>
	<h1>m_id: ${m_id }(리퀘스트에 먼저 저장되어 있는지 확인후 세션으로 가서 찾는다)</h1>
</body>
</html>