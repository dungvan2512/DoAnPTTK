<%@page import="mamnon.database.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="mamnon.managerment_class.*"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home || YuSchool</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- favicon
        ============================================ -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">

<!-- All css files are included here
        ============================================ -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/core.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/shortcode/shortcodes.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/plugins/hover.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/responsive.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/shortcode/editteacher.css">
<link href="#" data-style="styles" rel="stylesheet">

<!-- Modernizr JS -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>


	<!--Main Wrapper Start-->
	<div class="wrapper bg-white fix">
		<!--Bg White Start-->
		<div class="bg-white">
			<!--Header Area Start-->
			<header class="header-area sticker" id="topnav">
				<div class="header-wrapper header-padding">
					<div class="header-top hidden-xs">
						<div class="container">
							<div class="row">
								<div class="col-sm-offset-8">
									<form class="form-inline" action="/logout" method="post">
										<button type="submit" class="btn btn-default btn-sm">logout</button>
									</form>
								</div>

							</div>
						</div>
					</div>
					<div class="main-header">
						<div class="container">
							<div class="row">
								<div class="col-sm-3">
									<div class="logo">
										<a href="index.html">YuSchool</a>
									</div>
								</div>
								<div class="col-sm-9">
									<div class="menu-area">
										<div class="menu-item">
											<!-- Mobile menu toggle-->
											<a class="navbar-toggle">
												<div class="lines">
													<span></span> <span></span> <span></span>
												</div>
											</a>
											<!-- End mobile menu toggle-->
										</div>
									</div>
									<div id="navigation" class="main-menu">
										<nav>
											<ul class="navigation-menu">
												<li><a href="index.html">Thông Tin Thông Báo </a></li>
												<li><a href="editTeacher.html">Điều Chỉnh Hồ Sơ</a></li>
												<li><a href="listStudent.html">Danh Sách Học Sinh</a></li>
												<li class="hidden-sm"><a href="listTeacher.html">Danh
														Sách Giáo Viên</a></li>
												<li><a href="event.html">Chế Độ Dinh Dưỡng</a></li>
												<li><a href="contact.html">Thống Kê</a></li>
											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- End of Header Area -->
			<!-- Start Slider Area-->

			<!-- End Slider Area -->
			<!--Start Activities Area-->
			<div class="activities-area text-center pt-90 pb-90">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="section-title">
								<h2>THÔNG TIN GIÁO VIÊN</h2>
							</div>
						</div>
					</div>
					<div class="row form-gv">
						<center>
							<form>
								<table class="col-sm-10 col-sm-offset-1">
									<tr>
										<td><label for="nameGV">Tên Giáo Viên</label></td>
										<td><input type="text" class="form-control" id="nameGV"
											value="<%=((TeacherProfile) request.getSession().getAttribute("user")).getName()%>"></td>
										<td><label for="gioiTinh">Giới Tính</label></td>
										<td><select class="form-control" id="gioiTinh">
												<option>Nam</option>
												<option>Nữ</option>
										</select></td>
									</tr>
									<tr>
										<td><label for="maGV">Mã Giáo Viên</label></td>
										<td><input type="text" class="form-control" id="maGV"
											value="<%=((TeacherProfile) request.getSession().getAttribute("user")).getId()%>"></td>
										<td><label for="ngaySinh">Ngày Sinh</label></td>
										<td><input type="date" class="form-control" id="nameGV"
											value="<%=((TeacherProfile) request.getSession().getAttribute("user")).getBirthday()%>"></td>
									</tr>
									<tr>
										<td><label for="cmnd">CMND</label></td>
										<td><input type="text" class="form-control" id="nameGV"
											value="<%=((TeacherProfile) request.getSession().getAttribute("user")).getNationalID()%>"></td>
										<td><label for="maGV">Trình Độ</label></td>
										<td><input type="text" class="form-control" id="gioiTinh"
											value="<%=((TeacherProfile) request.getSession().getAttribute("user")).getLevel()%>">
										</td>
									<tr>
										<td><label for="dienThoai">Điện Thoại</label></td>
										<td><input type="text" name=""
											value="<%=((TeacherProfile) request.getSession().getAttribute("user")).getPhone()%>"
											id="dienThoai" class="form-control"></td>
										<td><label for="quocTich">Quốc Tịch</label></td>
										<td><input type="text" class="form-control" id="quocTich"
											value="<%=((TeacherProfile) request.getSession().getAttribute("user")).getNationality()%>"></td>
									</tr>
									<tr>
										<td><label for="tenChaMe">Họ Tên Cha/Mẹ</label></td>
										<td><input type="text" name=""
											value="<%=((TeacherProfile) request.getSession().getAttribute("user")).getParent()%>"
											id="tenChaMe" class="form-control"></td>
										<td><label for="tonGiao">Tôn Giáo</label></td>
										<td><input type="text" class="form-control" id="tonGiao"
											value="<%=((TeacherProfile) request.getSession().getAttribute("user")).getReligion()%>"></td>
									</tr>
									<tr>
										<td><label for="diaChi">Địa Chỉ</label></td>
										<td><input type="text" name=""
											value="<%=((TeacherProfile) request.getSession().getAttribute("user")).getAddress()%>"
											placeholder="" class="form-control"></td>
										<td></td>
										<td></td>
									</tr>
								</table>
								<div class="pr-30">
									<button type="submit" class="btn btn-primary  mt-40">Hoàn
										Tất</button>
								</div>
								<%
									DatabaseConnection.closeQuietly();
								%>
							</form>
						</center>

					</div>
				</div>
			</div>
			<!-- End of Activities Area -->


			<!-- Start of Footer area -->
			<footer class="footer-area">
				<div class="main-footer pt-85 pb-80">
					<div class="container">
						<div class="row">
							<div class="col-md-3 col-sm-4 col-xs-12">
								<div class="footer-widget">
									<h3>ABOUT YuSchool</h3>
									<p>Nơi đào tạo, nuôi dạy trẻ Uy tín, chất lượng phạm vi
										Toàn Cầu</p>
								</div>
							</div>
							<div class="col-md-3 col-sm-4 col-xs-12">
								<div class="footer-widget"></div>
							</div>
							<div class="col-md-3 hidden-sm col-xs-12">
								<div class="footer-widget">
									<h3>Truy cập nhanh</h3>
									<nav>
										<ul>
											<li><a href="#">Về chúng tôi</a></li>
											<li><a href="#">Lớp học của chúng tôi</a></li>
											<li><a href="#">Liên lạc với chúng tôi</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-md-3 col-sm-4 col-xs-12">
								<div class="footer-widget">
									<h3>Bản tin</h3>
									<p>Tin tức về thông báo toàn trường, dinh dưỡng của trẻ</p>
									<form action="#" id="mc-form" class="mc-form fix">
										<div class="subscribe-form">
											<input id="mc-email" type="email" name="email"
												placeholder="Your Email">

										</div>
									</form>
									<!-- mailchimp-alerts Start -->
									<div class="mailchimp-alerts text-centre fix text-small">
										<div class="mailchimp-submitting"></div>
										<!-- mailchimp-submitting end -->
										<div class="mailchimp-success"></div>
										<!-- mailchimp-success end -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</footer>
			<!-- End of Footer area -->
		</div>
		<!--End of Bg White-->

	</div>
	<!--End of Main Wrapper Area-->

	<!-- All jquery 
		========================================================= -->
	<script src="js/vendor/jquery-1.12.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script src="js/ajax-mail.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/jquery.magnific-popup.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/main.js"></script>

</body>

<!-- Mirrored from htmlbundle.com/html/kidschool-preview/kidschool/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Apr 2017 14:26:58 GMT -->
</html>