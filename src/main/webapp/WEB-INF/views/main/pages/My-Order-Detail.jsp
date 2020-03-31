<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/sidebar.jsp" %>
<%@ include file="../common/cart.jsp" %>


<style>


	#ordersearch{
		clear: both;
	    background: rgb(247, 247, 247);
	    border: 1px solid rgb(199, 199, 199);
	    padding: 1%;
	    text-align:center;
	}
	
	.btn-term{
		background-color:white;
		border: 1px solid #6666;
	    border-radius: 5px;
	    padding: 4px;
	    }
    
	 .btn-term:hover{
	 	background: #BDBDBD;
	 }
	 
	 .datelist{
	 border:1px solid #6666;
	 margin-top:-1%;
	 }
	 
	 .datesearch{
		 border: 1px solid #c3bdbd; 
		 padding: 4px; 
		 margin-left: 10px; 
		 margin-top: -1%; 
		 border-radius: 5px;
		 color:white;
		 box-shadow: 0 -12px 43px #999 inset, 0 -30px 2px #444 inset;
		 
	 }
	 .datesearch:hover{
	 	background: black;
	 }
	 .ordertable{
	 	border:1px solid #6666;
	 	width:1100px;
	 	margin:0px auto;
	 	text-align:center;
	 	margin-bottom:80px;
	 }
	 
	 .orderdetail{
		box-shadow: 0 -2px 20px #999 inset, 0 -5px 5px #444 inset;
	 	border:1px solid #6666;
	 	background: #999999;
	 	color:white;
		font-size:15px;
		border-top:3px solid black;
		height: 35px;
	 }
	 .trackview{
		 border: 1px solid #c3bdbd; 
		 padding: 4px; 
		 margin-left: 10px; 
		 margin-top: -1%; 
		 border-radius: 5px;
	 }
	 
.ticon{
width: 70px;
height: 70px;
}
.inner{position:relative;width:1100px;min-width:1100px;margin:0 auto}
.contTitArea + .tabList{margin-top:46px}
.contTitArea{padding-top:86px}
.contTitArea.type01 + .contArea{margin-top:46px}
.contTitArea h3{color:#2a2a2a;font-size:56px;text-align:center}
.contTitArea h3 span{color:#2a2a2a;font-size:56px;font-family:'NotoSansM';vertical-align:baseline}
.contTitArea p{margin-top:13px;color:#54585a;font-size:20px;text-align:center}
/* Step */
.contStep{margin:68px 0 45px 0}
.contStep li{float:left;position:relative;width:149px;height:149px;margin-left:168px;background:url(../images/reservation/bg_step_circle.png) no-repeat 0 0}
.contStep li.on{background-position:0 -149px}
.contStep li span{display:block;position:relative;padding-top:40px;text-align:left}
.contStep li.on span{color:#da291c}
.contStep li.item01{margin-left:0}
i.fa{

}
</style>

   <!--  <link rel="stylesheet" type="text/css" href="css/tp.css" /> -->
   

</head>
<body class="animsition">

	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/main/images/bg-01.jpg'); position:relative;" id="">
		<h2 class="ltext-105 cl0 txt-center" style="color:white;">
			주문정보
		</h2>
	</section>

	<div class="container">
		<!-- contents -->
		<div id="contents">
			<div class="inner">
				<div class="contTitArea">
					<div style="padding-rihgt: 50px;  margin-bottom: 5px;">
						<h4 style="width: 100%; border-bottom: 1px solid #999; padding-bottom: 5px;">
							<strong>주문 상세보기</strong>
						</h4>
					</div>
					<ul class="contStep goodsStep" style="margin-top: 30px;">
						<li class="item01"><img class="ticon"
							src="images/icons/Monitor-icon.png" /><span>주문 접수</span></li>

						<li class="item02"><img class="ticon"
							src="images/icons/Truck-icon1.png" /><span>상품 준비중</span></li>

						<li class="item03"><img class="ticon"
							src="images/icons/Truck-icon2.png" /><span>배송 시작</span></li>

						<li class="item04"><img class="ticon"
							src="images/icons/hand.png" /><span>배송 완료</span></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 끝 -->


		<div class="row" style="    width: 100%; margin-top: 50px;">
			<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50"
				style="margin-left: -1%;">
				<div class="m-l-25 m-r--38 m-lr-0-xl" style="width: 170%;">
					<div class="wrap-table-shopping-cart">
						<table class="table-shopping-cart">
							<tr class="table_head">
								<th style="width: 8%; text-align: center;">주문번호</th>
								<th style="width: 8%; text-align: center;">주문일자</th>
								<th style="width: 10%; text-align: center;">이미지</th>
								<th style="width: 20%; text-align: center;">상품정보</th>
								<th style="width: 8%; text-align: center;">판매금액</th>
								<th style="width: 8%; text-align: center;">회원 할인</th>
								<th style="width: 8%; text-align: center;">적립금</th>
								<th style="width: 6%; text-align: center;">수량</th>
								<th style="width: 8%; text-align: center;">총 금액</th>
								<th style="width: 8%; text-align: center;">상태</th>
								<th style="width: 8%; text-align: center;">확인</th>
							</tr>
							<tr>
								<td style="text-align: center;">1</td>
								<td style="text-align: center;">2020-03-30</td>
								<td style="text-align: center;"><img
									src="images/item-cart-04.jpg" alt="IMG" style="padding: 15px;"></td>
								<td style="text-align: left;">
									<ul>
										<li>상품명 : 패딩</li>
										<li>옵션 1 : 레드</li>
										<li>옵션 2 : XL</li>
									</ul>
								</td>
								<td style="text-align: center;"><strike>36,000원</strike> <br>34,000원</td>
								<td style="text-align: center;">-2000원</td>
								<td style="text-align: center;">360원</td>
								<td style="text-align: center;">2</td>
								<td style="text-align: center;">68,000원</td>
								<td style="text-align: center; font-size: 13px; color: #555;"><strong>주문완료</strong><br>
								<td style="text-align: center;">
									<button class="ord-btn">
										<strong>배송 추적</strong>
									</button>

								</td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<div class="container" style="margin-bottom: 100px;">
			<div class="flex-w flex-tr">
				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								<strong>결제정보</strong>
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								<strong>결제수단 :</strong>
							</p>
							<p class="stext-115 cl6 size-213 p-t-18" style="margin-left: 10px; padding-top: 5px;">
									(PAYCO) 카드+적립금 / 일시불 30034731
							</p>
						</div>

					</div>
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211">
							<span class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2">
								<strong>최종 결제정보</strong>
							</span>

							<p class="stext-115 cl6 size-213 p-t-18">
								<strong>주문합계 :</strong> 15,920 원
							</p>
							<p class="stext-115 cl6 size-213 p-t-18" style="color: #717fe0;">
								<strong style="color: #888888;">할인합계 :</strong> -2,000원
							</p>
							<p class="stext-115 cl6 size-213 p-t-18">
								<strong>결제 수수료:</strong> 0원
							</p>
							<p class="stext-115 cl6 size-213 p-t-18">
								<strong>최종 결제금액 :</strong> 13,920원
							</p>

						</div>
					</div>

				</div>

			<div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
				<div class="flex-w w-full p-b-42">
					<span class="fs-18 cl5 txt-center size-211"> <span
						class="lnr lnr-map-marker"></span>
					</span>

					<div class="size-212 p-t-2">
						<span class="mtext-110 cl2"> 
							<strong>배송지 정보</strong>
						</span>

						<p class="stext-115 cl6 size-213 p-t-18">
							<strong>이름 :</strong> 박주완
						</p>
						<p class="stext-115 cl6 size-213 p-t-18">
							<strong>연락처 :</strong> 010-0000-0000
						</p>
						<p class="stext-115 cl6 size-213 p-t-18">
							<strong>배송지 주소 :</strong>
						</p>
						<p class="stext-115 cl6 size-213 p-t-18"
							style="margin-left: 10px; padding-top: 5px;">
							841-115 <br> 서울특별시 서초구 서초동 1304-3 <br>Brocoil 스토어 스파크타워
							B1,1,2,3층
						</p>
						<p class="stext-115 cl6 size-213 p-t-18">
							<strong>배송 메시지 :</strong> 문앞에 두고 문자주세요.
						</p>
					</div>
				</div>
			</div>

		</div>
			</div>



	<%@ include file="../common/footer.jsp" %>


	<%@ include file="../common/BacktoTop.jsp" %>
	
	
	<script>
	$(".trackview").on('click',function(){
		window.open("trackDetail.jsp", "trackDetail", "width=400, height=300, left=100, top=50");
	});
	</script>
<!--===============================================================================================-->   
   <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/bootstrap/js/popper.js"></script>
   <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/select2/select2.min.js"></script>
   <script>
      $(".js-select2").each(function(){
         $(this).select2({
            minimumResultsForSearch: 20,
            dropdownParent: $(this).next('.dropDownSelect2')
         });
      })
   </script>
<!--===============================================================================================-->
   <script src="vendor/daterangepicker/moment.min.js"></script>
   <script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
   <script src="vendor/slick/slick.min.js"></script>
   <script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
   <script src="vendor/parallax100/parallax100.js"></script>
   <script>
        $('.parallax100').parallax100();
   </script>
<!--===============================================================================================-->
   <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
   <script>
      $('.gallery-lb').each(function() { // the containers for all your galleries
         $(this).magnificPopup({
              delegate: 'a', // the selector for gallery item
              type: 'image',
              gallery: {
                 enabled:true
              },
              mainClass: 'mfp-fade'
          });
      });
   </script>
<!--===============================================================================================-->
   <script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/sweetalert/sweetalert.min.js"></script>
   <script>
      $('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
         e.preventDefault();
      });

      $('.js-addwish-b2').each(function(){
         var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-b2');
            $(this).off('click');
         });
      });

      $('.js-addwish-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-detail');
            $(this).off('click');
         });
      });

      /*---------------------------------------------*/

      $('.js-addcart-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to cart !", "success");
         });
      });
   
   </script>
<!--===============================================================================================-->
   <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
   <script>
      $('.js-pscroll').each(function(){
         $(this).css('position','relative');
         $(this).css('overflow','hidden');
         var ps = new PerfectScrollbar(this, {
            wheelSpeed: 1,
            scrollingThreshold: 1000,
            wheelPropagation: false,
         });

         $(window).on('resize', function(){
            ps.update();
         })
      });
   </script>
   
   	<script src="js/main.js"></script>	
</body>
</html>