<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html lang="en">

<%@ include file="All-Header.jsp"%>
<%@ include file="All-Sidebar.jsp"%>
<%@ include file="All-Cart.jsp"%>


<link rel="stylesheet" type="text/css" href="/brocoli/resources/mainResources/css/trackList.css">
<style>
input {
	display: inline-block;
}
</style>
<body class="animsition">


	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('/brocoli/resources/mainResources/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center" style="color: white;">배송지 선택
		</h2>
	</section>



	<form class="bg0 p-t-75 p-b-85" id="mtlForm">
		<div class="container">
			<div class="row">
			<!------------------------------------쇼핑카트----------------------------------------------- -->
			<div class="wrap-table-shopping-cart" style="margin-bottom: 30px; width : 1380px;">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<!-- <th class="column-0"><input type="checkBox" id="cheAll" onclick="checkAll();"></th> -->
									<th class="column-1">이미지</th>
									<th class="column-2">상품명</th>
									<th class="column-3">옵션1</th>
									<th class="column-4">옵션2</th>
									<th class="column-5">판매금액</th>
									<th class="column-6">수량</th>
									<th class="column-7">총 금액</th>
									<th colspan="2" class="column-7">삭제</th>
								</tr>
							<c:set var="sum" value="0"/>
							<c:forEach var="c" items="${ cList }" >
	
								<tr class="table_row">
								<th class="column-0"><input type="checkBox" name="che" id="che" value="${ c.productList.p_Last_Price * c.ct_Amount }"></th>
									<td class="column-1">
										<div class="how-itemcart1">
											<img src="/brocoli/resources/product-Img/${c.p_File.pf_Img1_ReName}" alt="IMG">
										</div>
									</td>
									<td class="column-2">${c.productList.p_Name}</td>
									<td class="column-3">${c.ct_Option_1 }</td>
									<td class="column-4">${c.ct_Option_2 }</td>
									<td class="column-7">${c.productList.p_Last_Price}</td>
									
									<td class="column-6">${ c.ct_Amount }</td>
									<c:set var="hap" value="${c.productList.p_Last_Price * c.ct_Amount }"/>
									
									<td class="column-7">
										<c:out value="${ hap }"/>
									</td>
										<td style="text-align: center;">
									<c:url var="cDelete" value="cDelete.mn">
										<c:param name="p_NO" value="${ c.productList.p_NO }"/>
										<c:param name="ct_Mno" value="${ c.ct_Mno }"/>
										<c:param name="Mno" value="${loginUser.mNO }"/>
										<c:param name="ct_NO" value="${c.ct_NO}"/>
									</c:url> 
									<button class="btn btn-primary" style="background: #222; width: 70px; border: 1px solid #222;"
							      	onclick="location.href='<c:url value='${ cDelete }'/>';">삭제</button> 
										
									</td>
								</tr>
								</c:forEach>
													
								<tr style="height:100px;">
									<td colspan="6"></td>
									<td >총 금액 : </td>
									<td>
										<input type="text" id="totalCash" name="totalCash">
									</td>
									<td>
									원
									</td>
								</tr>
							</table>
						</div>
			<!------------------------------------쇼핑카트----------------------------------------------- -->
				<div class="cell_order_form article_tit">
					<div class="cell_order_form1">
						<h3 class="title-box font-mss">
							Recipient Info <span class="korSub">수령자 정보</span>
						</h3>
					</div>
					<div class="cell_order_form2">
						<h3 class="title-box font-mss">
							Buyer Info <span class="korSub">구매자 정보</span>
						</h3>
						<input type="hidden" name="save_nm" value="" />
					</div>
				</div>

				<div class="cell_order_form box_address_cell">
					<div class="clear cell_order_form1 border_add_order">
						<!--수령자 정보-->
						<ul class="box_receiver_info">
							<li class="cell_discount_tit">배송지 선택</li>
							<li class="cell_discount_detail">
							<label class="box_choice gibon">
							 <input type="radio" id="address_gibon" name="adress_chk" onclick="buyerInfo('gibon');" checked="true"/> 배송지 입력
							</label> 
							<label class="box_choice fist">
							 <input type="radio" id="address_recently" name="adress_chk" onclick="buyerInfo('recently');" /> 최근 배송지
							</label> 
							<label class="box_choice">
							 <input type="radio" id="address_dongil" name="adress_chk" onclick="buyerInfo('normal');"/> 기본 배송지(구매자 정보)
							</label> 
						</ul>
						<ul class="box_receiver_info">
							<li class="cell_discount_tit">수령인 / 배송지명</li>
							<li class="cell_discount_detail2 order_address_form box_receiver">
								<input type="text" name="rcvr_nm" id="rcvr_nm" value="" /> 
								<span class="plain-btn btn cart_amount" style="cursor: default; display: none" id="baesong_title"></span>
							</li>
						</ul>
						<ul class="box_receiver_info">
							<li class="cell_discount_tit">휴대전화</li>
							<li class="cell_discount_detail order_address_form box_phone">
								<!-- <select name="rmobile1">
									<option value="" selected="selected">선택하세요</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select> 
							<input type="text" name="rmobile1" /> - 
							<input type="text" name="rmobile2" value="" /> -
							 <input type="text" name="rmobile3" value="" /> -->
							 <input type="tel" name="phone1" id="phone1" value="" placeholder="-를 포함하여 입력"  />
							</li>
						</ul>
						<!-- <ul class="box_receiver_info">
							<li class="cell_discount_tit">전화번호</li>
							<li class="cell_discount_detail order_address_form box_tel">
								<select name="rphone1">
									<option value="" selected="selected">선택하세요</option>
									<option value="02">02</option>
									<option value="031">031</option>
									<option value="032">032</option>
									<option value="033">033</option>
									<option value="041">041</option>
									<option value="042">042</option>
									<option value="043">043</option>
									<option value="051">051</option>
									<option value="052">052</option>
									<option value="053">053</option>
									<option value="054">054</option>
									<option value="055">055</option>
									<option value="061">061</option>
									<option value="062">062</option>
									<option value="063">063</option>
									<option value="064">064</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select>  --><!--<input type="text"  name="rphone1" /> - <input
								type="text" name="rphone2" value="" /> - <input type="text"
								name="rphone3" value="" />
								<p>
									<input type="checkbox" onClick="SetRecipientPhoneNumber(this);"
										id="r_PhoneNumberCheckBox" name="rphonecheckbox" /> 없음
								</p>
							</li>
						</ul> -->
						<ul class="box_receiver_info">
							<li class="cell_discount_tit">
							배송지 주소
							</li>
							
							<li class="cell_discount_detail2 order_address_form box_address">
								<input type="text" class="zipcode" name="post" id="post" onChange="Order.checkAddDlvFee();" size="7" value=""  readonly />&nbsp;&nbsp;
								<input type="hidden" value="${post }"  id="post2"/>
								<a class="plain-btn btn btn-zipcode" onClick="postcodify_search();">우편번호 찾기</a><br /> 
									<input type="text" class="address" name="address1" id="address1" value=""  readonly /> 
									<input type="hidden" id="add1" value="${add1 }" />
									
									<input type="text" class="address detail" name="address2" id="address2" value=""  /> 
									<input type="hidden" id="add2" value="${add2 }" />
									<span id="amado" name="amado" style="color:#999;display:none">
								<label style="line-height: 29px;"><p>
										<!-- <input type="checkbox" name="delivery_default" /> 
										<span class="font_basic">기본배송지로 등록</span> -->
									</p></label>
							</li>
						</ul>
						<ul class="box_receiver_info">
							<li class="cell_discount_tit">배송 메모<br />

							</li>
							<li class="cell_discount_detail box_memo">
							<textarea name="dlv_msg" style="resize: none;"></textarea>
								<p>※ 택배기사님께 전할 말씀을 남겨주세요.</p></li>
						</ul>
						<!--수령자 정보-->
					</div>
					<div class="cell_order_form2 box_buyer_cell">

						<ul class="box_buyer_info">	
							<li class="order_address_form box_name">
							<input type="text" placeholder="성명" id="mName" name="mName" value="${loginUser.mName }" required ></li>
						</ul>
						<ul class="box_buyer_info">
							<li class="order_address_form box_email">
								<!--이메일--> 
								<input type="email" name="eMail" id="eMail"  class="id" style="width: 150px;" placeholder="email" value="${loginUser.email }" required/>
							</li>
						</ul>
						<ul class="box_buyer_info">
							<li class="order_address_form box_phone">
								<!--휴대전화--> 
								<input type="tel" name="phone" id="phone" value="${loginUser.phone }" placeholder="연락처" required  />
							</li>
						</ul>
						<ul class="box_buyer_info">
							<li class="order_address_form box_tel">
							<!-- <input type="" name="ophone1" value=""  /> -->
								<div class="box_check">
									<!-- <input type="checkbox" onClick="SetBuyerPhoneNumber(this);"
										name="ophonecheckbox" /> 없음 -->
								</div></li>
						</ul>

						<!--//구매자 정보-->
					</div>

				</div>





			</div>

			<input type="submit" class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5"
				style="background: #666666; color: white; width: 200px; float: right;"
				value="결제하기" onclick="return validate2();"> 
				<input type="reset" class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5"
				style="background: #666666; color: white; width: 200px; float: right;"
				value="취소">






		</div>

	</form>
	



	<%@ include file="All-Footer.jsp"%>

	<script>
		function buyerInfo(day){
			var post;
			var add1;
			var add2;
			var phone;
			var mName;
			 /* $("#post").value = ${post};
			$("#address1").value= ${add1};
			$("#address2").value = ${add2};  */
			if(day == 'normal'){
				 post = $("#post2").val();
				 add1 = $("#add1").val();
				 add2 = $("#add2").val();
				 phone = $("#phone").val();
				 mName = $("#mName").val();
				
				$("#post").val(post);
				$("#address1").val(add1);
				$("#address2").val(add2);
				$("#phone1").val(phone);
				$("#rcvr_nm").val(mName);
			
			}
			if(day == 'gibon'){
				$("#mtlForm")[0].reset();
			}
			if(day == 'recently'){

				$.ajax({
			 		url:"recently.do",
			 		type:"post",
			 		dataType:"json",
			 		success:function(data){
			 			console.log(data.or_NO);
			 			var str = data[0].or_Address.split(",");
			 			post = str[0];
			 			add1 = str[1];
			 			add2 = str[2];
			 			phone = data[0].or_Phone;
			 			mName = data[0].or_Recip_Name;
			 			
			 			$("#post").val(post);
						$("#address1").val(add1);
						$("#address2").val(add2);
						$("#phone1").val(phone);
						$("#rcvr_nm").val(mName);
			 		},error:function(jqxhr, textStatus, errorThrown){
						console.log("ajax 처리실패");
						
						// 에러로그
						console.log(jqxhr);
						console.log(textStatus);
						console.log(errorThrown);
					}
			 	});
			}
		}
		
		function validate2(){
			var rgEx = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
		      var phone = document.getElementById("phone1");
		      var rcvr_nm = $("#rcvr_nm").val();
		      var post = $("post").val();
		      
		    
		      
		     
		      
		      if(rcvr_nm == null || rcvr_nm == ""){
		    	  alert("수령인 / 배송지명을 입력해주세요.");
		    	  return false;
		      }else if(phone.val() == null || phone.val() == ""){
		    	  alert("휴대전화를 입력해주세요.");
		    	  return false;
		      }else if(rgEx.test(phone.value) != true){
		      		alert("휴대전화를 알맞게 입력해주세요.");
		      		return false;
		      }else if(post == null || post == ""){
		    	  alert("배송지를 입력해주세요.");
		    	  return false;
		      }else{
		    	  return true;
		      }
		      
		     
		      
		}
	</script>
	<!--===============================================================================================-->
	<script
		src="/brocoli/resources/mainResources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script	
		src="/brocoli/resources/mainResources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
<!-- 	<script src="/brocoli/resources/mainResources/vendor/bootstrap/js/popper.js"></script>
	<script src="/brocoli/resources/mainResources/vendor/bootstrap/js/bootstrap.min.js"></script> -->
	<!--===============================================================================================-->
<!-- 	<script src="/brocoli/resources/mainResources/vendor/select2/select2.min.js"></script>
 -->	<script>
		$(".js-select2").each(function() {
			$(this).select2({
				minimumResultsForSearch : 20,
				dropdownParent : $(this).next('.dropDownSelect2')
			});
		})
	</script>
	<!--===============================================================================================-->
<!-- 	<script src="/brocoli/resources/mainResources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
 -->	<!--===============================================================================================-->
	<script src="/brocoli/resources/mainResources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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
<!-- 우편 주소 API -->
 <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    
    function postcodify_search() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('post').value = data.zonecode;
                document.getElementById("address1").value = roadAddr;
                document.getElementById("address1").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                	document.getElementById("address2").value = extraRoadAddr;
                } else {
                	document.getElementById("address2").value = '';
                }

                var guideTextBox = document.getElementById("amado");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    if(document.getElementById("address1").value.length > 0){
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    }else{
                    	document.getElementById("address1").value = expRoadAddr;
                    }
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    if(document.getElementById("address1").value.length > 0){
                    	 guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                        }else{
                        	document.getElementById("address1").value = expJibunAddr;
                        }
                   
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    };
</script>
</body>
</html>