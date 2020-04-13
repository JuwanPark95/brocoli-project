<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="/brocoli/resources/adminResources/vendor/bootstrap/css/bootstrap.min.css">
<link
	href="/brocoli/resources/adminResources/vendor/fonts/circular-std/style.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="/brocoli/resources/adminResources/libs/css/style.css">
<link rel="stylesheet"
	href="/brocoli/resources/adminResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
<title>Concept - Bootstrap 4 Admin Dashboard Template</title>
</head>

<body>
	<%@ include file="header.jsp"%>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">

		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="dashboard-ecommerce">
				<div class="container-fluid dashboard-content ">
					<!-- ============================================================== -->
					<!-- pageheader  -->
					<!-- ============================================================== -->
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="page-header">
								<h2 class="pageheader-title">오너 콘택트</h2>
								<div class="page-breadcrumb">
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item">가맹브랜드 관리</a></li>
											<li class="breadcrumb-item">오너콘택트</a></li>
											<li class="breadcrumb-item">상세보기</a></li>
										</ol>
									</nav>
								</div>
							</div>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- end pageheader  -->
					<!-- ============================================================== -->
					<div class="row">
						<div
							class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="card">
								<div class="card-header p-4">
									<div class="card-header" style="border-bottom: none; padding-top: 22px; padding-bottom: 22px; background-color: none; font-family: 'Do Hyeon', sans-serif;">
										<h2 class="card-title" style="margin-bottom: 0px; font-size: 17px">
											<span style="font-size:85%;">작성자</span>
											<span style="padding-left:6%; font-size:85%;">${c.con_Writer}</span>
											<br><hr>
											<div style="float:left; width:50%">
											<span style="font-size:85%;">제  목</span>
											<span style="padding-left:15%; font-size:85%;">${c.con_Title}</span> 
											</div> 
											<div style="float:left;width:50%">
											<span style="padding-left:160px; font-size:85%;">작성일</span>
											<span style="padding-left:5%; font-size:85%;">${c.con_Date}</span>
											</div>
											<br><hr>
											<span style="font-size:85%;">첨부파일</span>
											<span style="padding-left:5%; font-size:85%;">
												<c:if test="${ !empty c.con_Img }">
													<a href="${ contextPath }/resources/ownerContact/${ c.con_Img_ReName }"
														download="${ c.con_Img }">${ c.con_Img }</a>
												</c:if>
											</span>
											 
										</h2>
									</div>

								</div>

								<div class="card-body">
									<div class="row mb-4">
										<div class="col-sm-6" style="padding-left:6%;">
											${c.con_Content}
										</div>
									</div>

									<div class="card-footer float-right" style="background-color: transparent !important; border-top: white;">
										<c:url var="ownerContactUpdate" value="ownerContactUpdate.ad">
											<c:param name="ocNO" value="${c.con_NO}"/>
										</c:url>
										<a href="${ownerContactUpdate}">
											<button  class="btn btn-dark">수정</button>
										</a>
									</div>
								</div>
								<div class="card-footer bg-white">
									<!--댓글-->
									<div class="container" style="padding: 0">
										<div>
											<div class="card"
												style="font-family: 'Do Hyeon', sans-serif;">
												<div class="card-header"
													style="background-color: rgb(240, 248, 255);">
													<h6 style="margin-bottom: 0px;">댓글</h6>
												</div>
												<div class="card-body" style="padding-bottom: 0px;">
													<form action="" method="post">
														<div>
															<textarea id="textbox_comment_input" name="replyContent"
																class="form-control" rows="3" placeholder="Enter ..."></textarea>
															<button type="submit" id="btn_comment_save"
																class="btn btn-dark"
																style="margin-top: 10px; float: right;" onclick="">작성</button>
														</div>

													</form>
												</div>



												<!-- ============================================================== -->
												<!-- 댓글 보여주기 부분 -->
												<!-- ============================================================== -->
												<div id="textbox_comment_list" style="width: 100%;">
													<table id="replySelectTable" style="width: 108%">
														<tr id="con-tr">
															<td style="width: 720px;"><div name="conCno"
																	style="display: none;">
																	<input type="hidden" name="ntype" value="">
																</div>
																<div id="conModify" name="conModify"
																	style="display: none;">
																	<textarea id="conUpdate" name="conUpdate" value=""></textarea>
																	<button name="conUpdateButton" class="btn btn-inverse"
																		type="button">저장</button>
																</div>
																<div id="conUpdate" name="con"></div></td>
															<hr style="border: solid 0.4px lightgray;">
															&nbsp
															<td
																style="float: right; margin-left: 30px; margin-right: 50px;"></td>
															<td style="float: right;"></td>
															<td style="float: right;">

																<form method="post">
																	<button type="button" name="modifyCon"
																		class="btn btn-inverse" style="font-size: 0.8em;">
																		<i class="fas fa-pencil-alt"></i>
																	</button>

																</form>

																<form action="" method="post">
																	<button class="btn btn-inverse"
																		style="font-size: 0.8em; margin-top: 5px;"
																		onclick="location.href ">
																		<i class="fas fa-trash"></i>
																	</button>
																</form>
															</td>
														</tr>
													</table>
													<br>
												</div>
												<!-- ============================================================== -->
												<!-- /댓글 보여주기 부분 -->
												<!-- ============================================================== -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- end wrapper  -->
			<!-- ============================================================== -->
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- end main wrapper  -->
	<!-- ============================================================== -->


	<!-- ============================================================== -->
	<!-- 댓글 script  -->
	<!-- ============================================================== -->
	<script>
		$(document)
				.ready(
						function() {
							$('button[name=modifyCon]')
									.on(
											'click',
											function() {
												console.log(this);
												/* append 사용 했을 때 
												var conModify = $('div[name=conModify]');
												conModify.append('<textarea></textarea>');
												conModify.append('<button type="button">저장</button>')
												 */

												//원래 댓글 내용 숨기기
												var con = $(this)
														.parents()
														.children()
														.children(
																'div[name=con]');
												con.hide();
												//alert(con.text());

												//textarea 의 div 가져오기
												//var conModify = $('div[name=conModify]');

												//button 선택시 textarea div 가져오기
												var bOption = $(this).parent()
														.parent().parent()
														.children().children(
																'#conModify');
												var bOptionTextarea = $(this)
														.parent().parent()
														.parent().children()
														.children('#conModify')
														.children('#conUpdate');

												//	alert(bOption);

												//댓글 수정 확인버튼 가져오기
												var conUpdateButton = $(this)
														.parent()
														.parent()
														.parent()
														.children()
														.children()
														.children(
																'button[name=conUpdateButton]');
												//$('button[name=conUpdateButton]');

												// 댓글 textarea 가 false 이면 textarea 창 보여주기 , 각 버튼의 textarea만 띄우기 위해 사용 
												if (bOption.is("display") == false) {
													console.log(bOption);
													bOptionTextarea.val(con
															.text());
													bOption.show();
													bOptionTextarea.show();
													conUpdateButton.show();
												}
											});
						});
	</script>

	<script>
		$(document).ready(function() {
			$('button[name=conUpdateButton]').on('click', function() {
				//var conUpdate = $('#conUpdate');
				var jsonData = new Object();

				//alert('댓글 ajax test');

				//jsonData.conUpdate = $('#conUpdate').val();
				jsonData.conUpdate = $(this).prev().val();
				jsonData.conCno = $(this).parent().prev().children().val();
				jsonData.bno = $('input[name=bno]').val();

				//textarea 숨기기  + '저장'버튼 숨기기
				var conUp = $(this).prev();
				var conUpdateButton = $(this);

				// 바뀐 댓글 내용 띄우기
				var con = $(this).parent().next();

				// db에서 수정된 댓글 가져오기

				$.ajax({
					url : "",
					type : "post",
					data : jsonData,
					success : function(data) {
						//textarea숨기기
						conUp.hide();
						//저장 버튼 숨기기
						conUpdateButton.hide();

						//URIEncoder로 변환된 문자열을 decodeURIComponent로 변환
						var update = decodeURIComponent(data.ccon);
						console.log(update);

						//DB에서 가져온 댓글 기존댓글에 덮어씌우기
						con.text(update);

						//기존댓글 보여주기
						con.show();

					},
					error : function() {
						alert('실패');
						console.log("게시판 댓글 수정 실패!")
					}
				});
			});
		});
	</script>
	<!-- ============================================================== -->
	<!-- /댓글 script  -->
	<!-- ============================================================== -->
	<!-- Optional JavaScript -->
	<!-- slimscroll js -->
	<script
		src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
	<!-- main js -->
	<script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
</body>

</html>