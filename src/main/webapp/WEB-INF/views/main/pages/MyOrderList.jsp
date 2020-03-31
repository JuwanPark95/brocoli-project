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
	    padding-top: 1%;
	    text-align:center;
	    margin:2% auto;
	}
	
	.btn-term{
		background-color:white;
		border: 1px solid #6666;
	    border-radius: 5px;
	    padding: 4px;
	    color: #555;
	    }
    
	 .btn-term:hover{
	 	background: #BDBDBD;
	 	
	 }
	 
	 .datelist{
	 border:1px solid #6666;
	 margin-top:-1%;
	 }
	 
	 .datesearch{
	     border: 1px solid #3333;
	    border-radius: 5px;
	    padding: -1px;
	    font-size: 14px;
	    padding: 4px 7px 4px 7px;
	    font-family:Poppins-Bold;
	    color: #555;
		 
	 }
	 .datesearch:hover{
	 	background: #BDBDBD;
	 }
	 .ordertable{
	 	width:1000px;
	 	margin:0px auto;
	 	text-align:center;
	 	margin-bottom:80px;
	 }
	 
	 .orderdetail{
	    border-bottom:2px solid black;
		font-size:15px;
		height: 35px;
	 }
	 .orderview{
		 border: 1px solid #c3bdbd; 
		 padding: 4px; 
		 margin-left: 10px; 
		 margin-top: -1%; 
		 border-radius: 5px;
	 }
	 .ord-btn{
	     border: 1px solid #3333;
	    border-radius: 5px;
	    padding: -1px;
	    font-size: 14px;
	    padding: 4px 7px 4px 7px;
	    color: #555;
	    margin-bottom: 3px;
    }
    .ord-btn:hover{
    	background:#BDBDBD;
    }
	 
   @media (max-width: 1600px)
	.order-search {
    max-width: 1200px;
	}

</style>
</head>
<body class="animsition">

	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/main/images/bg-01.jpg'); position:relative;" id="">
		<h2 class="ltext-105 cl0 txt-center" style="color:white;">
			주문현황
		</h2>
	</section>

    <br><br>
	<!--  좌측 메뉴바 -->
	<!-- 상단 주문기간 검색 -->
	
	<div class="container">
		
	<div style=" margin:15px auto; border-bottom:1px solid #666">
	<label style=" display:inline-block; font-size:20px; "><b>주문 정보</b></label>
<!-- 	<button style="display:inline-block; float:right; margin-left: 10%; color: #555; margin-right: 30%;">환불</button>&nbsp;
	<button style="display:inline-block; float:right; margin-left: 10%; color: #555;">교환</button>&nbsp;
	<button style="display:inline-block; float:right; margin-left: 10%; color: #555;">배송상태</button>&nbsp;
	<button style="display:inline-block; float:right; margin-left: 10%; color: #555;">전체</button>&nbsp; -->
	</div>
	


	<div id="ordersearch" class="order-search" >
	
	
	<span style="float:left; width: 150px; margin-left:-40px;">&nbsp;&nbsp;기간별 조회</span>
	
	<div style="float:left; margin-top: -0.5%; display: inline-block;">
	<button class="btn-term"><strong>&nbsp;1주일&nbsp;</strong></button>
	<button class="btn-term"><strong>&nbsp;1개월&nbsp;</strong></button>
	<button class="btn-term"><strong>&nbsp;3개월&nbsp;</strong></button>
	<button class="btn-term"><strong>&nbsp;6개월&nbsp;</strong></button>
	<button class="btn-term"><strong>&nbsp;9개월&nbsp;</strong></button>
	<button class="btn-term"><strong>&nbsp;1년 이상&nbsp;</strong></button>
	
	
	</div>
	
	<div style="margin-top:-0.5%;">
	<input type="date" class="datelist" style="display:inline-block;">
	~
	<input type="date" class="datelist" style="display:inline-block;">
	
	<button class="datesearch"><strong>조회하기</strong></button>
	</div>
	<hr>
	</div>
	<!-- 끝 -->

			<div class="row" style="padding: 15px;">
							<table class="table-shopping-cart">
								<tr class="table_head" >
									<th style="width:8%; text-align:center;">주문번호</th>
									<th style="width:8%; text-align:center;"> 주문일자</th>
									<th style="width:10%; text-align:center;">이미지</th>
									<th style="width:20%; text-align:center;">상품정보</th>
									<th style="width:8%; text-align:center;">판매금액</th>
									<th style="width:8%; text-align:center;">회원 할인</th>
									<th style="width:8%; text-align:center;">적립금</th>
									<th style="width:6%; text-align:center;">수량</th>
									<th style="width:8%; text-align:center;">총 금액</th>
									<th style="width:8%; text-align:center;">상태</th>
									<th style="width:8%; text-align:center;">확인</th>
								</tr>
								<tr>
									<td style="text-align:center;">1</td>
									<td style="text-align:center;">2020-03-30</td>
									<td style="text-align:center;"><img src="images/item-cart-04.jpg" alt="IMG" style="padding: 15px;"></td>
									<td style="text-align:left;">
										<ul>
											<li>상품명 : 패딩</li>
											<li>옵션 1 : 레드 </li>
											<li>옵션 2 : XL </li>
										</ul>
									</td>
									<td style="text-align:center;"><strike>36,000원</strike>
																	   <br>34,000원</td>
									<td style="text-align:center;">-2000원</td>
									<td style="text-align:center;">360원</td>
									<td style="text-align:center;">2</td>
									<td style="text-align:center;">68,000원</td>
									<td style="text-align:center; font-size:13px; color: #555;"><strong>주문완료</strong><br>
									<td style="text-align:center;">
									<button class="ord-btn"><strong>상세 보기</strong></button>
									<button class="ord-btn"><strong>교환/반품</strong></button>
									<button class="ord-btn"><strong>리뷰 작성</strong></button>
									</td>
								</tr>

								<tr>
									<td style="text-align:center;">2</td>
									<td style="text-align:center;">2020-03-30</td>
									<td style="text-align:center;"><img src="images/item-cart-03.jpg" alt="IMG" style="padding: 15px;"></td>
									<td style="text-align:left;">
										<ul>
											<li>상품명 : 시계 </li>
											<li>옵션 1 : ? </li>
											<li>옵션 2 : ? </li>
										</ul>
									</td>
									<td style="text-align:center;"><strike>36,000원</strike>
																	   <br>34,000원</td>
									<td style="text-align:center;">-2000원</td>
									<td style="text-align:center;">360원</td>
									<td style="text-align:center;">2</td>
									<td style="text-align:center;">68,000원</td>
									<td style="text-align:center;"><!-- <span style="color:blue;">●</span> --><strong>배송 중</strong></td>
									<td style="text-align:center;">
									<button class="ord-btn"><strong>상세 보기</strong></button>
									<button class="ord-btn"><strong>교환/반품</strong></button>
									<button class="ord-btn"><strong>리뷰 작성</strong></button>
									</td>
								</tr>
							</table>
			</div>
							<br><br><br><br>
		
	</div>
	
	<%@ include file="../common/footer.jsp" %>


	<%@ include file="../common/BacktoTop.jsp" %>
	
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