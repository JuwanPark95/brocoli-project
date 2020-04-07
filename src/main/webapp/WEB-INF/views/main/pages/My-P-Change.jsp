<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
<title>비밀번호 변경</title>

	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>


</head>
<body>
	<!-- 수정자 : 박주완
		수정일 : 2020-03-30
		내용 : CSS수정 -->
	 <form action="p_change.mn" method="post">
	  <div id="pwdchange" class="container" style="text-align: center; width: 100%; height: 80%; padding-top: 5%;">

		<div id="logo" class="flex-w flex-tr" style="margin-bottom: 55px;">
			<p style="font-size: 55px; width: 100%; margin: 0 auto; color: #222; height: 60px;"><strong>비밀번호 변경</strong></p>
		</div>
			<input type="password" name="password1"
				class="form-control form-control "
				style="border-radius: 5px; width: 320px; margin: 0 auto; margin-bottom: 10px; height: 50px;"
				placeholder="변경할 비밀번호 " >
			<input type="password" name="password2"
				class="form-control form-control"
				style="border-radius: 5px; width: 320px; margin: 0 auto; height: 50px;"
				placeholder="비밀번호  확인" >	
		</div>
		<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
		<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>

	
		<div>
			<button class="btn btn-primary btn-lg btn-block" 
				style="background: #222; width: 320px; border: 1px solid #222; margin: 0 auto;">
				<a href="<c:url value='index.jsp'/>" style="color: #fff;">변경하기</button>
			<br>
		</div>

	
	<script type="text/javascript"> 
	
	$(function(){ 
		$("#alert-success").hide(); 
		$("#alert-danger").hide();
		$("input").keyup(function(){ 
			var pwd1=$("#pwd1").val(); 
			var pwd2=$("#pwd2").val(); 
			
			if(pwd1 != "" || pwd2 != ""){ 
				if(pwd1 == pwd2){ $("#alert-success").show(); 
				$("#alert-danger").hide(); 
				$("#submit").removeAttr("disabled"); 
				
				}else{ 
					$("#alert-success").hide(); 
					$("#alert-danger").show(); 
					$("#submit").attr("disabled", "disabled"); 
					} 
				} 
			}); 
		}); 
	</script>

	</form>
	<%@ include file="All-Footer.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %>

				
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
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  
<title>비밀번호 변경</title>

	<%@ include file="All-Header.jsp" %>
	<%@ include file="All-Sidebar.jsp" %>


</head>
<body>
	<!-- 수정자 : 박주완
		수정일 : 2020-03-30
		내용 : CSS수정 -->
	 <form action="p_change.mn" method="post">
	  <div id="pwdchange" class="container" style="text-align: center; width: 100%; height: 80%; padding-top: 5%;">

		<div id="logo" class="flex-w flex-tr" style="margin-bottom: 55px;">
			<p style="font-size: 55px; width: 100%; margin: 0 auto; color: #222; height: 60px;"><strong>비밀번호 변경</strong></p>
		</div>
		<div style="margin-bottom: 25px;">
			<input type="password" class="form-control form-control"
				style="border-radius: 5px; width: 320px; margin: 0 auto; margin-bottom: 10px; height: 50px;"
				placeholder="비밀번호 " name="pwd">
			<input type="password"
				class="form-control form-control"
				style="border-radius: 5px; width: 320px; margin: 0 auto; margin-bottom: 10px; height: 50px;"
				placeholder="변경할 비밀번호 " name="pwd1">
			<input type="password"
				class="form-control form-control"
				style="border-radius: 5px; width: 320px; margin: 0 auto; height: 50px;"
				placeholder="비밀번호  확인" name="pwd2">	
		</div>		
		<div>
			<button class="btn btn-primary btn-lg btn-block" 
				style="background: #222; width: 320px; border: 1px solid #222; margin: 0 auto;">
				<a href="<c:url value='index.jsp'/>" style="color: #fff;">변경하기</button>
			<br>
		</div>

	</div>
	</form>
	<%@ include file="All-Footer.jsp" %>
	<%@ include file="All-BacktoTop.jsp" %>

				
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
>>>>>>> branch 'master' of https://github.com/JuwanPark95/Brocoli_Project.git
</html>