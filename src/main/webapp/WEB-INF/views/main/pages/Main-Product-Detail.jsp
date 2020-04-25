<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="All-Header.jsp"%>
<%@ include file="All-Sidebar.jsp"%>
<%@ include file="All-Cart.jsp"%>



<style>
.img_color {
	width: 290px;
	height: 290px;
	display: inline-block;
	border: 1px solid black;
}
</style>
</head>

<body class="animsition">


	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<!-- 			<a href="/brocoli/WEB-INF/views/main/Main.jsp" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<a href="/brocoli/WEB-INF/views/main/pages/Main-Product.jsp" class="stext-109 cl8 hov-cl1 trans-04">
				Men
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a> -->
			<span class="stext-109 cl4">
				${aProducDetailtList[0].p_Bcategory} &nbsp;>&nbsp; </span> <span
				class="stext-109 cl4"> ${aProducDetailtList[0].p_Scategory}
				&nbsp;>&nbsp; </span> <span class="stext-109 cl4">
				${aProducDetailtList[0].p_Name} </span>
		</div>
	</div>


	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<div class="slick3 gallery-lb">
								<div class="item-slick3"
									data-thumb="/brocoli/resources/product-Img/${aProducDetailtList[0].pf_Img1_ReName}">
									<div class="wrap-pic-w pos-relative">
										<img
											src="/brocoli/resources/product-Img/${aProducDetailtList[0].pf_Img1_ReName}"
											alt="IMG-PRODUCT"> <a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="/brocoli/resources/product-Img/${aProducDetailtList[0].pf_Img1_ReName}">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>
								<c:if test="${aProducDetailtList[0].pf_Img2_ReName != NULL}">
									<div class="item-slick3"
										data-thumb="/brocoli/resources/product-Img/${aProducDetailtList[0].pf_Img2_ReName}">
										<div class="wrap-pic-w pos-relative">
											<img
												src="/brocoli/resources/product-Img/${aProducDetailtList[0].pf_Img2_ReName}"
												alt="IMG-PRODUCT"> <a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="/brocoli/resources/product-Img/${aProducDetailtList[0].pf_Img2_ReName}">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</c:if>

								<c:if test="${aProducDetailtList[0].pf_Img3_ReName != NULL}">
									<div class="item-slick3"
										data-thumb="/brocoli/resources/product-Img/${aProducDetailtList[0].pf_Img3_ReName}">
										<div class="wrap-pic-w pos-relative">
											<img
												src="/brocoli/resources/product-Img/${aProducDetailtList[0].pf_Img3_ReName}"
												alt="IMG-PRODUCT"> <a
												class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
												href="/brocoli/resources/product-Img/${aProducDetailtList[0].pf_Img3_ReName}">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

								</c:if>
							</div>
						</div>
					</div>
				</div>


				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<p class="stext-102 cl3 p-t-23"
							style="display: inline-block; padding: 5px; font-size: 25px;">
							<strong>${aProducDetailtList[0].p_Name}</strong>
						</p>
						<br>
						<p class="stext-102 cl3 p-t-23 "
							style="display: inline-block; padding: 5px;">
							<strong>브랜드 </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							${aProducDetailtList[0].b_Name}
						</p>
						&nbsp;&nbsp;&nbsp;
						<p class="stext-102 cl3 p-t-23" 
							style="display: inline-block; padding: 5px;">
							<strong>상품번호 </strong>&nbsp;&nbsp;&nbsp;
							${aProducDetailtList[0].p_NO}
						</p>
						
						<br>
						<p class="stext-102 cl3 p-t-23"
							style="display: inline-block; padding: 5px;">
							<strong>주문 횟수 :</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							${aProducDetailtList[0].p_Order_Count }
						</p>
						<br>
						<p class="stext-102 cl3 p-t-23"
							style="display: inline-block; padding: 5px;">
							<strong>재고 : </strong>&nbsp;&nbsp;&nbsp;
							${aProducDetailtList[0].op_Stock }개
						</p>
						<br>
						<hr>
						<p class="stext-102 cl3 p-t-23"
							style="display: inline-block; padding: 5px;">
							<strong>기본가격 </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span style="font-size: 18px;"><strong><strike>${aProducDetailtList[0].p_Price}원</strike></strong></span>
						</p>
						<br>
						<p class="stext-102 cl3 p-t-23"
							style="display: inline-block; padding: 5px;">
							<strong>판매가격 </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span style="font-size: 18px;"><strong>${aProducDetailtList[0].p_Last_Price}원</strong></span>
						</p>
						<br>
						<p class="stext-102 cl3 p-t-23"
							style="display: inline-block; padding: 5px;">
							<strong>상품 설명 </strong><br>
							${aProducDetailtList[0].p_Comment}
						</p>
						<form id="frm1" method="post">
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">

								<input type="hidden" value="${aProducDetailtList[0].p_NO}" id="pNo"/>
									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0" style="margin-left: -100px; ">
											<select class="js-select2" id="test1" name="option_1">
													<option value="선택하세요">선택하세요</option>
												<c:forEach var="ap" items="${ aProducDetailtList }">
													<c:if test="${ap.option_1 != NULL }">
														<option value="${ap.option_1 }">${ap.option_1 }</option>
													</c:if>
												</c:forEach>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">


									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0" id="opshow" style="margin-left: -100px; display:none;">
											<select class="js-select2" id="test2" name="option_2">
									
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div
												class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product"
												type="number" name="n_product" value="1">

											<div
												class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

									</div>
									<button
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"
										style="color: white; background-color: #333; border-radius: 5px;">
										즉시 결제</button>
									&nbsp;&nbsp;&nbsp;

										<input type="hidden" name="ct_P_NO" value="${ aProducDetailtList[0].p_NO }"/>
									 	<input type="hidden" name="ct_Mno" value="${ loginUser.mNO }"/>
										<input type="hidden" name="p_NO" value="${aProducDetailtList[0].p_NO}"/>

									<button type="submit" id="btnCart"
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail"
										style="color: white; background-color: #333; border-radius: 5px;">장바구니</button>

								</div>
							</div>

							<script>
								// 장바구니 담기 버튼
								$("#btnCart").on(
										"click",
										function() {
											$("#frm1").attr("action",
													"cInsert.mn").submit();
										});
							</script>

						</form>

						<!--  -->
						<div class="flex-w flex-m p-l-100 p-t-40 respon7"
							style="padding-left: 200px;">
							<div class="flex-m bor9 p-r-10 m-r-11">
								<a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
									data-tooltip="Add to Wishlist"> <i
									class="zmdi zmdi-favorite"></i>
								</a>
							</div>

							<a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
							</a> <a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
							</a> <a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
							</a>
						</div>

					</div>
				</div>

			</div>

			<div class="bor10 m-t-50 p-t-43 p-b-40">
				<!-- Tab01 -->
				<div class="tab01">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item p-b-10"><a class="nav-link active"
							data-toggle="tab" href="#description" role="tab">상품 설명</a></li>

						<li class="nav-item p-b-10"><a class="nav-link"
							data-toggle="tab" href="#information" role="tab">상품 QnA</a></li>

						<li class="nav-item p-b-10"><a class="nav-link"
							data-toggle="tab" href="#reviews" role="tab">후기 (1)</a></li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content p-t-43">
						<!-- - -->

						<div class="tab-pane fade show active" id="description"
							role="tabpanel">

							<div class="how-pos2 p-lr-15-md">
								<p class="stext-102 cl6">
									<img
										src="/brocoli/resources/product-Detail-Img/${aProducDetailtList[0].pf_Dimg1_ReName }">
									<c:if test="${aProducDetailtList[0].pf_Dimg2_ReName != NULL}">
										<img
											src="/brocoli/resources/product-Detail-Img/${aProducDetailtList[0].pf_Dimg2_ReName }">
									</c:if>
									<c:if test="${aProducDetailtList[0].pf_Dimg3_ReName != NULL}">
										<img
											src="/brocoli/resources/product-Detail-Img/${aProducDetailtList[0].pf_Dimg3_ReName }">
									</c:if>
								</p>
							</div>
						</div>

						<!-- - -->
						<div class="tab-pane fade" id="information" role="tabpanel" >
							<div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
									<div class="p-b-30 m-lr-15-sm" >
										<div id="commentQnA">
										<!-- Review -->
							<!-- 				<div class="flex-w flex-sb-m p-b-17">
													<span class="mtext-107 cl2 p-r-20"> 작성자 </span>
													<span class="mtext-107 cl2 p-r-20"> 작성일  </span>
													
												</div>
										<div class="flex-w flex-t p-b-68">
										
											<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6" style="width:160px; height:200px; border-radius: 0px;">
												<img src="/brocoli/resources/mainResources/images/avatar-01.jpg">
											</div>
											
											<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6" style="width:160px; height:200px;  border-radius: 0px;">
												<img src="/brocoli/resources/mainResources/images/avatar-01.jpg">
											</div>
											
	
											<div class="size-207"   style= "margin-top: 20px;">
											
												<p class="stext-102 cl6">맘에 드네여</p>
												
											</div>
											
										</div> -->
										</div>
										<!-- Add review -->
										<c:if test="${!empty sessionScope.loginUser }">
											<form id="qnacomment" method="post" enctype="multipart/form-data"> 
											<div class="w-full">

												<br>
												<!-- 				<p class="stext-102 cl6">
												Your email address will not be published. Required fields are marked *
											</p> -->

												
												<div class="row p-b-25">
														<label class="stext-102 cl3" for="review"
															style="display: inline-block">작성 

														</label>
													<div class="col-12 p-b-5">
												<div class="productImgArea" id="productImgArea">
                   									<input type="file" id="uploadFile1" name="uploadFile1" accept="resources/buploadFiles/" onchange="loadImg(this, 1);" style="display:inline-block;"/>
               									 </div>
                
               									 <div id="titleImgArea" style=" float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
								                    <img id="titleImg" src="http://via.placeholder.com/160x200"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
								                 </div>
								                 
								                 <div class="productImgArea" id="productImgArea2">
                   									<input type="file" id="uploadFile2" name="uploadFile2" accept="resources/buploadFiles/" onchange="loadImg2(this, 1);" style="display:inline-block;"/>
               									 </div>
                
               									 <div id="titleImgArea2" style=" float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
								                    <img id="titleImg2" src="http://via.placeholder.com/160x200"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
								                 </div>
													<textarea
															class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10"
															id="review" name="pq_Content" style="resize: none;"></textarea>
													</div>

												</div>
												<input type="hidden" name="pq_Id" value="${loginUser.mId }">
												<input type="hidden" name="pq_B_No" value="${aProducDetailtList[0].p_Brand_NO }">
												<input type="hidden" name="pq_Writer" value="${loginUser.mName}">
												<input type="hidden" name="pq_mNo" value="${loginUser.mNO}">
												<input type="hidden" id="productNo1" name="pq_P_No"
													value="${aProducDetailtList[0].p_NO }"> <button id="commentbtn"
													
													class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10"
													style="color: white;"> Submit </button>
											</div>
											</form>
										</c:if>
									</div>
								</div>
							</div>
						</div>

						<!-- - -->
						<div class="tab-pane fade" id="reviews" role="tabpanel">
							<span class="wrap-rating fs-18 cl11 pointer"
								style="margin-left: 25%;"> <label
								style="color: black; display: inline-block">평점 : </label> <i
								class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i
								class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i
								class="zmdi zmdi-star-half"></i> <br>
							<br> <input class="dis-none" type="number" name="rating">
							</span>
							<div class="row">
								<div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
									<div class="p-b-30 m-lr-15-sm">
										<!-- Review -->
										<div class="flex-w flex-t p-b-68">
											<div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
												<img
													src="/brocoli/resources/mainResources/images/avatar-01.jpg"
													alt="AVATAR">
											</div>

											<div class="size-207">
												<div class="flex-w flex-sb-m p-b-17">
													<span class="mtext-107 cl2 p-r-20"> 홍길동 </span> <span
														class="fs-18 cl11"> <i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i>
														<i class="zmdi zmdi-star"></i> <i
														class="zmdi zmdi-star-half"></i>
													</span>
												</div>

												<p class="stext-102 cl6">맘에 드네여</p>
											</div>
										</div>

										<!-- Add review -->
										<div class="w-full">
											<h5 class="mtext-108 cl2 p-b-7">리뷰</h5>

											<!-- 				<p class="stext-102 cl6">
												Your email address will not be published. Required fields are marked *
											</p> -->

											<div class="flex-w flex-m p-t-50 p-b-23">
												<span class="stext-102 cl3 m-r-16"> 별점 </span> <span
													class="wrap-rating fs-18 cl11 pointer"> <i
													class="item-rating pointer zmdi zmdi-star-outline"></i> <i
													class="item-rating pointer zmdi zmdi-star-outline"></i> <i
													class="item-rating pointer zmdi zmdi-star-outline"></i> <i
													class="item-rating pointer zmdi zmdi-star-outline"></i> <i
													class="item-rating pointer zmdi zmdi-star-outline"></i> <input
													class="dis-none" type="number" name="rating">
												</span>
											</div>

											<div class="row p-b-25">
												<div class="col-12 p-b-5">
													<label class="stext-102 cl3" for="review"
														style="display: inline-block">작성 <input
														type="file"
														style="display: inline-block; margin-left: 400px;">

													</label>



													<textarea
														class="size-110 bor8 stext-102 cl2 p-lr-20 p-tb-10"
														id="review" name="review"></textarea>
												</div>

												<!-- 												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="name">Name</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="name" type="text" name="name">
												</div>

												<div class="col-sm-6 p-b-5">
													<label class="stext-102 cl3" for="email">Email</label>
													<input class="size-111 bor8 stext-102 cl2 p-lr-20" id="email" type="text" name="email">
												</div> -->
											</div>

											<button
												class="flex-c-m stext-101 cl0 size-112 bg7 bor11 hov-btn3 p-lr-15 trans-04 m-b-10"
												style="color: white;">Submit</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
			<span class="stext-107 cl6 p-lr-25"> SKU: JAK-01 </span> <span
				class="stext-107 cl6 p-lr-25"> Categories: Jacket, Men </span>
		</div>
	</section>


	<!-- Related Products -->
	<section class="sec-relate-product bg0 p-t-45 p-b-105">
		<div class="container">
			<div class="p-b-45">
				<h3 class="ltext-106 cl5 txt-center">관련 상품</h3>
			</div>

			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">
					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img
									src="/brocoli/resources/mainResources/images/product-01.jpg"
									alt="IMG-PRODUCT"> <a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a
										href="/brocoli/WEB-INF/views/main/pages/Main-Product-Detail.jsp"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Esprit Ruffle Shirt </a> <span class="stext-105 cl3">
										$16.64 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png"
										alt="ICON"> <img
										class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png"
										alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img
									src="/brocoli/resources/mainResources/images/product-02.jpg"
									alt="IMG-PRODUCT"> <a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a
										href="/brocoli/WEB-INF/views/main/pages/Main-Product-Detail.jsp"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Herschel supply </a> <span class="stext-105 cl3"> $35.31 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png"
										alt="ICON"> <img
										class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png"
										alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img
									src="/brocoli/resources/mainResources/images/product-03.jpg"
									alt="IMG-PRODUCT"> <a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a
										href="/brocoli/WEB-INF/views/main/pages/Main-Product-Detail.jsp"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Only Check Trouser </a> <span class="stext-105 cl3"> $25.50
									</span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png"
										alt="ICON"> <img
										class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png"
										alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img
									src="/brocoli/resources/mainResources/images/product-04.jpg"
									alt="IMG-PRODUCT"> <a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a
										href="/brocoli/WEB-INF/views/main/pages/Main-Product-Detail.jsp"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Classic Trench Coat </a> <span class="stext-105 cl3">
										$75.00 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png"
										alt="ICON"> <img
										class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png"
										alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img
									src="/brocoli/resources/mainResources/images/product-05.jpg"
									alt="IMG-PRODUCT"> <a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a
										href="/brocoli/WEB-INF/views/main/pages/Main-Product-Detail.jsp"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Front Pocket Jumper </a> <span class="stext-105 cl3">
										$34.75 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png"
										alt="ICON"> <img
										class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png"
										alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img
									src="/brocoli/resources/mainResources/images/product-06.jpg"
									alt="IMG-PRODUCT"> <a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a
										href="/brocoli/WEB-INF/views/main/pages/Main-Product-Detail.jsp"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Vintage Inspired Classic </a> <span class="stext-105 cl3">
										$93.20 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png"
										alt="ICON"> <img
										class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png"
										alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img
									src="/brocoli/resources/mainResources/images/product-07.jpg"
									alt="IMG-PRODUCT"> <a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a
										href="/brocoli/WEB-INF/views/main/pages/Main-Product-Detail.jsp"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Shirt in Stretch Cotton </a> <span class="stext-105 cl3">
										$52.66 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png"
										alt="ICON"> <img
										class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png"
										alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-pic hov-img0">
								<img
									src="/brocoli/resources/mainResources/images/product-08.jpg"
									alt="IMG-PRODUCT"> <a href="#"
									class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
									Quick View </a>
							</div>

							<div class="block2-txt flex-w flex-t p-t-14">
								<div class="block2-txt-child1 flex-col-l ">
									<a href="Main-Product-Detail.jsp"
										class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
										Pieces Metallic Printed </a> <span class="stext-105 cl3">
										$18.96 </span>
								</div>

								<div class="block2-txt-child2 flex-r p-t-3">
									<a href="#"
										class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
										<img class="icon-heart1 dis-block trans-04"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-01.png"
										alt="ICON"> <img
										class="icon-heart2 dis-block trans-04 ab-t-l"
										src="/brocoli/resources/mainResources/images/icons/icon-heart-02.png"
										alt="ICON">
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<%@ include file="All-ShopModal.jsp"%>

	<script>

	$(function(){
	    $("#test1").change(function() {
	    	var test = "";
	    	var option2 = "";
			var option_1 = $("#test1").val();
			var p_NO = $("#pNo").val();
			$.ajax({
				url:"optionDetail",
				data:{p_NO:p_NO,
					  option_1:option_1},
				dataType:"json",
				success:function(data){
					 var tempArr1 = [];
				        for (var i = 0; i < data.length; i++) {
				            if (tempArr1.length == 0) {
				                tempArr1.push(data[i].option_2);
				            } else {
				                var duplicatesFlag1 = true;
				                for (var j = 0; j < tempArr1.length; j++) {
				                    if (tempArr1[j] == data[i].option_2) {
				                        duplicatesFlag1 = false;
				                        break;
				                    }
				                }
				                if (duplicatesFlag1) {
				                    tempArr1.push(data[i].option_2);
				                }
				            }
				        }
	
				        for(var i=0; i<tempArr1.length; i++){
				        	if(tempArr1[i] != null){
				        		option2 += "<option>"+tempArr1[i]+"</option>";
				        	}
				        }
				        
						if(option_1 == "선택하세요"){
							$('#test2').html(test);
							$('#opshow').css("display","none");
						}else{
							$('#test2').html(option2);
							$('#opshow').css("display","block");
						}
				},error:function(jqxhr,textStatus, errorThrown){
					console.log("ajax 처리실패");
					
					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			});
	    });
	});
	
	</script>

	<%@ include file="All-Footer.jsp"%>
	<%@ include file="All-BacktoTop.jsp"%>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/bootstrap/js/popper.js"></script>
	<script
		src="/brocoli/resources/mainResources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/daterangepicker/moment.min.js"></script>
	<script
		src="/brocoli/resources/mainResources/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/slick/slick.min.js"></script>
	<script src="/brocoli/resources/mainResources/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/parallax100/parallax100.js"></script>
	<script>
		$('.parallax100').parallax100();
	</script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
				delegate : 'a', // the selector for gallery item
				type : 'image',
				gallery : {
					enabled : true
				},
				mainClass : 'mfp-fade'
			});
		});
	</script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e) {
			e.preventDefault();
		});

		$('.js-addwish-b2').each(
				function() {
					var nameProduct = $(this).parent().parent().find(
							'.js-name-b2').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});

		$('.js-addwish-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent().find(
							'.js-name-detail').html();

					$(this).on('click', function() {
						swal(nameProduct, "is added to wishlist !", "success");

						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(
				function() {
					var nameProduct = $(this).parent().parent().parent()
							.parent().find('.js-name-detail').html();
					$(this).on('click', function() {
						swal(nameProduct, "is added to cart !", "success");
					});
				});
	</script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function() {
			$(this).css('position', 'relative');
			$(this).css('overflow', 'hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed : 1,
				scrollingThreshold : 1000,
				wheelPropagation : false,
			});

			$(window).on('resize', function() {
				ps.update();
			})
		});
	</script>
	<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/js/main.js"></script>

	<!-- 댓글 추가 및 조회 -->
	<script>
	$( document ).ready(function() {
		var pq_P_No = "${aProducDetailtList[0].p_NO }";
		var comment = "";
		
		$.ajax({
			url : "qnacommentlist",
			data  : {
					pq_P_No:pq_P_No
					},
			dataType:"json",
			success : function(data){
				
			for(var i=0; i<data.length; i++){
				
				comment +=	"<div class='flex-w flex-sb-m p-b-17'>"
				comment +=	"<span class='mtext-107 cl2 p-r-20'>"+data[i].pq_Writer +"</span>"
				comment +=	"<span class='mtext-107 cl2 p-r-20'>"+data[i].pq_Date + "</span>"
				comment +=	"</div>"
				comment +=	"<div class='flex-w flex-t p-b-68'>"
				
				if(data[i].pq_Img1_ReName != null ){
					comment +=	"<div class='wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6' style='width:160px; height:200px; border-radius: 0px;'>"
					comment +=	"<img src='/brocoli/resources/QnA-Img/"+data[i].pq_Img1_ReName+"'>"
					comment +=	"</div>"
				}
				if(data[i].pq_Img2_ReName != null){
					comment +=	"<div class='wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6' style='width:160px; height:200px;  border-radius: 0px;''>"
					comment +=	"<img src='/brocoli/resources/QnA-Img/"+data[i].pq_Img2_ReName +"'>"
					comment +=	"</div>"
				}
				comment +=	"<div class='size-207'   style= 'margin-top: 20px;'>"
				comment +=	"<p class='stext-102 cl6'>"+data[i].pq_Content+"</p>"
				comment +=	"</div>"
				comment +=	"</div>"
			}
				$('#commentQnA').html(comment);
			},error : function(jqxhr, textStatus, errorThrown) {
				console.log("ajax 처리실패");

				//에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
		})
	});
	
	function commentlist()
	{
		var pq_P_No = "${aProducDetailtList[0].p_NO }";
		var comment = "";
		
		$.ajax({
			url : "qnacommentlist",
			data  : {
					pq_P_No:pq_P_No
					},
			dataType:"json",
			success : function(data){
				
			for(var i=0; i<data.length; i++){
				
				comment +=	"<div class='flex-w flex-sb-m p-b-17 id=su"+i+"'>"
				comment +=	"<span class='mtext-107 cl2 p-r-20'>"+data[i].pq_Writer +"</span>"
				comment +=	"<span class='mtext-107 cl2 p-r-20'>"+data[i].pq_Date + "</span>"
				comment +=	"</div>"
				comment +=	"<div class='flex-w flex-t p-b-68'>"
				
				if(data[i].pq_Img1_ReName != null ){
					comment +=	"<div class='wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6' style='width:160px; height:200px; border-radius: 0px;'>"
					comment +=	"<img src='/brocoli/resources/QnA-Img/"+data[i].pq_Img1_ReName+"'>"
					comment +=	"</div>"
				}
				if(data[i].pq_Img2_ReName != null){
					comment +=	"<div class='wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6' style='width:160px; height:200px;  border-radius: 0px;''>"
					comment +=	"<img src='/brocoli/resources/QnA-Img/"+data[i].pq_Img2_ReName +"'>"
					comment +=	"</div>"
				}
				comment +=	"<div class='size-207'   style= 'margin-top: 20px;'>"
				comment +=	"<p class='stext-102 cl6'>"+data[i].pq_Content+"</p>"
				comment +=	"</div>"
				comment +=	"</div>"
			}
				$('#commentQnA').html(comment);
			},error : function(jqxhr, textStatus, errorThrown) {
				console.log("ajax 처리실패");

				//에러로그
				console.log(jqxhr);
				console.log(textStatus);
				console.log(errorThrown);
			}
		})
	};
	
	$(function(){
		commentlist();
	
		$("form#qnacomment").submit(function(e) {
			e.preventDefault();
			var formData = new FormData(this);

			$.ajax({
				url : "qnacomment",
				type : "POST",
				data : formData,
				async: false,
				success : function(data) {
					if(data = "ok"){
						$('#review').val(" ");
						$('#titleImg').attr('src', "http://via.placeholder.com/160x200");
						$('#titleImg2').attr('src', "http://via.placeholder.com/160x200");
						commentlist();
					}
				},
		        cache: false,
		        contentType: false,
		        processData: false,
				error : function(jqxhr, textStatus, errorThrown) {
					console.log("ajax 처리실패");

					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			});
			return false;
		});
		
	});
	</script>
	<script>
	$(function(){
	     $('#productImgArea').hide();
	     
	        
	     $('#titleImgArea').click(() => {
	        $('#uploadFile1').click();
	     });
	   });

	   function loadImg(value, num){
	     
	     if(value.files/*  && value.files[0] */)  {
	        
	        var reader = new FileReader();
	        
	        reader.onload = function(e){
	           
	           switch(num) {
	           case 1 : $('#titleImg').attr('src', e.target.result);
	              break;
	           }
	        }
	        reader.readAsDataURL(value.files[0]);
	     }
	   } 
	   
		$(function(){
		     $('#productImgArea2').hide();
		     
		        
		     $('#titleImgArea2').click(() => {
		        $('#uploadFile2').click();
		     });
		   });

		   function loadImg2(value, num){
		     
		     if(value.files/*  && value.files[0] */)  {
		        
		        var reader = new FileReader();
		        
		        reader.onload = function(e){
		           
		           switch(num) {
		           case 1 : $('#titleImg2').attr('src', e.target.result);
		              break;
		           }
		        }
		        reader.readAsDataURL(value.files[0]);
		     }
		   } 
	</script>
</body>
</html>