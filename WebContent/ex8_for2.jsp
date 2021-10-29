<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		width: 600px;
		border-collapse: collapse;
	}
	table th, table td{
		border: 1px solid black;
		padding: 4px;
	}
	table caption{
		text-indent: -9999px;
		height: 0;
	}
	
	.popup{
		display: none;
	}
</style>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
  
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
</head>
<body>
	<div id="wrap">
		<header>
			<h1>회원 목록</h1>
		</header>
		<article>
			<table>
				<caption>회원</caption>
				<colgroup>
					<col width="30px"/>
					<col width="100px"/>
					<col width="150px"/>
					<col width="*"/>
					
				</colgroup>
				<thead>
					<tr>
						<td colspan="4">
							<input type="button" value="추가" 
								onclick="addWin()"/>
							<input type="button" value="검색" 
								onclick="searchWin()"/>
						</td>
					</tr>
					<tr>
						<th>번호</th>
						<th>이름</th>
						<th>전화</th>
						<th>이메일</th>
					</tr>
				</thead>
				<tbody>				
				<c:forEach var="vo" items="${sessionScope.list }" varStatus="st"><%-- 리스트나 배열구조를 반복처리할때 쓰인다!! varStatus 인덱스값--%>
					<tr>
						<td>${st.index+1 }</td><%-- 인덱스는 0부터 시작한다 --%>
						<td>${vo.name }</td>
						<td>${vo.phone }</td>
						<td>${vo.email }</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</article>
	</div>

</body>
</html>





