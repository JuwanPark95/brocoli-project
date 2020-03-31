<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/cart.jsp" %>
<%@ include file="../common/sidebar.jsp" %>
<link rel="stylesheet" type="text/css" href="/brocoli/main/css/trackList.css">
<style>
input{
display: inline-block;}
</style>
<body class="animsition">
	
   
	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('/brocoli/main/images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center" style="color:white;">
			배송지 선택
		</h2>
	</section>
	
		
		

	<form class="bg0 p-t-75 p-b-85">
		<div class="container" >
		<div class="row">
			<div class="cell_order_form article_tit">
					<div class="cell_order_form1">
						<h3 class="title-box font-mss">Recipient Info <span class="korSub">수령자 정보</span></h3>
					</div>
					<div class="cell_order_form2">
						<h3 class="title-box font-mss">Buyer Info <span class="korSub">구매자 정보</span></h3>
						<input type="hidden" name="save_nm" value=""/>
					</div>
				</div>
			
		<div class="cell_order_form box_address_cell">
					<div class="clear cell_order_form1 border_add_order">
						<!--수령자 정보-->
						<ul class="box_receiver_info">
							<li class="cell_discount_tit">배송지 선택</li>
							<li class="cell_discount_detail">
																<label class="box_choice fist">
									<input type="radio" id="address_recently" name="adress_chk" onClick="Order.sameOrder(this);" checked="true" /> 최근 배송지
								</label>
																<label class="box_choice">
									<input type="radio" id="address_dongil" name="adress_chk" onClick="Order.sameOrder(this);" /> 기본 배송지(구매자 정보)
								</label>
								<label class="box_choice">
									<input type="radio" id="address_list" name="adress_chk" onClick="ChoiceDeliveryAddress(document.f1.delivery_list);"/> 주소록 선택
								</label>

								<select name="delivery_list" onChange="ChoiceDeliveryAddress(this);" disabled>
									<option value="">선택하세요</option>
																			<option value="">홍길동님 배송지</option>
																	</select>
								<a class="box_choice" href="/app/mypage/delivery" target="_blank">[주소록 편집↗]</a>
							</li>
						</ul>
						<ul class="box_receiver_info">
							<li class="cell_discount_tit">수령인 / 배송지명</li>
							<li class="cell_discount_detail2 order_address_form box_receiver">
								
								<input type="text" name="rcvr_nm" value=""/>
								<span class="plain-btn btn cart_amount" style="cursor: default; display:none" id="baesong_title"></span>
							</li>
						</ul>
						<ul class="box_receiver_info">
							<li class="cell_discount_tit">휴대전화</li>
							<li class="cell_discount_detail order_address_form box_phone">
								<select name="rmobile1">
									<option value="" selected="selected">선택하세요</option>
									<option value="010">010</option>
									<option value="011" >011</option>
									<option value="016" >016</option>
									<option value="017" >017</option>
									<option value="018" >018</option>
									<option value="019" >019</option>
								</select>
								<!--<input type="text" name="rmobile1" />-->
								- <input type="text" name="rmobile2" value="" />
								- <input type="text" name="rmobile3" value="" />
							</li>
						</ul>
						<ul class="box_receiver_info">
							<li class="cell_discount_tit">전화번호</li>
							<li class="cell_discount_detail order_address_form box_tel">
								<select name="rphone1">
									<option value="" selected="selected">선택하세요</option>
									<option value="02" >02</option>
									<option value="031" >031</option>
									<option value="032" >032</option>
									<option value="033" >033</option>
									<option value="041" >041</option>
									<option value="042" >042</option>
									<option value="043" >043</option>
									<option value="051" >051</option>
									<option value="052" >052</option>
									<option value="053" >053</option>
									<option value="054" >054</option>
									<option value="055" >055</option>
									<option value="061" >061</option>
									<option value="062" >062</option>
									<option value="063" >063</option>
									<option value="064" >064</option>
									<option value="010" >010</option>
									<option value="011" >011</option>
									<option value="016" >016</option>
									<option value="017" >017</option>
									<option value="018" >018</option>
									<option value="019" >019</option>
								</select>
								<!--<input type="text"  name="rphone1" />-->
								- <input type="text"  name="rphone2" value=""/>
								- <input type="text"  name="rphone3" value=""/>
								<p><input type="checkbox" onClick="SetRecipientPhoneNumber(this);" id="r_PhoneNumberCheckBox" name="rphonecheckbox" /> 없음</p>
							</li>
						</ul>
						<ul class="box_receiver_info">
							<li class="cell_discount_tit">
								배송지 주소
								
							</li>
							<li class="cell_discount_detail2 order_address_form box_address">
								<input type="text" class="zipcode" name="rzip_cd1" onChange="Order.checkAddDlvFee();" size="7" value="" readonly />&nbsp;&nbsp;<a class="plain-btn btn btn-zipcode" onClick="popup_new_zipcode('rzip_cd1','rzip_addr1','rzip_addr2', 504, 688); return false;">우편번호 찾기</a><br />
								<input type="text" class="address" name="rzip_addr1" value="" readonly/>
								<input type="text" class="address detail" name="rzip_addr2" value=""/>
								<label style="line-height:29px;"><p><input type="checkbox" name="delivery_default"/> <span class="font_basic">기본배송지로 등록</span></p></label>							</li>
						</ul>
						<ul class="box_receiver_info">
							<li class="cell_discount_tit">배송 메모<br />
								
							</li>
							<li class="cell_discount_detail box_memo">
								<textarea name="dlv_msg"></textarea>
								<p>※ 택배기사님께 전할 말씀을 남겨주세요.</p>
								
							</li>
						</ul>
						<!--수령자 정보-->
					</div>
					<div class="cell_order_form2 box_buyer_cell">
						
						<ul class="box_buyer_info">
							<li class="order_address_form box_name">
								<input type="text" name="ordr_nm" value="" onblur="$('#virtual_bank_inpnm').val(this.value);" />
							</li>
						</ul>
						<ul class="box_buyer_info">
							<li class="order_address_form box_email">
								<!--이메일-->
								<input type="text" name="email1" value="" class="id" />@
								<input type="text" name="email_etc" value="naver.com" class="pwd" style="display:none;" />
								<select name="email2" onChange="inputDomain('email2','email_etc');">
									<option value="etc" >직접 입력</option>
									<option value="naver.com" selected>naver.com</option>
									<option value="paran.com"  >paran.com</option>
									<option value="hanmail.net"  >hanmail.net</option>
									<option value="hotmail.com" >hotmail.com</option>
									<option value="nate.com" >nate.com</option>
								</select>
								<script type="text/javascript">inputDomain('email2','email_etc', true);</script>
							</li>
						</ul>
						<ul class="box_buyer_info">
							<li class="order_address_form box_phone">
								<!--휴대전화-->
																	<input type="text" name="omobile1" value="" size="3" maxlength="3" /> -
									<input type="text" name="omobile2" value="" size="3" maxlength="4" /> -
									<input type="text" name="omobile3" value="" size="3" maxlength="4" />
															</li>
						</ul>
						<ul class="box_buyer_info">
							<li class="order_address_form box_tel">
																										<input type="text" name="ophone1" value="" size="3" maxlength="3" /> -
									<input type="text" name="ophone2" value="" size="3" maxlength="4" /> -
									<input type="text" name="ophone3" value="" size="3" maxlength="4" />
																				<div class="box_check"><input type="checkbox" onClick="SetBuyerPhoneNumber(this);" name="ophonecheckbox"/> 없음</div>
																																		</li>
						</ul>
						
						<!--//구매자 정보-->
					</div>
					
				</div>
				
				
								
							
							
			</div>
			
						<input type="submit" class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" style="background: #666666;
   						 color: white; width: 200px; float: right;" value="결제하기"	>
						<input type="reset" class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5" style="background: #666666;
   						 color: white; width: 200px; float: right;" value="취소"	>
							
						
						
							
						
    					
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