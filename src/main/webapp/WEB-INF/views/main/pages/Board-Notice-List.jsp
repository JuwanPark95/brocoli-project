<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<%@ include file="All-Cart.jsp"%>
<%@ include file="All-Header.jsp"%>
<%@ include file="All-Sidebar.jsp"%>
<%@ include file="All-BacktoTop.jsp"%>


<style>
#all {
	/* border:1px solid red; */
	margin: auto;
	width: 70%;
	height: 110%;
	display: grid;
}

#all th {
	text-align: center;
}
</style>

</head>
<body>
	<div id="all">
		<br>
		<h1
			style="color: #22; padding: 4%; text-align: center; font-weight: bold;">공지사항</h1>
		<table class="table table-hover" align="center" id="listArea" width="700">
			<thead>
				<tr>
					<th>글번호</th>
					<th style="width: 50%">제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
					<th>첨부파일</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="b" items="${ list }">
					<tr>
						<td align="center">${ b.n_NO }</td>

						<td align="center"><c:if test="${ !empty loginUser }">
								<c:url var="bdetail" value="bdetail.mn">
									<c:param name="bId" value="${ b.n_Writer }" />
									<c:param name="currentPage" value="${ pi.currentPage }" />
								</c:url>
								<a href="${ bdetail }">${ b.n_Title }</a>
							</c:if> <c:if test="${ empty loginUser }"> ${b.n_Title }
        	</c:if></td>

						<td align="center">${ b.n_Writer }</td>
						<td align="center">${ b.n_Date }</td>
						<td align="center">${ b.n_Count }</td>
						<td align="center"><c:if test="${ !empty b.n_Img }">
        		o
        	</c:if> <c:if test="${ empty b.n_Img_ReName }">
        		&nbsp;
        	</c:if></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div style="margin-left: 40%; display: flex;">
			<ul class="pagination justify-content-center">

				<c:if test="${ pi.currentPage eq 1 }">
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);" style="color: #222"></a></li>
				</c:if>

				<c:if test="${ pi.currentPage ne 1}">
					<c:url var="before" value="blist.mn">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
					</c:url>
					<a href="${ before }"></a>
				</c:if>

				<li class="page-item"><a class="page-link"
					href="javascript:void(0);" style="color: #222"><</a></li>
				<li class="page-item"><a class="page-link"
					href="javascript:void(0);" style="color: #222">1</a></li>
				<li class="page-item"><a class="page-link"
					href="javascript:void(0);" style="color: #222">2</a></li>
				<li class="page-item"><a class="page-link"
					href="javascript:void(0);" style="color: #222">></a></li>
			</ul>
			<div>
				<button class="btn btn-primary"
					style="background: #222; width: 100px; border: 1px solid #222; margin-left: 370px;"
					onclick="location.herf='bInsertView.mn';">작 성</button>
			</div>
		</div>
		<div id="searchArea" align="center">
			<form action="${ contextPath }/search.mn"
				style="display: inline-flex;">

				<select id="searchCondition" name="condition">
					<option>--------선택--------</option>
					<option value="writer">작성자</option>
					<option value="title">제목</option>
					<option value="content">내용</option>
				</select> <br> <input type="search" name="search"
					class="form-control form-control" style="width: 300px;">
				<button class="btn btn-primary"
					style="background: #222; width: 100px; border: 1px solid #222;">검색</button>

			</form>
		</div>
	</div>
	<%@ include file="All-Footer.jsp"%>
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
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
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
	<script
		src="/brocoli/resources/mainResources/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/sweetalert/sweetalert.min.js"></script>
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
	<script
		src="/brocoli/resources/mainResources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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