<%@page import="com.smhrd.model.userVO"%>
<%@page import="com.smhrd.virtualData.bankVO"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.Random"%>
<%@page import="com.smhrd.virtualData.bankDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dash & Cash</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<!-- Favicon -->
<link href="assets/darkpan-1.0.0/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href="assets/darkpan-1.0.0/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="assets/darkpan-1.0.0/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="assets/darkpan-1.0.0/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="assets/darkpan-1.0.0/css/style.css" rel="stylesheet">

</head>

<body>
<form action="calInputservice" method="post">
	<div class="container-fluid position-relative d-flex p-0">

		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->

		<!-- Sign In Start -->
		<%
		String item_dt = request.getParameter("date");
		String [] arr = item_dt.split("/");
		%>
		<input type="text" value=<%=item_dt%> name=item_dt style="display: none;">
		
			
			<div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
					<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
						<div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
							 <div
								class="d-flex align-items-center justify-content-between mb-3">
								<a href="#"> << </a> <span class="text-primary" align="center">
									<%= arr[0]+"??? "+arr[1]+"??? "+arr[2]+"???" %>
									</span> <a href="#"> >> </a>
							</div>
 							<div class="bg-secondary rounded">
								<select class="form-select mb-3"
									aria-label="Default select example" name="item_type">
									<option selected>??????/??????</option>
									<option value="??????">??????</option>
									<option value="??????">??????</option>
								</select>
							</div>
							
							<input class="form-check-input" type="radio" 
								name="flexRadioDefault" id="ckBank" checked>
							<label class="form-check-label" for="ckBank">?????????</label>
							
							<div class="bg-secondary rounded" >
							
								<select class="form-select mb-3" 
									aria-label="Default select example" name="item_content">
									<option selected>?????? ??????</option>
									<option value="NH??????">NH??????</option>
									<option value="KB????????????">KB????????????</option>
									<option value="????????????">????????????</option>
									<option value="KEB????????????">KEB????????????</option>
									<option value="SC????????????">SC????????????</option>
									<option value="????????????">????????????</option>
									<option value="IBK????????????">IBK????????????</option>
									<option value="??????????????????">??????????????????</option>
								</select>
								
							</div>
							<input class="form-check-input" type="radio"   
							name="flexRadioDefault" id="ckCard">
							<label class="form-check-label" for="ckCard" >?????????</label>
							
							<div class="bg-secondary rounded">
							
								<select class="form-select mb-3" 
									aria-label="Default select example" name="item_content" >
									<option selected>????????????</option>
									<option value="BC??????">BC??????</option>
									<option value="????????????">KB????????????</option>
									<option value="????????????">????????????</option>
									<option value="????????????">????????????</option>
									<option value="????????????">????????????</option>
									<option value="????????????">????????????</option>
									<option value="????????????">????????????</option>
									<option value="NH??????">NH????????????</option>
									<option value="IBK??????">IBK??????</option>
									<option value="????????????">????????????</option>
								</select>
								
							</div>
							
								<div class="bg-secondary rounded">
								
								<select class="form-select mb-3"
									aria-label="Default select example" name="item_tag">
									<option selected>??????</option>
									<% bankDAO dao = new bankDAO();
									userVO loginD = (userVO)session.getAttribute("loginD");
									ArrayList<String> bvo = dao.DetailList(loginD.getUser_id());
									for(int i =0; i<bvo.size(); i++){
										out.print("<option>"+bvo.get(i)+"</option>");
									}
									%>
								</select>
							</div>
							
							<div class="row mb-3">
								<label for="inputEmail3">?????? ??????</label>
								<input type="number" class="form-control" name ="amount" id="inputEmail3">
							</div>
							<div align="center">
								<a href="calendar1.jsp">
								<button type="submit" class="btn btn-primary m-2" onclick="subUsed()">???????????????</button>
								</a>
								<button type="button" class="btn btn-warning m-2" onclick="location.href='calendar1.jsp'">????????????</button>
							</div>  
						</div>
							</form>
						
						<script type="text/javascript">
							function subUsed() {
								alert("?????????????????????.")
								location.href = "calendar1.jsp";
							}
						</script>
			
		
		<!-- Sign In End -->

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="assets/darkpan-1.0.0/lib/chart/chart.min.js"></script>
	<script src="assets/darkpan-1.0.0/lib/easing/easing.min.js"></script>
	<script src="assets/darkpan-1.0.0/lib/waypoints/waypoints.min.js"></script>
	<script src="assets/darkpan-1.0.0/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="assets/darkpan-1.0.0/lib/tempusdominus/js/moment.min.js"></script>
	<script
		src="assets/darkpan-1.0.0/lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script
		src="assets/darkpan-1.0.0/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Template Javascript -->
	<script src="assets/darkpan-1.0.0/js/main.js"></script>
</body>
</html>