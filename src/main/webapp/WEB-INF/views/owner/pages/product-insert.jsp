<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<!-- 
	작성자 : 박주완
	작성일 : 2020-03-20 
	내용    : 상품등록 
-->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>오너 : 상품등록</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/brocoli/resources/ownerResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/libs/css/style.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
    
    <%@ include file="header.jsp" %>
            
    <style type="text/css">
    #small-category-A { display: none;}
    #small-category-B { display: none;}
    #small-category-C { display: none;}
    #small-category-D { display: none;}
    #small-category-E { display: none;}
    #small-category-F { display: none;}
    #small-category-G { display: none;}
    #small-category-H { display: none;}
    #small-category-I { display: none;}
    #small-category-J { display: none;}
    #small-category-K { display: none;}
    #small-category-L { display: none;}
    #small-category-M { display: none;}
    
    #small-category-  { display: none;}
    
    #small-category-Z { display: none;}  /* Z는 반드시 마지막 번째 기타항목  */
    
    .btn-secondary{
	    color: #fff;
	    background-color: #ff407b;
	    border-color: #ff407b;
    }
    </style>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">


        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pageheader -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h2 class="pageheader-title">상품등록</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">상품관리</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">상품등록</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
             

                    <div class="row">
                        <!-- ============================================================== -->
                        <!-- valifation types -->
                        <!-- ============================================================== -->
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">상품등록</h5>
                                <div class="card-body">
                                    <form action="product-insert.ow" method="post" enctype="multipart/form-data" onsubmit="return checks()">
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input name="brand" value="${loginUser.brand }" type="text"  placeholder="자동생성" class="form-control" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">등록자</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input name="mName" value="${loginUser.mName }" type="text"  placeholder="자동생성" class="form-control" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input name="p_Name" id="p_Name" type="text" data-parsley-minlength="6" placeholder="상품명을 입력해주세요." class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품 이미지</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                            	<div id="titleImgArea" style="float: left;">
	                                            	<img id="titleImg" name="pf_Img1" src="http://via.placeholder.com/160x200" class="img-thumbnail mr-3" alt="Responsive image" style="width: 161px; height: 200px;">
	                                            </div>
	                                            <div id="contentImgArea1" style="float: left;">
	                                            	<img id="contentImg1" name="pf_Img2" src="http://via.placeholder.com/160x200" class="img-thumbnail mr-3" alt="Responsive image" style="width: 160px; height: 200px;">
	                                            </div>
	                                            <div id="contentImgArea2" style="float: left;">
	                                            	<img id="contentImg2" name="pf_Img3" src="http://via.placeholder.com/160x200" class="img-thumbnail mr-3" alt="Responsive image" style="width: 160px; height: 200px;">
	                                            </div>
	                                            <div id="contentImgArea3" style="float: left;">
	                                           		<img id="contentImg3" name="pf_Img4" src="http://via.placeholder.com/160x200" class="img-thumbnail mr-3" alt="Responsive image" style="width: 160px; height: 200px;">
	                                            </div>
	                                            <div id="contentImgArea4" style="float: left;">
	                                            	<img id="contentImg4" name="pf_Img5" src="http://via.placeholder.com/160x200" class="img-thumbnail mr-3" alt="Responsive image" style="width: 160px; height: 200px;">
	                                            </div>
	                                            <div id="contentImgArea5" style="float: left;">
	                                            	<img id="contentImg5" name="pf_Img6" src="http://via.placeholder.com/160x200" class="img-thumbnail mr-3" alt="Responsive image" style="width: 160px; height: 200px;">
	                                            </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품설명 이미지</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                            	<div id="contentImgArea6" style="float: left;">
	                                            	<img id="contentImg6" name="pf_Dimg1" src="http://via.placeholder.com/160x200" class="img-thumbnail mr-3" alt="Responsive image" style="width: 155px; height: 205px;">
	                                            </div>
	                                            <div id="contentImgArea7" style="float: left;">
	                                            	<img id="contentImg7" name="pf_Dimg2" src="http://via.placeholder.com/160x200" class="img-thumbnail mr-3" alt="Responsive image" style="width: 155px; height: 205px;">
	                                            </div>
	                                            <div id="contentImgArea8" style="float: left;">
	                                            	<img id="contentImg8" name="pf_Dimg3" src="http://via.placeholder.com/160x200" class="img-thumbnail mr-3" alt="Responsive image" style="width: 155px; height: 205px;">
	                                            </div>
                                            </div>
                                        </div>
                                        
                                        <div class="productImgArea" id="productImgArea">
                                        	<input type="file" id="thumbnailImg1" name="thumbnailImg1" accept="resources/product-Img/*" onchange="loadImg(this, 1);" />
                                        	<input type="file" id="thumbnailImg2" name="thumbnailImg2" accept="resources/product-Img/*" onchange="loadImg(this, 2);" />
                                        	<input type="file" id="thumbnailImg3" name="thumbnailImg3" accept="resources/product-Img/*" onchange="loadImg(this, 3);" />
                                        	<input type="file" id="thumbnailImg4" name="thumbnailImg4" accept="resources/product-Img/*" onchange="loadImg(this, 4);" />
                                        	<input type="file" id="thumbnailImg5" name="thumbnailImg5" accept="resources/product-Img/*" onchange="loadImg(this, 5);" />
                                        	<input type="file" id="thumbnailImg6" name="thumbnailImg6" accept="resources/product-Img/*" onchange="loadImg(this, 6);" />
                                        	<input type="file" id="thumbnailImg7" name="thumbnailImg7" accept="resources/product-Detail-Img/*" onchange="loadImg(this, 7);" />
                                        	<input type="file" id="thumbnailImg8" name="thumbnailImg8" accept="resources/product-Detail-Img/*" onchange="loadImg(this, 8);" />
                                        	<input type="file" id="thumbnailImg9" name="thumbnailImg9" accept="resources/product-Detail-Img/*" onchange="loadImg(this, 9);" />
                                        </div>

                                        
                                       
	                                        <div class="form-group row">
	                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">등록가격</label>
	                                            <div class="col-12 col-sm-8 col-lg-6">
	                                                <input id="p_Price" name="p_Price" type="number" min="0" data-parsley-min="6" placeholder="판매금액으로 표시됩니다." class="form-control" onkeyup="resultPrice()">
	                                            </div>
	                                        </div>
	                                        <div class="form-group row">
	                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">할인가격</label>
	                                            <div class="col-12 col-sm-8 col-lg-6">
	                                                <input id="p_Sail_Price" name="p_Sail_Price" type="number" min="0" data-parsley-max="6" placeholder="할인금액으로 표시됩니다. (선택사항)" class="form-control" onkeyup="resultPrice()">
	                                            </div>
	                                        </div>
	
	                                        <div class="form-group row">
	                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">최종판매가격</label>
	                                            <div class="col-12 col-sm-8 col-lg-6">
	                                                <input readonly="readonly" id=p_Last_Price name="p_Last_Price" type="number" min="0" max="10000000" placeholder="할인 적용후 금액으로 표시되며 실제판매되는 금액입니다. (등록가격-할인가격 = 최종가격)" class="form-control">
	                                            </div>
	                                        </div>
                                       
                                        
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">카테고리 - 대분류</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
												<select id="big-category" name="p_Bcategory" class="btn btn-secondary dropdown-toggle" style="height: 38px;background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
													<option value="" selected="selected">카테고리</option>
													<option value="A">상의</option>
													<option value="B">아우터</option>
													<option value="C">원피스</option>
													<option value="D">하의</option>
													<option value="E">스커트</option>
													<option value="F">가방</option>
													<option value="G">신발</option>
													<option value="H">모자</option>
													<option value="I">악세서리</option>
													<option value="J">언더웨어</option>
													<option value="Z">기타</option>
												</select>
                                         
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">카테고리 - 소분류</label>
                                            <div class="col-sm-4 col-lg-3 mb-3 mb-sm-0">
													<select id="small-category-A" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- 티셔츠</option>
														<option value="B">- 셔츠</option>
														<option value="C">- 맨투맨/스웨트셔츠</option>
														<option value="D">- 후드스웨트셔츠/후드집업</option>
														<option value="E">- 니트/스웨터/가디건</option>
														<option value="Z">- 기타상의</option>
													</select>
													<select id="small-category-B" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- 블루종/MA-1</option>
														<option value="B">- 레더/라이더스재킷</option>
														<option value="C">- 트러커재킷</option>
														<option value="D">- 수트/블레이저 재킷</option>
														<option value="E">- 나일론/코치/아노락</option>
														<option value="F">- 겨울싱글코트</option>
														<option value="G">- 겨울기타코트</option>
														<option value="H">- 헤비아우터</option>
														<option value="Z">- 기타아우터</option>
													</select>
													<select id="small-category-C" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- 미니원피스</option>
														<option value="B">- 미디원피스</option>
														<option value="C">- 맥시원피스</option>
														<option value="D">- 점프수트</option>
													</select>
													<select id="small-category-D" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- 데님팬츠</option>
														<option value="B">- 코튼팬츠</option>
														<option value="C">- 수트팬츠/슬렉스</option>
														<option value="D">- 트레이닝/조거팬츠</option>
														<option value="E">- 숏팬츠</option>
														<option value="F">- 레깅스</option>
														<option value="Z">- 기타</option>
													</select>
													<select id="small-category-E" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- 미니스커트</option>
														<option value="B">- 미디스커트</option>
														<option value="C">- 롱스커트</option>
													</select>
													<select id="small-category-F" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- 백팩</option>
														<option value="B">- 메신저/크로스백</option>
														<option value="C">- 클러치/파우치</option>
														<option value="D">- 브리프케이스</option>
														<option value="E">- 웨이스트백</option>
														<option value="Z">- 기타가방</option>
													</select>
													<select id="small-category-G" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- 스니커즈</option>
														<option value="B">- 구두</option>
														<option value="C">- 부츠</option>
														<option value="D">- 힐/펌프스</option>
														<option value="E">- 플랫</option>
														<option value="F">- 로퍼</option>
														<option value="Z">- 기타신발</option>
													</select>
													<select id="small-category-H" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- 캡/야구모자</option>
														<option value="B">- 헌팅/베레</option>
														<option value="C">- 비니</option>
														<option value="D">- 버킷/사파리</option>
														<option value="Z">- 기타모자</option>
													</select>
													<select id="small-category-I" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- 안경</option>
														<option value="B">- 마스크</option>
														<option value="C">- 지갑</option>
														<option value="D">- 벨트</option>
														<option value="E">- 반지</option>
														<option value="F">- 팔찌</option>
														<option value="G">- 목걸이</option>
														<option value="H">- 귀걸이</option>
														<option value="I">- 머플러</option>
														<option value="J">- 장갑</option>
														<option value="K">- 넥타이</option>
														<option value="L">- 키링</option>
														<option value="M">- 헤어악세서리</option>
														<option value="Z">- 기타</option>
													</select>
													<select id="small-category-J" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- 양말</option>
														<option value="B">- 속옷</option>
														<option value="C">- 스타킹</option>
														<option value="D">- 홈웨어</option>
													</select>
													<select id="small-category-Z" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="Z">- 기타전체</option>
													</select>
													<select id="small-category-" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- </option>
														<option value="B">- </option>
														<option value="C">- </option>
														<option value="D">- </option>
														<option value="E">- </option>
														<option value="F">- </option>
														<option value="G">- </option>
														<option value="H">- </option>
														<option value="I">- </option>
														<option value="J">- </option>
														<option value="K">- </option>
														<option value="">- </option>
													</select>
													<select id="small-category-" name="p_Scategory" class="btn btn-secondary dropdown-toggle p_Scategory" style="height: 38px; width: 350px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
														<option value="" selected="selected">카테고리</option>
														<option value="A">- </option>
														<option value="B">- </option>
														<option value="C">- </option>
														<option value="D">- </option>
														<option value="E">- </option>
														<option value="F">- </option>
														<option value="G">- </option>
														<option value="H">- </option>
														<option value="I">- </option>
														<option value="J">- </option>
														<option value="K">- </option>
														<option value="">- </option>
													</select>
												
												
                                            </div>

                                        </div>

                                        

                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품요약설명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <textarea id="p_Comment" name="p_Comment" class="form-control"></textarea>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right" >옵션설정</label>
                                            <div class="col-12 col-sm-8 col-lg-6" style="">
                                            
                                                <div class="col-xl-6 col-lg-12 col-md-12 col-sm-12 col-12 mb-5" style="max-width: 100%; ">
						                            <div class="tab-regular">
						                                <ul class="nav nav-tabs " id="myTab" role="tablist">
						                                    <li class="nav-item">
						                                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">옵션등록</a>
						                                    </li>
						                                </ul>
						                                <div class="tab-content" id="myTabContent" style="    width: 100%;">
						                                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
						                                        <div id="combinationArea" >
						                                        	<table style="border-bottom: 1px solid #dddde8; margin-bottom: 10px; width: 100%;">
						                                        		<thead>
								                                            <tr>
								                                                <th>옵션1</th>
								                                                <th>옵션2</th>
								                                                <th>재고</th>
								                                            </tr>
								                                        </thead>
						                                        		 <tbody>
								                                            <tr style="max-width: 100px;">
								                                                <td>
								                                                	<div class="input-group mb-3" >
										                                                <input id="Option1" type="text" class="form-control option1">
										                                                <div style="background: none; border: none; width: 50px;"></div>
										                                            </div>
								                                                </td>
								                                                <td>
									                                                <div class="input-group mb-3" >
											                                        	<input id="Option2" type="text" class="form-control option2">
											                                        	<div style="background: none; border: none; width: 50px;"></div>
											                                        </div>
								                                                </td>
								                                                <td>
									                                                <div class="input-group mb-3" >
											                                        	<input id="stock" type="number" min="0" class="form-control stock">
											                                        	<div style="background: none; border: none; width: 50px;"></div>
											                                        </div>
								                                                </td>
								                                            </tr>
								                                         </tbody>
						                                        	</table >
						                                        </div>
						                                        <a class="btn btn-secondary" onclick="productOptionAdd()" style="color: #FFFFFF;">옵션리스트에 등록</a>
						                                    </div>
						                                </div>
						                            </div>
				                       			</div>
					                        <!-- ============================================================== -->
					                        <!-- striped table -->
					                        <!-- ============================================================== -->
					                        <div class=" col-md-12 col-sm-12 col-12" style="width: 100%;">
					                            <div class="card">
					                                <h5 class="card-header">옵션 리스트</h5>
					                                <div class="card-body">
					                                    <table class="table table-striped">
					                                        <thead style="text-align: center;">
					                                            <tr>
		                                                          <th scope="col" style="width: 15%;">번호</th>
														          <th scope="col" style="width: 20%;">옵션1</th>
														          <th scope="col" style="width: 20%;">옵션2</th>
														          <th scope="col">재고</th>
														          <th scope="col">비고</th>
					                                            </tr>
					                                        </thead>
					                                        <tbody  id="product-add-Option" style="text-align: center;">
					                                           
					                                        </tbody>
					                                    </table>
					                                </div>
					                            </div>
					                        </div>
				                        <!-- ============================================================== -->
				                        <!-- end striped table -->
				                        <!-- ============================================================== -->
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row text-right">
                                            <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                                <button type="submit" class="btn btn-space btn-primary">등록</button>
                                                <button class="btn btn-space btn-secondary">취소</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end valifation types -->
                        <!-- ============================================================== -->
                    </div>
           
            </div>

        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->

    <script src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/parsley/parsley.js"></script>
    <script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
    
<!--    작성자 : 박주완
        작성일 : 2020-04-03
        내용: 옵션리스트 등록/삭제 스크립트 -->
    <script>
	    function productOptionAdd(){
	        var option1 = $('#Option1').val();
	        var option2 = $('#Option2').val();
	        var stock = $('#stock').val();
	        var count = 0;
	        
		    $('#product-add-Option').append('<tr>'+
		            '<th scope="row">'+count+'</th>'+
		            '<td id="Option_1" name="Option_1">'+option1+'</td>'+
		            '<td id="Option_2" name="Option_2">'+option2+'</td>'+
		            '<td id="op_Stock" name="op_Stock">'+stock+'</td>'+
		            '<td><button onclick="closeBtn(this)" class="btn btn-danger">삭제</button></td>'+
		            '</tr>');
		    
		 	count++;   
	    }
		            
	    
	    function closeBtn(en){
	          $(en).parents('tr').remove('tr');
	    }
    </script>
    
<!--    작성자 : 박주완
        작성일 : 2020-04-03
        내용: 할인가격 자동 계산 스크립트 -->
    <script>
	    function resultPrice() {
	    	var price = document.getElementById("p_Price").value;	
	    	var sailPrice = document.getElementById("p_Sail_Price").value;	
	    	document.getElementById("p_Last_Price").value = parseInt(price) - parseInt(sailPrice);
	    }
    </script>
    
    <script>
    $('#form').parsley();
    </script>

<!--    작성자 : 박주완
        작성일 : 2020-04-03
        내용: 이미지 클릭시 이미지 파일 업로드 스크립트 -->
	<script>
	//사진 게시판 미리보기 기능 지원 스크립트
	$(function(){
	   $('#productImgArea').hide();
	   
	      
	   $('#titleImgArea').click(() => {
	      $('#thumbnailImg1').click();
	   });
	      
	   $('#contentImgArea1').click(() => {
	      $('#thumbnailImg2').click();
	   });
	   
	   $('#contentImgArea2').click(() => {
	      $('#thumbnailImg3').click();
	   });

	   $('#contentImgArea3').click(() => {
	      $('#thumbnailImg4').click(); 
	   });
	    
	   $('#contentImgArea4').click(() => {
	      $('#thumbnailImg5').click();
	   });
	    
	   $('#contentImgArea5').click(() => {
	      $('#thumbnailImg6').click();
	   });
	   
	   $('#contentImgArea6').click(() => {
		  $('#thumbnailImg7').click();
	   });
	   
	   $('#contentImgArea7').click(() => {
		  $('#thumbnailImg8').click();
	   });
	   
	   $('#contentImgArea8').click(() => {
		  $('#thumbnailImg9').click();
	   });
	   
	});

	function loadImg(value, num){
	   
	   if(value.files && value.files[0])  {
	      
	      var reader = new FileReader();
	      
	      reader.onload = function(e){
	         
	         switch(num) {
	         case 1 : $('#titleImg').attr('src', e.target.result);
	            break;
	         case 2 : $('#contentImg1').attr('src', e.target.result);
	            break;
	         case 3 : $('#contentImg2').attr('src', e.target.result);
	            break;
	         case 4 : $('#contentImg3').attr('src', e.target.result);
	            break;
	         case 5 : $('#contentImg4').attr('src', e.target.result);
	            break;
	         case 6 : $('#contentImg5').attr('src', e.target.result);
	            break;
	         case 7 : $('#contentImg6').attr('src', e.target.result);
	            break;
	         case 8 : $('#contentImg7').attr('src', e.target.result);
	            break;
	         case 9 : $('#contentImg8').attr('src', e.target.result);
	            break;   
	            
	         }
	      }
	      reader.readAsDataURL(value.files[0]);
	   }
	}
	</script>

<!--    작성자 : 박주완
        작성일 : 2020-03-19
        내용: 카테고리 대분류 선택별 소분류 출력 -->
    <script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
    
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'A') {
            jQuery('#small-category-A').show();
        } else {
            jQuery('#small-category-A').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'B') {
            jQuery('#small-category-B').show();
        } else {
            jQuery('#small-category-B').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'C') {
            jQuery('#small-category-C').show();
        } else {
            jQuery('#small-category-C').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'D') {
            jQuery('#small-category-D').show();
        } else {
            jQuery('#small-category-D').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'E') {
            jQuery('#small-category-E').show();
        } else {
            jQuery('#small-category-E').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'F') {
            jQuery('#small-category-F').show();
        } else {
            jQuery('#small-category-F').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'G') {
            jQuery('#small-category-G').show();
        } else {
            jQuery('#small-category-G').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'H') {
            jQuery('#small-category-H').show();
        } else {
            jQuery('#small-category-H').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'I') {
            jQuery('#small-category-I').show();
        } else {
            jQuery('#small-category-I').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'J') {
            jQuery('#small-category-J').show();
        } else {
            jQuery('#small-category-J').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'K') {
            jQuery('#small-category-K').show();
        } else {
            jQuery('#small-category-K').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'L') {
            jQuery('#small-category-L').show();
        } else {
            jQuery('#small-category-L').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'N') {
            jQuery('#small-category-N').show();
        } else {
            jQuery('#small-category-N').hide();
        }
    });
    jQuery('#big-category').change(function() {
        var state = jQuery('#big-category option:selected').val();
        if(state == 'Z') {
            jQuery('#small-category-Z').show();
        } else {
            jQuery('#small-category-Z').hide();
        }
    });
    </script>

<!--    작성자 : 박주완
        작성일 : 2020-04-03
        내용: 상품등록 유효성 검사 스크립트 -->   
    <script>
    function checks(){
	    //상품명 공백 확인 
	  	if($("#p_Name").val() == ""){
		  alert("상품명을 입력해 주세요."); 
		  $("#p_Name").focus(); 
		  return false; 
		}
 	    //상품 대표 이미지 공백 확인 
	  	if(document.getElementById('titleImg').src == "http://via.placeholder.com/160x200"){
		  alert("상품 대표 이미지를 첨부해 주세요."); 
		  $("#titleImg").focus(); 
		  return false; 
		}
	  	//상품 대표 이미지 공백 확인 
	  	if(document.getElementById('contentImg6').src == "http://via.placeholder.com/160x200"){
		  alert("상품 설명 이미지를 1개 이상 첨부해 주세요."); 
		  $("#contentImg6").focus(); 
		  return false; 
		}
 	    
	  	
	    //등록가격 공백 확인 
	  	if($("#p_Price").val() == ""){
		  alert("등록가격을 입력해 주세요."); 
		  $("#p_Price").focus(); 
		  return false; 
		}
		
	    //등록가격 공백 확인 
	  	if($("#p_Sail_Price").val() == ""){
		  alert("할인가격을 입력해 주세요. (미할인시 0 입력)"); 
		  $("#p_Sail_Price").focus(); 
		  return false; 
		}
	    
	    //최종판매가격 공백 확인 
	  	if($("#p_Last_Price").val() < "0"){
		  alert("등록가격,할인가격을 확인해 주세요."); 
		  $("#p_Last_Price").focus(); 
		  return false; 
		}
	
	    //카테고리 대분류 공백 확인 
	  	if($("#big-category").val() == ""){
		  alert("카테고리 대분류를 선택해 주세요."); 
		  $("#big-category").focus(); 
		  return false; 
		}
	    
	    
	    //카테고리 소분류 공백 확인 	    
	  	if($("#big-category").val() == "A"){
		  	if($('#small-category-A').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "B"){
		  	if($('#small-category-B').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "C"){
		  	if($('#small-category-C').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "D"){
		  	if($('#small-category-D').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "E"){
		  	if($('#small-category-E').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "F"){
		  	if($('#small-category-F').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "G"){
		  	if($('#small-category-G').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "H"){
		  	if($('#small-category-H').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "I"){
		  	if($('#small-category-I').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "J"){
		  	if($('#small-category-J').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "L"){
		  	if($('#small-category-L').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "N"){
		  	if($('#small-category-N').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "M"){
		  	if($('#small-category-M').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "O"){
		  	if($('#small-category-O').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "P"){
		  	if($('#small-category-P').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	if($("#big-category").val() == "Z"){
		  	if($('#small-category-Z').val() == ""){
				  alert("카테고리 소분류를 선택해 주세요."); 
				  $('.p_Scategory').focus(); 
				  return false; 
			}
		}
	  	
	  	

	
	    //상품명 공백 확인 
	  	if($("#p_Name").val() == ""){
		  alert("상품명을 입력해 주세요."); 
		  $("#p_Name").focus(); 
		  return false; 
		}
	
	    //제품요약 공백 확인 
	  	if($("#p_Comment").val() == ""){
		  alert("제품설명을 입력해 주세요."); 
		  $("#p_Comment").focus(); 
		  return false; 
		}
	
	    //옵션1 공백 확인 
	  	if($("#Option_1").val() == ""){
		  alert("옵션1을 등록해 주세요."); 
		  $("#Option_1").focus(); 
		  return false; 
		}
	
	    //옵션2 공백 확인 
	  	if($("#Option_2").val() == ""){
		  alert("옵션2를 등록해 주세요."); 
		  $("#Option_2").focus(); 
		  return false; 
		}
	
	    //재고 공백 확인 
	  	if($("#stock").val() != ""){
		}else{
			  alert("등록재고를 입력해 주세요."); 
			  $("#stock").focus(); 
			  return false; 			
		}
    }
    </script>
    
</body>
 
</html>