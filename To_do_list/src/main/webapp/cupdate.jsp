<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">

	function del(){
		if(confirm("삭제 완료 되었습니다")){
			location.href = "detaillist.do"
		}
	}
	
	function update(){
		if(confirm("수정 완료 되었습니다")){
			location.href = "detaillist.do"
		}
	}
</script>

<form action="cupdate.do" method="post">
<table>
<tr>
	<td align="center">리스트 수정</td>
</tr>
<tr>
<td>
<input type="hidden" name="td_category_cId" size="5" value="${cupdate.td_user_uId }">
</td>

</tr>
			
<tr>
	<td align="right">내용 : </td>
	<td><textarea rows="5" cols="20" name="wContent" >${cupdate.wContent}</textarea></td>
					
</tr>
			
<tr>
	<td align="right">완료여부 : </td>
	<td><input type="radio" name="wFinish" value="" checked="checked">O
		<input type="radio" name="wFinish" value="">X
	</td>
</tr>
			
<tr>
	<td></td>
	<td align="right"><input type="button" value="수정" onclick="update()"></td>	
</tr>
</table>
</form>
		
		
		
<form action="cdelete.do" method="post">
<table>
<tr>
<td align="right">
	<input type="button" value="삭제" onclick="del()" >
	<input type="hidden" name="td_category_cId" size="5" value="${cupdate.td_user_uId }">
</td>
</tr>
</table>
</form>
</body>
</html>