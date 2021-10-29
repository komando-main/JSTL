<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>저장된 값들</h1>
	<h2>${u_id }</h2>
	<h2>같은 이름으로 리퀘스트와 세션에 저장이되었다면
	 	우선순위가 리퀘스트에 있다</h2>
	<h2>sessionScope.u_id:${sessionScope.u_id }</h2>
	<h2>리퀘스트에 map구조를 저장했다. 이 구저에 있는 아이디를 출력:
		${requestScope.m_map.m_id }
	</h2>
</body>
</html>