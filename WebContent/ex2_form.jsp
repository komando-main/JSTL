<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>폼 연습</h1>
	<form action="ex2_ok.jsp" method="post">
		<label for="s_id">ID:</label>
		<input id="s_id" name="s_id"/><br/>
		
		<label for="s_pw">PW:</label>
		<input type="password" id="s_pw" name="s_pw"/>
		
		<input type="hidden" name="cPage" value="5"/>
		
		<label>연락처:</label>
		<select id="s_phone" name="s_phone">
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="017">017</option>
		</select>
		<label>-</label>
		<input type="text" name="s_phone"/>
		<label>-</label>
		<input type="text" name="s_phone"/>
		
		<input type="button" value="보내기" onclick="sendData(this.form)"/>
		
	</form>
	<script>
		function sendData(frm) {
			frm.submit();
		}
	</script>
</body>
</html>