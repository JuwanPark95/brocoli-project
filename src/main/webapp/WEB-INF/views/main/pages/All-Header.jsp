<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Brocoli : Brand Request Collection Lead</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/brocoli/main/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/brocoli/main/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/brocoli/main/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/css/util.css">
	<link rel="stylesheet" type="text/css" href="/brocoli/main/css/main.css">
<!--===============================================================================================-->
	 <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>


	<script src="/brocoli/main/vendor/jquery/jquery-3.2.1.min.js"></script>
	
</head>
<!-- Header -->
	<header class="header-v4">
	   <!-- 
   	작성자 : 윤석훈
   	작성일 : 2020-03-18
   	내용 : 헤더 수정
    -->
    <!-- 
    	작성자 : 문예림
    	작성일 : 2020-03-26
    	내용 : 헤더경로 입력(로그인)
     -->
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						Free shipping
					</div>
<div id= one style="display: flex;">
					<div class="right-top-bar flex-w h-full" >
						<a href="/brocoli/board/noticeList.jsp"" class="flex-c-m trans-04 p-lr-25">
							공지사항
						</a>
					</div>
					
					<div class="right-top-bar flex-w h-full" >
						<a href="/brocoli/board/customerViewList.jsp"" class="flex-c-m trans-04 p-lr-25">
							자주묻는질문
						</a>
					</div>
					
					<div class="right-top-bar flex-w h-full">
						<a href="/brocoli/login/login.jsp" class="flex-c-m trans-04 p-lr-25">
							Login
						</a>

					</div>
				</div>
			</div>
</div>
			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="/brocoli/main/index.jsp" class="logo">
						<img src="/brocoli/main/images/icons/logo-01.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="/brocoli/main/index.jsp" id="header-color1">Home</a>
<!-- 								<ul class="sub-menu main-menu">
									<li><a href="index.jsp">Homepage 1</a></li>
									<li><a href="home-02.jsp">Homepage 2</a></li>
									<li><a href="home-03.jsp">Homepage 3</a></li>
								</ul>  -->
							</li>

							<li class="label1" data-label1="hot">
								<a href="/brocoli/main/rank.jsp" id="header-color2">RANK</a>
							</li>

							<li>
								<a href="/brocoli/main/brand.jsp" id="header-color3">BRAND</a>
							</li>

							<li>
								<a href="/brocoli/main/product.jsp" id="header-color4">SHOP</a>
							</li>

							<li>
								<a href="/brocoli/main/magazine.jsp" id="header-color5">MAGAZINE</a>
							</li>

							<li>
								<a href="contact.jsp" id="header-color6">Contact</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search" ></i>
						</div>

						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

						<a href="/brocoli/main/wishlist.jsp" class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
							<i class="zmdi zmdi-favorite-outline"></i>
						</a>
						
						
						<div class="flex-c-m h-full p-lr-19">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-sidebar">
								<i class="zmdi zmdi-menu"></i>
							</div>
						</div>
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="index.jsp"><img src="/brocoli/main/images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
					<i class="zmdi zmdi-favorite-outline"></i>
				</a>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						Free shipping
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="/brocoli/board/noticeList.jsp" class="flex-c-m trans-04 p-lr-25" style="border-left:0px solid black;">
							공지사항
						</a>

						<a href="/brocoli/board/customerViewList.jsp" class="flex-c-m trans-04 p-lr-25">
							자주묻는질문
						</a>

						<a href="/brocoli/login/login.jsp" class="flex-c-m trans-04 p-lr-25" style="border-right:0px solid black;">
							Login
						</a>

						
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li>
					<a href="index.jsp">Home</a>
<!-- 					<ul class="sub-menu-m">
						<li><a href="index.jsp">Homepage 1</a></li>
						<li><a href="home-02.jsp">Homepage 2</a></li>
						<li><a href="home-03.jsp">Homepage 3</a></li>
					</ul>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span> -->
				</li>

				<li>
					<a href="product.jsp">Shop</a>
				</li>

				<li>
					<a href="shoping-cart.jsp" class="label1 rs1" data-label1="hot">Features</a>
				</li>

				<li>
					<a href="blog.jsp">Blog</a>
				</li>

				<li>
					<a href="about.jsp">About</a>
				</li>

				<li>
					<a href="contact.jsp">Contact</a>
				</li>
			</ul>
		</div>
		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="/brocoli/main/images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<div class="wrap-search-header flex-w p-l-15" id="alpreah_input">
					<button class="flex-c-m trans-04" >
						<i class="zmdi zmdi-search"></i>
					</button>
					<input  class="plh3" type="text"  placeholder="Search..." >
				</div>
					<!-- <input class="plh3" id="searchbar" type="text" name="search" placeholder="Search..."> -->
				</form>
			</div>
		</div>
	</header>

	<script>
	$('#searchbar').keyup(function(e) {
	    if (e.keyCode == 13) {
	   location.href="/brocoli/main/searchResult.jsp";
	    }
	});

	
	</script>
<body>
<script>
$(document).ready(function() {
    $("#alpreah_input").keydown(function(key) {
        if (key.keyCode == 13) {
            location.href="/brocoli/main/searchResult.jsp";
           
        }
    });
});


</script>
</body>
</html>