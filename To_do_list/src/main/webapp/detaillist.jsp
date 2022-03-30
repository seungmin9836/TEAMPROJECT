<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To do list 상세 화면</title>
<style>
body, table {
	width: 95%;  align : middle;
}
table{
margin: 0 auto;} 			<!-- table을 중간으로 맞추기 -->
</style>
</head>
 <script type="text/javascript">
 	function del(con){
 		if(confirm("정말 삭제하시겠습니까?")){
 			location.href = "cdelete.do?wContent=" + con;
 		}
 	}
 </script>
<body>
	<form action="detaillist.do">
	<table>
		<tr>
			<td style="width:30px;height:25px;"><input type="text" name="cName"
				value=안녕하세요. readonly="readonly"></td>
			<td style="width:30px;height:25px;"><a href="main.do.jsp">로그아웃</a></td>
			
		</tr>

	</table>
	</form>
<br>
<br>
<br>

	<form action="detaillist.do">
		<table>
			<tr>
				<td  align="center">카테고리 : <select  name="wImport" style="width:50px;height:35px;">
						<option>요리 </option>
						<option>운동 </option>
						<option>악기 </option>
						<option>약속 </option>
				</select></td>

				<td align="center">내용 : <input type="text"
					name="wContent" style="width:100px;height:35px;"></td>


				<td  align="center">검색 : <input type="image" src ="./img/search.png" style="width:30px;height:35px;"></td>
			

				<td  align="center"><input type="button" value="+" style="width:40px;height:35px;" 
					onClick="cwrite.do.java">추가</td>
				
			</tr>
		</table>
			<tr>
		<table>	
				
				<th style="width:50px;height:35px;" align="center">카테고리이름</th>
				<th style="width:50px;height:35px;" align="center">내용</th>
				<th style="width:30px;height:35px;" align="center">완료여부</th>
				<th style="width:30px;height:35px;" align="center">수정</th>
				<th style="width:30px;height:35px;" align="center">삭제</th>
				
			</tr>

		</table>
		
	</form>
	<table border="1">
	 <c:forEach items="${list }" var="dto">
			<tr>
				<td style="width:50px;height:35px;" align="center">${dto.wName }</td>
				<td style="width:50px;height:35px;" align="center">${dto.wContent }</td>
				<td style="width:30px;height:35px;" align="center">${dto.wFinish }</td>
				<td style="width:30px;height:35px;"><a href="cupdate.do?wContent=${dto.wContent}"> <img src ="./img/revise.png" align="center" style="width:30px;height:30px;"/></a></td>
				<td style="width:30px;height:35px;"><img src ="./img/delete.png" align="center" style="width:30px;height:30px;" onclick="del('${dto.wContent}')"/></td>
			
			</tr>
		</c:forEach> 

		
		
		
	</table>
	
</body>
</html>