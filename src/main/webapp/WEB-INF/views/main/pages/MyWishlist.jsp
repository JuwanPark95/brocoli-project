<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/cart.jsp" %>
<%@ include file="../common/sidebar.jsp" %>

<body class="animsition">
	   <!-- 
   	작성자 : 윤석훈
   	작성일 : 2020-03-20
   	내용 : 찜목록 추가
    -->

	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/main/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center" style="color:white;">
			관심 상품 관리
		</h2>
	</section>	
	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>
			<a href="/brocoli/main/myPage.jsp" class="stext-109 cl8 hov-cl1 trans-04">
				myPage
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				관심 상품 관리
			</span>
		</div>
	</div>
		

	<!-- Shoping Cart -->
	<form class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50" style="margin-left: -1%;">
					<div class="m-l-25 m-r--38 m-lr-0-xl" style="width: 170%;">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-0"><input type="checkbox"></th>
									<th class="column-1">이미지</th>
									<th class="column-2">상품명</th>
									<th class="column-3">옵션1</th>
									<th class="column-4">옵션2</th>
									<th class="column-5">판매금액</th>
									<th class="column-6">할인가</th>
									<th class="column-7">총 금액</th>
								</tr>

								<tr class="table_row">
									<td class="column-0"><input type="checkbox"></td>
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="images/item-cart-04.jpg" alt="IMG">
										</div>
									</td>
									<td class="column-2">패딩</td>
									<td class="column-3">Red</td>
									<td class="column-4">XL</td>
									<td class="column-5">36,000원</td>
									<td class="column-6">-2,000원</td>
									<td class="column-7">34,000원</td>
									
								</tr>
								
								

								<tr class="table_row">
									<td class="column-0"><input type="checkbox"></td>
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="images/item-cart-05.jpg" alt="IMG">
										</div>
									</td>
									<td class="column-2">아우터</td>
									<td class="column-3">BLACK</td>
									<td class="column-4">L</td>
									<td class="column-5">72,000원</td>
									<td class="column-6">-4,000원</td>
									<td class="column-7">68,000원</td>
								</tr>
								<tr style="height:100px;">
									<td colspan="6"></td>
									<td >총 금액 : </td>
									<td>102,000원 </td>
								</tr>
							</table>
						</div>

<!-- 						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-w flex-m m-r-20 m-tb-5">
								<input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="쿠폰 번호">
									

							</div>

							<div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10" style="margin-left: 88%; background: #666666;
    					color: white;">
								선택 상품 삭제
							</div>
						</div> -->
						<div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" style="background: #333;
   						 color: white; width: 200px; float: right; border-radius:5px;"	>
							장바구니에 담기
						</div>
						
						<div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" style="background: #333;
   						 color: white; width: 200px; float: right; border-radius:5px;"	>
							선택 상품 삭제
						</div>
					</div>
				</div>

<!-- 				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							결제
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									최종금액:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									52,000원
								</span>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									상세설명:
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								<p class="stext-111 cl6 p-t-2">
									보류
								</p>
								
								<div class="p-t-15">
									<span class="stext-112 cl8">
										분류
									</span>

									<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
										<select class="js-select2" name="time">
											<option>나라 선택</option>
											<option>한국</option>
											<option>미국</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>

									<div class="bor8 bg0 m-b-12">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="state" placeholder="State /  country">
									</div>

									<div class="bor8 bg0 m-b-22">
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="postcode" placeholder="Postcode / Zip">
									</div>
									
									<div class="flex-w">
										<div class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer">
											결제하기
										</div>
									</div>
										
								</div>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									총 금액:
								</span>
							</div>

							<div class="size-209 p-t-1">
								<span class="mtext-110 cl2">
									52,000원
								</span>
							</div>
						</div>

						<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							Proceed to Checkout
						</button>
					</div>
				</div> -->
			</div>
		</div>
	</form>
		
	
		

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
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>