<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<style>
	#Update>ul.actions {
		margin-top: 10%;
	}
</style>
	
	<body style="text-align: center;">
		<%
		String id = (String) request.getAttribute("joinId");
		%>
		<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h1>환영합니다!</h1></li>
							<li><%=id%>님 회원가입을 축하합니다.</li>
							<li><a href="main.jsp">메인으로</a></li>
						</ul>
					</nav>			
			</div>









	</body>
</html>