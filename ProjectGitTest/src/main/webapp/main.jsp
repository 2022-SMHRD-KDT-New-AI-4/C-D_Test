<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.salary_table{
		text-align : center;
		border-style: hidden;
	}	
</style>
</head>
<body>
	<a>로그인</a>
	<form action="LoginService" method="post">
		<li><input name="id" type="text" placeholder="아이디을 입력하세요"></li>
		<li><input name="pw" type="password" placeholder="패스워드를 입력하세요"></li>
		<li><input type="submit" value="로그인" class="button fit"></li>
	</form>
	
	
	<a>회원가입</a>
	<form action="joinService" method="post">
		<li><input name="id" type="text" placeholder="아이디을 입력하세요"></li>
		<li><input name="pw" type="password" placeholder="비밀번호를 입력하세요"></li>
		<li><input name="name" type="text" placeholder="이름를 입력하세요"></li>
		<li><input name="age" type="text" placeholder="나이를 입력하세요"></li>
		
		<table border="0px" class="salary_table" width="400px">
			<td> 
				<tr>연봉</tr>
				<input type="radio" name="salary" value="third">3천이상
				<input type="radio" name="salary" value="forth">5천이상 
				<input type="radio" name="salary" value="sixth">8천이상 
				<input type="radio" name="salary" value="tenth">1억이상
			</td>
		</table>
		<table>
		 <td align="right">연봉</td>
             <td>
             	<select name="salary">
             	<option value="">연봉</option>
             	<option value="third">3천이상</option>
             	<option value="forth">5천이상</option>
             	<option value="sixth">8천이상</option>
             	<option value="tenth">1억이상</option>
             </select>
             </td>
        </table>
		
		<li><input name="f_num" type="text" placeholder="세대원 수를 입력하세요"></li>
		<li><input name="nick" type="text" placeholder="닉네임을 입력하세요"></li>
		<li><input type="submit" value="회원가입" class="success_button">
			<input type="submit" value="뒤로가기" class="back_button"></li>
	</form>


</body>
</html>