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

	request.setCharacterEncoding("utf-8");
	
	String s_id = request.getParameter("s_id");
	session.setAttribute("m_id", s_id);

%>

	<h1>param.s_id: ${param.s_pw }</h1>
	<h1>
		${paramValues.s_phone[0]} -
		${paramValues.s_phone[0]} -
		${paramValues.s_phone[0]} (paramValues 를 이용하여 같은 이름을(param) 배열로 받을수 있다)
	</h1>
	
	<button type="button" 
	onclick="javascript:location.href='ex2_res.jsp?m_pw=${param.s_pw}'">다음</button>
</body>
</html>