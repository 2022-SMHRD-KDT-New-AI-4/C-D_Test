<%@page import="com.smhrd.model.DAO_G"%>
<%@page import="java.util.Random"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.income_expenseVO"%>
<%@page import="com.smhrd.model.DAO_S"%>
<%@page import="com.smhrd.model.userVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.virtualData.bankDAO"%>
<%@page import="com.smhrd.virtualData.bankVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cash&dash</title>
<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

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

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="assets/darkpan-1.0.0/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="assets/darkpan-1.0.0/css/style.css" rel="stylesheet">
</head>

<body>
	<%
	userVO loginD = (userVO) session.getAttribute("loginD");
	Random random = new Random();
	%>
	<%
	if (loginD == null) {
		response.sendRedirect("signin.jsp");
	}
	%>

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

		<!-- Sidebar Start -->
		<div class="sidebar pe-4 pb-3">
			<nav class="navbar bg-secondary navbar-dark">
				<a href="index.jsp" class="navbar-brand mx-4 mb-3">
					<h3 class="text-primary">CASH&DASH</h3>
				</a>
				<div class="d-flex align-items-center ms-4 mb-4">
					<div class="position-relative">
						<%
						if (loginD == null) {
						%>
						<a href="signin.jsp"><h6 class="ms-3">로그인이 필요합니다</h6></a>
						<%
						} else {
						%>
						<h6 class="lolog">
							&nbsp;&nbsp;&nbsp;<%=loginD.getUser_nick()%>님 환영합니다!
						</h6>
						<%
						}
						%>
						<!--  <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                        <div
                            class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1">
                        </div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">로그인한 아이디가 보여지는 공간</h6>
                        <span>일반회원</span> -->
					</div>
				</div>
				<div class="navbar-nav w-100">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle "
							data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>메인</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="index.jsp" class="dropdown-item">메인</a> <a
								href="calendar1.jsp" class="dropdown-item">캘린더</a>
						</div>
						<a href="inout.jsp" class="nav-item nav-link"><i
							class="fa fa-laptop me-2"></i>입/지출</a> <a href="UserAsset.jsp"
							class="nav-item nav-link"><i class="fa fa-th me-2"></i>내 자산</a>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle active"
								data-bs-toggle="dropdown"><i class="fa fa-chart-bar me-2"></i>보고서</a>
							<div class="dropdown-menu bg-transparent border-0">
								<a href="Report.jsp" class="dropdown-item">보고서</a> <a
									href="Details_consumption.jsp" class="dropdown-item active">소비현황</a>
								<a href="Statistics.jsp" class="dropdown-item">통계</a>
							</div>
						</div>
						<a href="TargetList.jsp" class="nav-item nav-link"><i
							class="fa fa-table me-2"></i>목표</a>
					</div>
				</div>
			</nav>
		</div>
		<!-- Sidebar End -->

		<!-- Content Start -->
		<div class="content">

			<!-- Navbar Start -->
			<nav
				class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
				<a href="index.jsp" class="navbar-brand d-flex d-lg-none me-4">
					<h2 class="text-primary mb-0">
						<i class="fa fa-user-edit"></i>
					</h2>
				</a> <a href="#" class="sidebar-toggler flex-shrink-0"> <i
					class="fa fa-bars"></i></a>
				<div class="navbar-nav align-items-center ms-auto">
					<div class="nav-item dropdown">
						<%
						if (loginD == null) {
						%>

						<a href="signin.jsp"><span class="ms-3"> 로그인이 필요합니다</span></a>
						<%
						} else {
						%>
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"> <img
							class="rounded-circle me-lg-2"
							src="assets/darkpan-1.0.0/img/user.jpg" alt=""
							style="width: 40px; height: 40px;"> <span
							class="d-none d-lg-inline-flex"><%=loginD.getUser_nick()%></span>
							<%
							}
							%>
						</a>
						<div
							class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
							<a href="Mypage.jsp" class="dropdown-item">마이페이지</a> <a
								href="Mypage_modify.jsp" class="dropdown-item">마이페이지 수정</a> <a
								href="Enterance.jsp" class="dropdown-item">로그아웃</a>
						</div>


					</div>
				</div>
			</nav>
			<!-- Navbar End -->


			<!-- 항목별 지출 순위 (월 누적 데이터)  Start-->
			<div class="container-fluid pt-4 px-4">
				<div class="col-sm-12 col-xl-13 text-center p-4">
					<div class="row g-4 bg-secondary rounded">

						<h2
							style="text-align: left; margin-top: 20px; margin-bottom: 0px; display: inline;">항목별
							지출 순위</h2>

						<!-- Chart Start -->
						<div class="col-sm-12 col-xl-5" style="margin-left: 200px;">

							<%
							// 소비내역 x -> <h3> / 소비내역 o -> pie-chart
							DAO_S daos = new DAO_S();
							ArrayList<income_expenseVO> list = daos.ietgroupSelects(loginD.getUser_id());

							if (list == null) {
								out.print("<h3 class='tgadd'>소비내역을 추가해주세요</h3>");
							} else {
							%>
							<!--  @type {CanvasRenderingContext2D}   -->
							<canvas id="pie-chart"
								style="display: inline; box-sizing: content-box; flex-grow: 0;"></canvas>
							<%
							}
							%>
						</div>
						<!-- Chart End -->

						<!-- 막대 Start -->
						<div class="col-xl-3" style="padding: 10px; margin-left: 200px;">
							<%
							if (list == null) {
								out.print("<h3 class='tgadd'>소비내역을 추가해주세요</h3>");
							} else {
								String[] style = {"bg-success", "bg-info", "bg-warning", "bg-danger", ""};
								int sum = 0;
								for (int i = 0; i < list.size(); i++) {

									sum += list.get(i).getAmount();
								}

								System.out.println(sum);
								for (int i = 0; i < list.size(); i++) {
									String st = style[random.nextInt(style.length)];

									Double num = (list.get(i).getAmount() / (sum * 1.0)) * 100;
									System.out.println(num);
							%>
							<div class="pg-bar mb-5">
								<h4><%=list.get(i).getItem_tag()%></h4>
								<div class="progress">
									<div class="progress-bar progress-bar-striped <%=st%>"
										role="progressbar" aria-valuenow="<%=num%>" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>
							<%
							} // for
							} // else
							%>
						</div>

						<!-- 막대 End -->
					</div>
				</div>
			</div>
			<!-- 항목별 지출 순위 (월 누적 데이터) End -->

			<!-- 항목별 상세  Start-->
			<div class="container-fluid pt-4 px-4">
			
				<div class="col-sm-12 col-xl-13 text-center p-4">
					<div class="row g-4 bg-secondary rounded">
						<h2
							style="text-align: left; margin-top: 20px; margin-bottom: 0px; display: inline;">항목별
							지출 순위</h2>
						<%
						if (list == null) {
							out.print("<h3 class='tgadd'>소비내역을 추가해주세요</h3>");
						} else {
							DAO_G daog = new DAO_G();
							ArrayList<income_expenseVO> ie_list = daog.selectlist(loginD.getUser_id());
						%>

						<div class="accordion" id="accordionExample">
							
							<div class="accordion-item bg-transparent">
								<h2 class="accordion-header" id="headingOne">
									<button class="accordion-button" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">전체
										항목 상세</button>
								</h2>
								<div id="collapseOne" class="accordion-collapse collapse show"
									aria-labelledby="headingOne" data-bs-parent="#accordionExample">
									<div class="accordion-body">

										<div class="col-sm-12 col-xl-12">
											<div class="bg-secondary rounded h-100 p-4"
												style="height: 50px;">

												<canvas id="line-chart1"></canvas>
											</div>
										</div>

										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th scope="col">no</th>
														<th scope="col">일자</th>
														<th scope="col">은행명</th>
														<th scope="col">소비현황</th>
														<th scope="col">지출액</th>

													</tr>
												</thead>
												<tbody>

													<%
													int index = 1;
													for (int i = 0; i < ie_list.size(); i++) {
														if (ie_list.get(i).getItem_type().equals("지출")) {
															if (!ie_list.get(i).getItem_content().substring(0, 2).equals("대출")) {
														if (!ie_list.get(i).getItem_tag().equals("상환") && !ie_list.get(i).getItem_tag().equals("기타")) {
													%>
													<tr>
														<th scope="row"><%=index%></th>
														<td><%=ie_list.get(i).getItem_dt().substring(0, 10)%></td>
														<td><%=ie_list.get(i).getItem_content()%></td>
														<td><%=ie_list.get(i).getItem_tag()%></td>
														<td><fmt:formatNumber
																value="<%=ie_list.get(i).getAmount()%>" pattern="#,###" /></td>
														<%
														index++;
														}
														}
														}
														}
														%>
													
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<%		
								for (int i = 0; i < list.size(); i++ ){
									index = 1;%>
				
							<div class="accordion-item bg-transparent">
								<h2 class="accordion-header" id="headingTwo">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapseTwo"
										aria-expanded="false" aria-controls="collapseTwo">
										<%=list.get(i).getItem_tag() + " 상세" %></button>
								</h2>
								<div id="collapseTwo" class="accordion-collapse collapse"
									aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
									<div class="accordion-body">Voluptua sit dolores
										consetetur ea et diam est et takimata. Et erat sadipscing
										dolores et stet diam ut ut diam, sit aliquyam no magna et
										dolore lorem dolor sit. Lorem lorem sed sed duo, eirmod sit
										diam ipsum sit erat, lorem sit dolor diam amet ea aliquyam
										tempor rebum invidunt,.</div>
								</div>
							</div>
							
								<%
								index++;
								}%>
								
							
						
					</div>
				</div>
			</div>
		</div>

		<%
		}
		%>
		<!-- 항목별 상세  End-->



		<!-- Footer Start -->
		<div class="container-fluid pt-4 px-4">
			<div class="bg-secondary rounded-top p-4">
				<div class="row">
					<div class="col-12 col-sm-6 text-center text-sm-start">
						&copy; <a href="index.jsp">CASH&DASH</a>, All Right Reserved.
					</div>
					<div class="col-12 col-sm-6 text-center text-sm-end">
						<a style="color: #EB1616;">Team:</a><a>Dash&Cash</a> <br> <a
							style="color: #EB1616;">Member:</a><a>CJH.GGW.LCM.JHM.JYJ.KSM</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End -->
	</div>
	<!-- Content End -->


	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>

	</div>





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

	<script>
		/** @type {CanvasRenderingContext2D} */
		// Pie Chart
		var ctx = $("#pie-chart").get(0).getContext("2d");
		var pie_chart = new Chart(
				ctx,
				{

					type : "pie",
					data : {
						labels : [
	<%for (int i = 0; i < list.size(); i++) {
	out.print("\"" + list.get(i).getItem_tag() + "\",");
}%>
		],
						datasets : [ {
							backgroundColor : [ "rgba(235, 22, 22, .7)",
									"rgba(235, 22, 22, .6)",
									"rgba(235, 22, 22, .5)",
									"rgba(235, 22, 22, .4)",
									"rgba(235, 22, 22, .3)",
									"rgba(235, 22, 22, .2)",
									"rgba(235, 22, 22, .1)", ],
							data : [
	<%for (int i = 0; i < list.size(); i++) {
	out.print(list.get(i).getAmount() + ",");
}%>
		]
						} ]
					},
					options : {
						responsive : true
					}
				});

		// Single Line Chart
		var ctx3 = $("#line-chart1").get(0).getContext("2d");
		var myChart3 = new Chart(ctx3, {
			type : "line",
			data : {
				labels : [ 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150 ],
				datasets : [ {
					label : "Salse",
					fill : false,
					backgroundColor : "rgba(235, 22, 22, .7)",
					data : [ 7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15 ]
				} ]
			},
			options : {
				responsive : true
			}
		});

		// Single Line Chart
		var ctx3 = $("#line-chart2").get(0).getContext("2d");
		var myChart3 = new Chart(ctx3, {
			type : "line",
			data : {
				labels : [ 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150 ],
				datasets : [ {
					label : "Salse",
					fill : false,
					backgroundColor : "rgba(235, 22, 22, .7)",
					data : [ 7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15 ]
				} ]
			},
			options : {
				responsive : true
			}
		});
		
		
	</script>
</body>

</html>