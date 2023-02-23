<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style type="text/css">
#box {
	
	margin: auto;

}
</style>

</head>


<body>
	
	<div id="box">
		<table border="1px solid black" style="margin: auto;">
			<h3 style="text-align: center;">회원 가입</h3>
			<div id ="box2">
			<tr>
				<td>아이디<br> <input type="text" name="user_id"placeholder="아이디 입력"></td>
			</tr>
			<tr>
				<td>비밀번호<br> <input type="password" id = "pw" name="user_pw" onchange="check_pw()" placeholder="비밀번호 입력"></td>
			</tr>
			<tr>
				<td>비밀번호 확인<br> <input type="password" id = "pw2" name="user_pw2"onchange="check_pw()" placeholder="비밀번호확인"></td>
			</tr>
			<tr>
				<td>&nbsp;<span id="check_check"></span></li></td>
			</tr>
			<script>
                 function check_pw(){
                     var pw = document.getElementById('pw').value;
                     
                     if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                         if(document.getElementById('pw').value==document.getElementById('pw2').value){
                             document.getElementById('check_check').innerHTML='비밀번호가 일치합니다.'
                             document.getElementById('check_check').style.color='blue';
                         }
                         else{
                             document.getElementById('check_check').innerHTML='비밀번호가 일치하지 않습니다.';
                             document.getElementById('check_check').style.color='red';
                         }
                     }
                 }
               </script>
			<tr>
				<td>이름<br> <input type="text" name="user_name"placeholder="이름 입력"></td>
			</tr>
			<tr>
				<td>나이<br> <input type="text" name="user_age"placeholder="나이 입력"></td>
			</tr>
			<tr>
				<td>닉네임<br> <input type="text" name="user_nick"placeholder="나이 입력"></td>
			</tr>
			<tr>
				<td>연봉<br> <select>
						<option name="user_salary"value="salary1">3000만원 이하</option>
						<option name="user_salary"value="salary2">3000~4000만원</option>
						<option name="user_salary"value="salary3">4000~5000만원</option>
						<option name="user_salary"value="salary4">5000~6000만원</option>
						<option name="user_salary"value="salary5">6000만원 이상</option>
				</select>
				</td>
			</tr>
			<tr>
				<td><br> <input type="submit" value="가입하기" href="login.jsp"></td>
			</tr>
			</div>
		</table>
	</div>
	
</body>
</html>