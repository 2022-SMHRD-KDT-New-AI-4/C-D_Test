<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/darkpan-1.0.0/js/main.js" />
<style type="text/css">
	.salary_table{
		text-align : center;
		border-style: hidden;
	}	
</style>
</head>
<body>
<script src="assets/darkpan-1.0.0/js/main.js" type="text/javascript"></script>
	<a>로그인</a>
	<form action="loginservice" method="post">
		<li><input name="id" type="text" placeholder="아이디을 입력하세요"></li>
		<li><input name="pw" type="password" placeholder="패스워드를 입력하세요"></li>
		<li><input type="submit" value="로그인" class="button fit"></li>
	</form>
	
	
	<a>회원가입</a>
	<form action="joinservice" method="post">
		<li><input name="id" type="text" placeholder="아이디을 입력하세요"></li>
		<li><input id = "pw" name="pw" type="password" onchange="check_pw()" placeholder="비밀번호를 입력하세요"></li>
		<li><input id = "pw2"name="pw2" type="password" onchange="check_pw()" placeholder="비밀번호 확인">&nbsp;<span id="check_check"></span></li>
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
		<li><input name="name" type="text" placeholder="이름를 입력하세요"></li>
		<li><input name="age" type="text" placeholder="나이를 입력하세요"></li>
		
		<table border="0px" class="salary_table" width="400px">
		 	<td>연봉</td>
             <td align="left">
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