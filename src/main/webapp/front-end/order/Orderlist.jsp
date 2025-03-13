<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.orders.model.*"%>
<%
OrdersService OrdersSvc = new OrdersService();
List<OrdersVO> list = OrdersSvc.getOrderlist(1);
pageContext.setAttribute("list", list);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="Site keywords here">
<meta name="description" content="">
<meta name='copyright' content=''>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Title -->
<title>寵愛牠 PawCares</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/resources/images/logo.png">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<!-- Nice Select CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/nice-select.css">

<!-- icofont CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/icofont.css">
<!-- Slicknav -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/slicknav.min.css">
<!-- Owl Carousel CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/owl-carousel.css">
<!-- Datepicker CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/datepicker.css">
<!-- Animate CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/animate.min.css">
<!-- Magnific Popup CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/magnific-popup.css">

<!-- Medipro CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/normalize.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/responsive.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/add.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/orderlist.css">
</head>
<body>
	<!-- Preloader -->
	<div class="preloader">
		<div class="loader">
			<div class="indicator">
				<svg width="50" height="50" viewBox="0 0 50 50"
					xmlns="http://www.w3.org/2000/svg">
                        <!-- 背景圓形 -->
                        <circle cx="25" cy="25" r="24" fill="#889D75"
						stroke="white" stroke-width="2" />
                        <animate attributeName="opacity" values="0;1;0"
						dur="0.5s" repeatCount="indefinite" />
                        <!-- 更扁平的愛心形狀 -->
                        <path
						d="M25,17.5 C32.5,5 42.5,20 25,30 C7.5,20 17.5,5 25,17.5 Z"
						fill="none" stroke="white" stroke-width="2" stroke-linecap="round"
						stroke-linejoin="round" stroke-dasharray="100"
						stroke-dashoffset="100">
                          <animate attributeName="stroke-dashoffset"
						from="100" to="0" dur="0.5s" repeatCount="indefinite" />
                        </path>
                    
                        <!-- 腳趾小圓 --> 
                        <circle cx="15" cy="35" r="3.5" fill="none"
						stroke="white" stroke-width="2">
                          <animate attributeName="opacity"
						values="0;1;0" dur="0.5s" repeatCount="indefinite" />
                        </circle>
                        <circle cx="25" cy="37.5" r="3.5" fill="none"
						stroke="white" stroke-width="2">
                          <animate attributeName="opacity"
						values="1;0;1" dur="0.5s" repeatCount="indefinite" />
                        </circle>
                        <circle cx="35" cy="35" r="3.5" fill="none"
						stroke="white" stroke-width="2">
                          <animate attributeName="opacity"
						values="0;1;0" dur="0.5s" repeatCount="indefinite" />
                        </circle>
                    </svg>
			</div>
		</div>
	</div>
	<!-- End Preloader -->
	<!-- Header Area -->
	<header class="header">
		<!-- Topbar -->
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-5 col-12"></div>
					<div class="col-lg-6 col-md-7 col-12">
						<!-- Top Contact -->
						<ul class="top-contact">
							<li><a href="./login.html"><i class="icofont-login"></i>會員登入</a></li>
							<li><a href="./member.html"><i class="icofont-ui-user"></i>會員資料</a></li>
						</ul>
						<!-- End Top Contact -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Topbar -->
		<!-- Header Inner -->
		<div class="header-inner">
			<div class="container">
				<div class="inner">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-12">
							<!-- Start Logo -->
							<div class="logo">
								<a href="/TIA105G1/front-end/index/index.jsp"><img
									src="/TIA105G1/resources/images/title.png" alt="#"></a>
							</div>
							<!-- End Logo -->
							<!-- Mobile Nav -->
							<div class="mobile-nav"></div>
							<!-- End Mobile Nav -->
						</div>
						<div class="col-lg-7 col-md-9 col-12">
							<!-- Main Menu -->
							<div class="main-menu">

								<nav class="navigation">
									<ul class="nav menu">
										<li><a href="">關於我們</a></li>
										<li><a href="./joinus.html">加入我們 </a></li>
										<li><a href="#">常見問題 </a></li>
										<li class="active"><a href="./orderlist.html">訂單檢視 </a></li>
										<li><a href="/TIA105G1/front-end/index/index.jsp">首頁</a>
									</ul>
								</nav>
							</div>
							<!--/ End Main Menu -->
						</div>
						<div class="col-lg-2 col-12">
							<div class="get-quote">
								<a href="appointment.html" class="btn">預約服務</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Header Inner -->
	</header>
	<!-- End Header Area -->
	<div class="breadcrumbs overlay">
		<div class="container">
			<div class="bread-inner">
				<div class="row">
					<div class="col-12">
						<h2>訂單檢視</h2>
						<ul class="bread-list">
							<li><i class="icofont-simple-right"></i></li>
							<li class="active">Order View</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container1">
		<div class="container2">
			<div class="pageSize box">
				<label for="pageSize">每頁顯示數量:</label> <select id="pageSize"
					onchange="updatePageSize()">
					<option value="5">5</option>
					<option value="10">10</option>
					<option value="15">15</option>
				</select>
			</div>
			<div class="search box">
				<label for="searchInput">搜尋訂單:</label> <input type="text"
					id="searchInput" oninput="filterOrders()" placeholder="輸入關鍵字...">
			</div>
		</div>
		<table id="orderTable">
			<thead>
				<tr>
					<th onclick="sortOrders('orderId')">訂單編號 <i
						class="icofont-sort"></i>
					</th>
					<th onclick="sortOrders('orderDate')">訂單日期 <i
						class="icofont-sort"></i>
					</th>
					<th>上車地點</th>
					<th>下車地點</th>
					<th>服務人員</th>
					<th onclick="sortOrders('status')">訂單狀態<i class="icofont-sort"></i></th>
					<th>訂單詳情</th>
				</tr>
			</thead>
			
		
			<c:forEach var="ordersVO" items="${list}">
				<tr>
					<td>${ordersVO.order_id}</td>
					<td>${ordersVO.scheduleVO.date}</td>
					<td>${ordersVO.geton_location}</td>
					<td>${ordersVO.getoff_location}</td>
					<td>${ordersVO.staffVO.name}</td>
					<td>${ordersVO.status == 0 ? "已取消" : ordersVO.status == 1 ? "未完成" : "已完成"}</td>
					<td>
						<FORM METHOD="post"
							ACTION="<%=request.getContextPath()%>/order/order.do">
							<input type="submit" value="查看詳情"> <input type="hidden"
								name="order_id" value="${ordersVO.order_id}"> <input
								type="hidden" name="action" value="getOneOrders">
						</FORM>
					</td>
			</c:forEach>
			
		</table>
		
		<%-- 查無資料表列 --%>
		<c:if test="${empty list}">
				<h5 style="color:gray">查無資料</h5>
			</c:if>
		<div class="pagination">
			<button id="prevPage" onclick="changePage(-1)">上一頁</button>
			<span id="pageNumber">第 1 頁</span>
			<button id="nextPage" onclick="changePage(1)">下一頁</button>
		</div>
	</div>
	<!--/ End Feautes -->




	<!-- Footer Area -->
	<footer id="footer" class="footer ">
		<!-- Footer Top -->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-12">
						<div class="single-footer">
							<h2>About Us</h2>
							<p>
								我們是緯育 Tibame JAVA養成班 <br>TIA105 第一組, 成員有:
							</p>
							<p>邵柏中 陳華宣 林珍妮 蔡富任 高逢廷</p>
							<!-- Social -->
							<ul class="social">
								<li><a href="#"><i class="icofont-facebook"></i></a></li>
								<li><a href="#"><i class="icofont-google-plus"></i></a></li>
								<li><a href="#"><i class="icofont-twitter"></i></a></li>
								<li><a href="#"><i class="icofont-vimeo"></i></a></li>
								<li><a href="#"><i class="icofont-pinterest"></i></a></li>
							</ul>
							<!-- End Social -->
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-12">
						<div class="single-footer f-link">
							<h2>Quick Links</h2>
							<div class="row">
								<div class="col-lg-6 col-md-6 col-12">
									<ul>
										<li><a href="./index.html"><i
												class="fa fa-caret-right" aria-hidden="true"></i>Home</a></li>
										<li><a href="./orderlist.html"><i
												class="fa fa-caret-right" aria-hidden="true"></i>Orders</a></li>
										<li><a href="#"><i class="fa fa-caret-right"
												aria-hidden="true"></i>Question</a></li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-6 col-12">
									<ul>
										<li><a href="#"><i class="fa fa-caret-right"
												aria-hidden="true"></i>Reserve</a></li>
										<li><a href="#"><i class="fa fa-caret-right"
												aria-hidden="true"></i>About Us</a></li>
										<li><a href="#"><i class="fa fa-caret-right"
												aria-hidden="true"></i>Join Us</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-12">
						<div class="single-footer">
							<h2>Open Hours</h2>
							<p></p>
							<ul class="time-sidual">
								<li class="day">預約服務時間<span>8.00 - 21.00</span></li>
								<li class="day">客服營業時間<span>7.00 - 22.00</span></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-12">
						<div class="single-footer">
							<h2>Contact Us</h2>
							<p>客服專線: 7061776361726573</p>
							<form action="mail/mail.php" method="get" target="_blank"
								class="newsletter-inner">
								<input name="email" placeholder="Email Address"
									class="common-input" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Your email address'" required=""
									type="email">
								<button class="button">
									<i class="icofont icofont-paper-plane"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Footer Top -->
		<!-- Copyright -->
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-12">
						<div class="copyright-content">
							<p>© Copyright 2025 | All Rights Reserved by Pawcares.com</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Copyright -->
	</footer>
	<!--/ End Footer Area -->

	<!-- jquery Min JS -->
	<script src="<%=request.getContextPath()%>/resources/js/add.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
	<!-- jquery Migrate JS -->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-migrate-3.0.0.js"></script>
	<!-- jquery Ui JS -->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-ui.min.js"></script>
	<!-- Easing JS -->
	<script src="<%=request.getContextPath()%>/resources/js/easing.js"></script>
	<!-- Color JS -->
	<script src="<%=request.getContextPath()%>/resources/js/colors.js"></script>
	<!-- Popper JS -->
	<script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>
	<!-- Bootstrap Datepicker JS -->
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap-datepicker.js"></script>
	<!-- Jquery Nav JS -->
	<script src="<%=request.getContextPath()%>/resources/js/jquery.nav.js"></script>
	<!-- Slicknav JS -->
	<script
		src="<%=request.getContextPath()%>/resources/js/slicknav.min.js"></script>
	<!-- ScrollUp JS -->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.scrollUp.min.js"></script>
	<!-- Niceselect JS -->
	<script src="<%=request.getContextPath()%>/resources/js/niceselect.js"></script>
	<!-- Tilt Jquery JS -->
	<script
		src="<%=request.getContextPath()%>/resources/js/tilt.jquery.min.js"></script>
	<!-- Owl Carousel JS -->
	<script
		src="<%=request.getContextPath()%>/resources/js/owl-carousel.js"></script>
	<!-- counterup JS -->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.counterup.min.js"></script>
	<!-- Steller JS -->
	<script src="<%=request.getContextPath()%>/resources/js/steller.js"></script>
	<!-- Wow JS -->
	<script src="<%=request.getContextPath()%>/resources/js/wow.min.js"></script>
	<!-- Magnific Popup JS -->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.magnific-popup.min.js"></script>
	<!-- Counter Up CDN JS -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<!-- Bootstrap JS -->
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<!-- Main JS -->
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/orderlist.js"></script>



</body>
</html>