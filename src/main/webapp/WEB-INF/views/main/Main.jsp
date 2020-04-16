<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="pages/All-Header.jsp" %>
<%@ include file="pages/All-Sidebar.jsp" %>
<%@ include file="pages/All-Cart.jsp" %>
<%@ include file="pages/All-Section-slide.jsp" %>
<style>
#header-color1{
	color:#6c7ae0
}
</style>
</head>
<body class="animsition">


	<!-- Banner -->
	<div class="sec-banner bg0 p-t-95 p-b-55">
		<div class="container">
			<div class="row">
			
				<c:forEach var="b" items="${ Auctionlist }"> 
				<c:if test="${b.ac_Banner_NO<3}"> 
				<div class="col-md-6 p-b-30 m-lr-auto">
				
					<c:url var="bproduct" value="bproduct.mn">
						<c:param name="b_Name" value="${ b.ac_Brand }"/>
					</c:url>
					<div class="block1 wrap-pic-w">
						<img src="/brocoli/resources/product-Img/${b.ac_Img_Rename }" alt="IMG-BANNER">
						<a href="${bproduct}" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									${b.ac_Brand}
								</span>

								<span class="block1-info stext-102 trans-04">
									${b.ac_Comment}
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									Shop Now
								</div>
							</div>
						</a>
					</div>
				</div>
				</c:if>
				<c:if test="${b.ac_Banner_NO>=3 }">
				  <div class="col-md-6 col-lg-4 p-b-30 m-lr-auto">
				  	<c:url var="bproduct" value="bproduct.mn">
						<c:param name="b_Name" value="${ b.ac_Brand }"/>
					</c:url>
					<div class="block1 wrap-pic-w">
						<img src="/brocoli/resources/product-Img/${b.ac_Img_Rename}" alt="IMG-BANNER">
						<a href="${bproduct}" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									${b.ac_Brand}
								</span>

								<span class="block1-info stext-102 trans-04">
									${b.ac_Comment}
								</span>
							</div>

							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									Shop Now
								</div>
							</div>
						</a>
					</div>
				</div> 
				</c:if>
			</c:forEach> 

			</div>
		</div>
	</div>
	

	<!-- Product -->
	<section class="bg0 p-t-23 p-b-130">
		<div class="container">
			<div class="p-b-10">
				<h3 class="ltext-103 cl5">
					주간랭킹TOP 20<br><br>
				</h3>
			</div>

			<div class="row isotope-grid">
			<c:forEach var="r" items="${ RankList }"> 
			
				<!-- 상품 상세 페이지로 가는 url -->
           		<c:url var="productDetail" value="productDetail.mn">
           			<c:param name="p_NO" value="${ r.p_NO }"/>
   	        	</c:url>
				<!-- -------------------- -->
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					
					<div class="block2">
				
						<div class="block2-pic hov-img0 label-new" data-label="New">
							<img src="/brocoli/resources/product-Img/${r.pfList.pf_Img1_ReName }" style="height:378px;" alt="IMG-PRODUCT">

							<a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								미리보기
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="${productDetail}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									${r.p_Name}
								</a>

								<span class="stext-105 cl3">
									${r.p_Last_Price }<b>원</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									구매 : ${r.p_Order_Count}
								</span>
							</div>

							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
									<img class="icon-heart1 dis-block trans-04" src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png" alt="ICON">
									<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png" alt="ICON">
								</a>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>

			</div>
			<br><br><br>
			<div class="p-b-10">
				<h3 class="ltext-103 cl5">
					EVENT<br><br>
				</h3>
			</div>

			<div class="row isotope-grid">
			<c:forEach var="e" items="${ EventList }"> 
			    <c:url var="productDetail" value="productDetail.mn">
           			<c:param name="p_NO" value="${ e.p_NO }"/>
   	        	</c:url>
   	        	

				<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
					<!-- Block2 -->
					
					<div class="block2">
				
						<div class="block2-pic hov-img0 label-new" id="productModal" data-label="New">
							<img src="/brocoli/resources/product-Img/${e.pfList.pf_Img1_ReName}"style="height:378px;" alt="IMG-PRODUCT">
							<input type="hidden" id="productNo" value="${e.p_NO }">
							<a href="#" id="ModalView" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
								미리보기
							</a>
						</div>

						<div class="block2-txt flex-w flex-t p-t-14">
							<div class="block2-txt-child1 flex-col-l ">
								<a href="${productDetail}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
									${e.p_Name}
								</a>

								<span class="stext-105 cl3">
									<strike>${e.p_Price}</strike>${e.p_Last_Price }<b>원</b>
								</span>
							</div>

							<div class="block2-txt-child2 flex-r p-t-3">
								<a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
									<img class="icon-heart1 dis-block trans-04" src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png" alt="ICON">
									<img class="icon-heart2 dis-block trans-04 ab-t-l" src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png" alt="ICON">
								</a>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>

			</div>
			

			<!-- Pagination -->
<!-- 			<div class="flex-c-m flex-w w-full p-t-38">
				<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1">
					1
				</a>

				<a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7">
					2
				</a>
			</div> -->
		</div>
	</section>

<%@ include file="pages/All-Footer.jsp" %>


<%@ include file="pages/All-BacktoTop.jsp" %>

	
<%@ include file = "pages/All-ShopModal.jsp" %>
			 
	<script>
	$('#productModal a[id=ModalView]').click(function(){
		var p_NO = $(this).parent().find('input[id=productNo]').val();
		$.ajax({
			url:"productModal",
			data:{p_NO:p_NO},
			dataType:"json",
			success:function(data){
				$('#productName').val(data[0].p_Name);
				$('#brandName').val(data[0].b_Name);
				$('#pNo').val(data[0].p_NO);
		
			},error:function(jqxhr,textStatus, errorThrown){
				console.log("ajax 처리실패");
				
				//에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
		});
	})
	
	
	</script>		

<!--===============================================================================================-->	
	<script src="/brocoli/resources/mainResources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/bootstrap/js/popper.js"></script>
	<script src="/brocoli/resources/mainResources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/daterangepicker/moment.min.js"></script>
	<script src="/brocoli/resources/mainResources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/slick/slick.min.js"></script>
	<script src="/brocoli/resources/mainResources/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
	<script src="/brocoli/resources/mainResources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/sweetalert/sweetalert.min.js"></script>
<!-- 	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').jsp();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').jsp();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').jsp();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	</script> -->
<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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
	<script src="/brocoli/resources/mainResources/js/main.js"></script>

</body>
</html>