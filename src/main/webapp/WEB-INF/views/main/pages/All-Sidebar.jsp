<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="/brocoli/main/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/brocoli/main/fonts/linearicons-v1.0.0/icon-font.min.css">
<style>
.side_mypage{
	color:black;
	font-size:15px;
	font-family: Poppins-Regular;
	line-height: 0.9;
}


</style>
</head>
<body>
	<!-- Sidebar -->
	<aside class="wrap-sidebar js-sidebar">
		<div class="s-full js-hide-sidebar"></div>

		<div class="sidebar flex-col-l p-t-22 p-b-25">
			<div class="flex-r w-full p-b-30 p-r-27">
				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-sidebar">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>

			<div class="sidebar-content flex-w w-full p-lr-65 js-pscroll">
				<ul class="sidebar-link w-full">
					<li class="p-b-13">
						<a href="/brocoli/main/index.jsp" class="stext-102 cl2 hov-cl1 trans-04">
							메인
						</a>
					</li>
					
					<li class="p-b-13">
						<a href="/brocoli/main/myPage.jsp" class="stext-102 cl2 hov-cl1 trans-04">
							마이 페이지
						</a>
					</li>

					<li class="p-b-13">
						<a href="/brocoli/main/wishlist.jsp" class="stext-102 cl2 hov-cl1 trans-04">
							위시 리스트
						</a>
					</li>

					<li class="p-b-13">
						<a href="/brocoli/main/shoping-cart.jsp" class="stext-102 cl2 hov-cl1 trans-04">
							장바구니
						</a>
					</li>
					
					<li class="p-b-13">
						<a href="/brocoli/main/orderlist.jsp" class="stext-102 cl2 hov-cl1 trans-04">
							주문조회
						</a>
					</li>


					<li class="p-b-13">
						<a href="/brocoli/board/QnAList.jsp" class="stext-102 cl2 hov-cl1 trans-04">
							문의사항
						</a>
					</li>
					
					<li class="p-b-13">
						<a href="/brocoli/board/customerViewList.jsp" class="stext-102 cl2 hov-cl1 trans-04">
							자주묻는질문
						</a>
					</li>					
				</ul>

				<div class="sidebar-gallery w-full p-tb-30">
					<span class="mtext-101 cl5">
						@ LookBook
					</span>

					<div class="flex-w flex-sb p-t-36 gallery-lb">
						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="/brocoli/main/images/gallery-01.jpg" data-lightbox="gallery" 
							style="background-image: url('/brocoli/main/images/gallery-01.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="/brocoli/main/images/gallery-02.jpg" data-lightbox="gallery" 
							style="background-image: url('/brocoli/main/images/gallery-02.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="/brocoli/main/images/gallery-03.jpg" data-lightbox="gallery" 
							style="background-image: url('/brocoli/main/images/gallery-03.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="/brocoli/main/images/gallery-04.jpg" data-lightbox="gallery" 
							style="background-image: url('/brocoli/main/images/gallery-04.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="/brocoli/main/images/gallery-05.jpg" data-lightbox="gallery" 
							style="background-image: url('/brocoli/main/images/gallery-05.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="/brocoli/main/images/gallery-06.jpg" data-lightbox="gallery" 
							style="background-image: url('/brocoli/main/images/gallery-06.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="/brocoli/main/images/gallery-07.jpg" data-lightbox="gallery" 
							style="background-image: url('/brocoli/main/images/gallery-07.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="/brocoli/main/images/gallery-08.jpg" data-lightbox="gallery" 
							style="background-image: url('/brocoli/main/images/gallery-08.jpg');"></a>
						</div>

						<!-- item gallery sidebar -->
						<div class="wrap-item-gallery m-b-10">
							<a class="item-gallery bg-img1" href="/brocoli/main/images/gallery-09.jpg" data-lightbox="gallery" 
							style="background-image: url('/brocoli/main/images/gallery-09.jpg');"></a>
						</div>
					</div>
				</div>

				<div class="sidebar-gallery w-full">
					<span class="mtext-101 cl5">
						About Us
					</span>

					<p class="stext-108 cl6 p-t-27">
					브로콜리에서 입점 판매되는 모든 해외 브랜드 제품은 정식제조, 정식수입절차를 통해서 유통되는 100% 정품입니다.<br>
					1599-7616<br>
					평일 10:00 ~ 17:00 <br>
					점심시간 12:00 ~ 13:30 <br>
					주말, 공휴일 휴무<br>
					</p>
				</div>
			</div>
		</div>
	</aside>
</body>
</html>