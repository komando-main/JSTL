<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//JSTL을 사용 하지 않는 경우
	String index=request.getParameter("idx");
	int res=5;//지역변수
	
	if(index != null){
		int i=Integer.parseInt(index);
		
		if(i>5){
%>
		<pre>i가 50% 이상이군요</pre>
<%
		}else{
%>
		<pre>i가 50% 미만이군요</pre>
<%
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	JSTL (JSP Standard Tag Library)
		-자바기반의 웹 환경에서 지원하는 확장된 Tag를 사용할 수 있도록
		제공되는 라이브러리다. (Tag를 이용한 제어문 지원)
		
		-http://archive.apache.org/dist/jakarta/taglibs/standard/binaries/
		위의 경로에서 아래에서 6번째 1.1.2버전을 다운 받아 압축을 해제한후
		해제된 폴더 안에 lib안에 있는 seandarb.jar와 jstl.jar을
		현프로젝트의 WEB-INF/
--%>
<%--JSTL 변수 선언 --%>
<c:set var="i" value="${param.idx }"/>
<h2>
	<c:if test="${i != null and i > 5 }"><%-- else if는 없다 --%>
		i가 5보다 크다
	</c:if>
	<c:if test="${i != null and i <= 5 }">
		i가 5이하
	</c:if>
</h2>
</body>
</html>