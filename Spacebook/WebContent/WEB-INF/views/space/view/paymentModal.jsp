<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- modal start-->
	<div class="main-register-wrap modal2" style="align-items: center;">
	<!-- price-item-->
		<div class="main-overlay"></div>
		<div class="main-register-holder">
			<div class="price-head op2">
				<h3 id="pay_category">${spaceDetail.space_category}</h3> <h2 id="pay_spaceName">${spaceDetail.space_name}</h2>
			</div>
			<div class="price-content fl-wrap">
				<div class="price-num fl-wrap">
					<span class="curen">&#8361;</span> <span class="price-num-item" id="pay_sum">${spaceDetail.space_sum}</span>
				</div>
				<div class="price-desc fl-wrap">
					<ul>
						<li><span>예약자 : </span><input type="text" id="pay_name" value="" readonly="readonly" style="padding: 5px; text-align: center; margin: 0px; border: 0px; background-color: #fbfbfb;"></li>
						<li><span>이메일 : </span><input type="text" id="pay_email" value="" readonly="readonly" style="padding: 5px; text-align: center; margin: 0px; border: 0px; background-color: #fff;"></li>
						<li><span>연락처 : </span><input type="text" id="pay_phone" value="" readonly="readonly" style="padding: 5px; text-align: center; margin: 0px; border: 0px; background-color: #fbfbfb;"></li>
						<li><span>예약 날짜 : </span><input type="text" id="pay_startDate" value="" size="8" readonly="readonly" style="padding: 5px; text-align: center; margin: 0px; border: 0px; background-color: #fff;"> ~ <input type="text" id="pay_endDate" size="8" value="" style="padding: 5px; text-align: center; margin: 0px; border: 0px; background-color: #fff;"></li>
						<li><span>인원수 : </span><input type="text" id="pay_quantity" value="" readonly="readonly" style="padding: 5px; text-align: center; margin: 0px; border: 0px; background-color: #fbfbfb;"></li>
						<li><span>남김말 :</span><input type="text" id="pay_message" value="" readonly="readonly" style="padding: 5px; text-align: center; margin: 0px; border: 0px; background-color: #fff;"></li>
						<li style="padding-left: 100px; padding-right: 100px">
                            <select data-placeholder="All Categories" class="chosen-select" name="pay_method" id="pay_method">
                                <option value="card">카드</option>
                                <option value="trans">계좌이체</option>
                                <option value="phone">휴대폰</option>
                            </select>
						</li>
					</ul>
					<button class="btn color-bg flat-btn" onclick="payment()">결제</button>
					<button class="btn flat-btn" style="background-color: gray;" onclick="cancel()">취소</button>
				</div>
			</div>
		</div>
	<!-- price-item end-->
	</div>
	<!-- modal end -->