<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
</head>
<body>
	
	<h3>리스트 입력</h3>
	
	<table border="0">
		<form action="cwrite.do" method="post">
//			<tr>
//				<td align="right">카테고리 이름</td>
//				<td><input type="text" name="wName" size="30"></td>
//			</tr>
			<tr>
				<td align="right">내용</td>
				<td><textarea name ="wContent" rows="20" cols="50"></textarea></td>
			</tr>
			<tr>
				<td align="right">완료 여부</td>
				<td><input type="radio" name="wFinish" checked="checked" value="X">X
					<input type="radio" name="wFinish" value="O">O</td>
			</tr>
			<tr>
				<td><input type="submit" value="입력"></td></form>
			<form action="detaillist.do" method="post">
				<td><input type="submit" value="목록"></td></form>
			</tr>
		
	</table>
</body>
</html>