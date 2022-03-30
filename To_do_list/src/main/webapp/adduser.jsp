<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.modify{
		position : absolute;
		top : 50%;
		left : 50%;
		transform: translate(-50%,-50%)
	}
</style>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<script type="text/javascript">
	function checkMember() {
		// 아이디
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
		var form = document.member
		var uId = form.uId.value
		if(!regExpId.test(uId)){
			alert("아이디는 문자로 시작해주세요.")
			form.uId.select()
			return
		}
		// 비밀번호
		var regExpPasswd = /^[0-9]*$/
		var uPw =form.uPw.value
		if(!regExpPasswd.test(uPw)){
			alert("비밀번호는 숫자만 가능합니다.")
			form.uPw.select()
			return
		}
		// 이름
		var regExpName = /^[가-힣]*$/
		var uName =form.uName.value
		if(!regExpName.test(uName)){
			alert("이름은 한글로 입력해주세요.")
			form.uName.select()
			return
		}
		// 전화번호
		var regExpPhone = /^\d{15}$/
		var uPhone = form.uPhone.value
		if(!regExpPhone.test(uPhone)){
			alert("전화번호를 확인해주세요.")
			form.uPhone.select()
			return
		}
		form.submit()
	}
</script>
<body>
<div class = "modify">
<h1 align="center">회원 가입</h1>
<br><br>
<form name="member" >
<table>
<tr>
<td align="right">아이디 : </td><td><input type = "text" size="20" name="uId"></td>
</tr>
<tr>
<td></td><td>**아이디 영문, 숫자 4~10자로 입력해주시기 바랍니다.</td>
</tr>
<tr>
<td align="right">비밀번호 : </td><td><input type = "text" size="20" name="uPw"></td>
</tr>
<tr>
<td></td><td>**비밀번호는 숫자로만 입력해주시기 바랍니다.</td>
</tr>
<tr>
<td align="right">비밀번호 확인 : </td><td><input type = "text" size="20"></td>
</tr>
<tr>
<td align="right">이름 : </td><td><input type = "text" size="20" name="uName"></td>
</tr>
<tr>
<td></td><td>**이름은 한글로만 입력해주시기 바랍니다.</td>
</tr>
<tr>
<td align="right">핸드폰번호 : </td><td><input type = "text" size="20" name="uPhone"></td>
</tr>
<tr>
<td></td><td>**핸드폰 번호는 010-****-****형식으로 입력해주시기 바랍니다.</td>
</tr>
<tr>
<td></td><td><input type = "submit" value="회원 가입" onclick="checkMember()"></td>
</tr>

</table>
</form>
</div>
</body>
</html>