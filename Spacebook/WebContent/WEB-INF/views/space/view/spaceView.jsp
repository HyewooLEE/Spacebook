<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<!--  carousel-->
	<section class="parallax-section single-par list-single-section" data-scrollax-parent="true" id="sec1">
           <div class="bg par-elem "  data-bg="${spaceDetail.space_img1}" data-scrollax="properties: { translateY: '30%' }"></div>
           <div class="overlay"></div>
           <div class="bubble-bg"></div>
           <div class="list-single-header absolute-header fl-wrap">
               <div class="container">
                   <div class="list-single-header-item">
                       <div class="list-single-header-item-opt fl-wrap">
                           <div class="list-single-header-cat fl-wrap">
                               <a href="#">${spaceDetail.space_category}</a>
                           </div>
                       </div>
                       <h2>${spaceDetail.space_name}<br/><span>Hosted By </span><a href="author-single.html">${spaceDetail.memberVO.mem_Name}</a> </h2>
                       <span class="section-separator"></span>
                       <div class="listing-rating card-popup-rainingvis" data-starrating2="${avrageReview}">
                           <span>(${countReview} 리뷰)</span>
                       </div>
                       <div class="list-post-counter single-list-post-counter"><span>${countFavorite}</span><i class="fa fa-heart"></i></div>
                       <div class="clearfix"></div>
                       <div class="row">
                           <div class="col-md-6">
                               <div class="list-single-header-contacts fl-wrap">
                                   <ul>
                                       <li><i class="fa fa-phone"></i><a  href="#"> +82 ${spaceDetail.space_phone} </a></li>
                                       <li><i class="fa fa-map-marker"></i><a href="#"> ${spaceDetail.space_addr1} ${spaceDetail.space_addr2} </a></li>
                                       <li><i class="fa fa-envelope-o"></i><a href="#"> ${spaceDetail.memberVO.mem_Id} </a></li>
                                   </ul>
                               </div>
                           </div>
                           <div class="col-md-6">
                               <div class="fl-wrap list-single-header-column">
                                   <div class="share-holder hid-share">
                                       <div class="showshare"><span>공유 </span><i class="fa fa-share"></i></div>
                                       <div class="share-container isShare"></div>
                                   </div>
                                   <a class="custom-scroll-link" href="#sec5"><i class="fa fa-hand-o-right"></i>리뷰 작성</a>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </section>
	<!--  carousel  end-->
	<div class="scroll-nav-wrapper fl-wrap">
		<div class="container">
			<nav class="scroll-nav scroll-init">
				<ul>
					<li><a class="act-scrlink" href="#sec1">사진</a></li>
					<li><a href="#sec2">상세정보</a></li>
					<li><a href="#sec3">주의사항</a></li>
					<li><a href="#sec4">리뷰</a></li>
				</ul>
			</nav>
			<a href="javascript:;" onclick="favorite(${spaceDetail.space_no}, ${login.mem_No})" class="save-btn">
				<%-- <c:if test="${ }"> --%>
				<i class="fa fa-heart-o" id="heart"></i>
				<%-- </c:if> --%>
				 찜하기 </a>
		</div>
	</div>
	<!--  section   -->
	<section class="gray-section no-top-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<!-- list-single-main-wrapper -->
					<div class="list-single-main-wrapper fl-wrap" id="sec2">
						<div class="breadcrumbs gradient-bg  fl-wrap">
							<a href="#">홈</a><a href="#">리스트</a><span>${spaceDetail.space_name}</span>
						</div>
						<!-- list-single-header -->
						<div class="list-single-main-media fl-wrap">
                               <div class="single-slider-wrapper fl-wrap">
                                   <div class="single-slider fl-wrap"  >
                                   <c:if test="${spaceDetail.space_img2!=null}">
                                   	<div class="slick-slide-item"><img src="${spaceDetail.space_img2}" style="width:806px;height:533px;"></div>
                                   </c:if>
                                   <c:if test="${spaceDetail.space_img3!=null}">
                                   	<div class="slick-slide-item"><img src="${spaceDetail.space_img3}" style="width:806px;height:533px;"></div>
                                   </c:if>
                                   <c:if test="${spaceDetail.space_img4!=null}">
                                   	<div class="slick-slide-item"><img src="${spaceDetail.space_img4}" style="width:806px;height:533px;"></div>
                                   </c:if>
                                   <c:if test="${spaceDetail.space_img5!=null}">
                                   	<div class="slick-slide-item"><img src="${spaceDetail.space_img5}" style="width:806px;height:533px;"></div>
                                   </c:if>
                                   <c:if test="${spaceDetail.space_img6!=null}">
                                   	<div class="slick-slide-item"><img src="${spaceDetail.space_img6}" style="width:806px;height:533px;"></div>
                                   </c:if>
                                   <c:if test="${spaceDetail.space_img7!=null}">
                                   	<div class="slick-slide-item"><img src="${spaceDetail.space_img7}" style="width:806px;height:533px;"></div>
                                   </c:if>
                                   </div>
                                   <div class="swiper-button-prev sw-btn"><i class="fa fa-long-arrow-left" style="margin-top: 16px"></i></div>
                                   <div class="swiper-button-next sw-btn"><i class="fa fa-long-arrow-right" style="margin-top: 16px"></i></div>
                               </div>
                           </div>
						<div class="list-single-main-item fl-wrap">
							<div class="list-single-main-item-title fl-wrap">
								<h3>상세 정보</h3>
							</div>
							<p>${spaceDetail.space_intro2}</p>
							<a href="javascript:window.open('http://${spaceDetail.space_site}')" class="btn transparent-btn float-btn">홈페이지
							<i class="fa fa-angle-right"></i>
							</a> <span class="fw-separator"></span>
							<div class="list-single-main-item-title fl-wrap">
								<h3>편의시설</h3>
							</div>
							<div class="listing-features fl-wrap">
								<ul>
									<c:forEach var="fac_list" items="${fac_list}">
										<li><img src="${pageContext.request.contextPath}/resources/bootstrap/images/icon/${fac_list.fac_icon}.png"> ${fac_list.fac_name} </li>
									</c:forEach>
								</ul>
							</div>
							<span class="fw-separator"></span>
							<div class="list-single-main-item-title fl-wrap">
								<h3>태그</h3>
							</div>
							<div class="list-single-tags tags-stylwrap">
								<c:forEach var="space_tag" items="${space_tag}">
									<a href="#">${space_tag}</a>
								</c:forEach>
								<!-- <a href="#"># 연습실</a> <a href="#"># 댄스</a> <a href="#"># 신축건물</a>
								<a href="#"># 청결</a> <a href="#"># 무료 Wifi</a> -->
							</div>
						</div>
						<div class="accordion" id="sec3">
							<a class="toggle act-accordion" href="#"> 주의 사항 <i class="fa fa-angle-down"></i></a>
							<div class="accordion-inner visible">
								<p>${spaceDetail.space_cau}</p>
							</div>
						</div>
						<!-- list-single-main-item -->
						<div class="list-single-main-item fl-wrap" id="sec4">
							<div class="list-single-main-item-title fl-wrap">
								<h3>
									리뷰 - <span> ${countReview} </span>
								</h3>
							</div>
							<div class="reviews-comments-wrap" id="review" style="width:100%;">
								<c:forEach var="reviewList" items="${reviewList}">
								<div class="reviews-comments-item">
									<div class="review-comments-avatar">
										<img src="${reviewList.memberVO.mem_Img}">
									</div>
									<div class="reviews-comments-item-text">
										<h4><a href="#">${reviewList.memberVO.mem_Name}</a></h4>
										<div class="listing-rating card-popup-rainingvis" data-starrating2="${reviewList.rev_rate}">
										</div>
										<div class="clearfix"></div>
										<p>${reviewList.rev_note}</p>
										<span class="reviews-comments-item-date">
											<i class="fa fa-calendar-check-o"></i>${reviewList.rev_writeDate}
										</span>
									</div>
								</div>
								</c:forEach>
								<!--reviews-comments-item end-->
							</div>
								<c:if test="${countReview > 0}">
									<a href="javascript:;" onclick="preReview(${countReview}, ${spaceDetail.space_no})"><img src="${pageContext.request.contextPath}/resources/bootstrap/images/view/left_arrow.png" /></a>
										&nbsp;&nbsp;
									<a href="javascript:;" onclick="nextReview(${countReview}, ${spaceDetail.space_no})"><img src="${pageContext.request.contextPath}/resources/bootstrap/images/view/right_arrow.png" /></a>
								</c:if>
						</div>
						<!-- list-single-main-item end -->
						<!-- list-single-main-item -->
						<div class="list-single-main-item fl-wrap" id="sec5">
							<div class="list-single-main-item-title fl-wrap">
								<h3>리뷰 &amp; 별점</h3>
							</div>
							<!-- Add Review Box -->
								<div id="add-review" class="add-review-box">
									<!-- Review Comment -->
									<form class="add-comment custom-form" action="spaceReview.do" method="post" id="spaceReviewForm">
									<input type="hidden" name="mem_no" id="mem_no" value="${login.mem_No}">
									<input type="hidden" name="space_no" id="space_no" value="${spaceDetail.space_no}">
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
									<div class="leave-rating-wrap">
										<span class="leave-rating-title">별점 : </span>
										<div class="leave-rating">
											<input type="radio" name="rev_rate" id="rating-1" value="5" checked="checked" />
											<label for="rating-1" class="fa fa-star-o" style="width: auto; color: #FACC39; float: right"></label> 
											<input type="radio" name="rev_rate" id="rating-2" value="4" /> 
											<label for="rating-2" class="fa fa-star-o" style="width: auto; color: #FACC39; float: right"></label> 
											<input type="radio" name="rev_rate" id="rating-3" value="3" />
											<label for="rating-3" class="fa fa-star-o" style="width: auto; color: #FACC39; float: right"></label>
											<input type="radio" name="rev_rate" id="rating-4" value="2" />
											<label for="rating-4" class="fa fa-star-o" style="width: auto; color: #FACC39; float: right"></label>
											<input type="radio" name="rev_rate" id="rating-5" value="1" />
											<label for="rating-5" class="fa fa-star-o" style="width: auto; color: #FACC39; float: right"></label>
										</div>
									</div>
									<fieldset>
										<div class="row">
											<div class="col-md-6">
												<label><i class="fa fa-user-o"></i></label>
												<input type="text" name="mem_name" id="mem_name" placeholder="Your Name *" value="${login.mem_Name}" />
											</div>
											<div class="col-md-6">
												<label><i class="fa fa-envelope-o"></i> </label><c:set var="str1" value="${login.mem_Id }"/>
													<c:set var="str2" value="@"/>
						                            <c:if test="${fn:contains(str1, str2)}">
						                            <input type="text" name="mem_email" id="mem_email" placeholder="Email Address*" value="${login.mem_Id}" />
						                            </c:if>
						                             <c:if test="${!fn:contains(str1, str2)}">
						                            <input type="text" name="mem_email" id="mem_email" placeholder="Email Address*" value="${login.mem_KakaoEmail}" />
						                            </c:if>
											</div>
										</div>
										<textarea cols="40" rows="3" name="rev_note" id="rev_note" placeholder="Your Review:"></textarea>
									</fieldset>
									</form>
									<button class="btn  big-btn  color-bg flat-btn" onclick="reviewSubmit()" style="margin-top: 10px">
										리뷰 작성 <i class="fa fa-paper-plane-o" aria-hidden="true"></i>
									</button>
								</div>
							<!-- Add Review Box / End -->
						</div>
						<!-- list-single-main-item end -->
					</div>
				</div>
				<!--box-widget-wrap -->
				<div class="col-md-4">
					<div class="box-widget-wrap">
						<!--box-widget-item -->
						<div class="box-widget-item fl-wrap">
							
							<div class="box-widget opening-hours">
								<div class="box-widget-content">
									<span class="current-status"><i class="fa fa-clock-o"></i>
										운영시간</span>
									<ul>
										<li><span class="opening-hours-day">평일</span><span
											class="opening-hours-time">${spaceDetail.space_open} - ${spaceDetail.space_close}</span></li>
									</ul>
									<span class="current-status"><i class="fa fa-won"></i>
										가격</span>
									<ul>
										<li><span class="opening-hours-day">하루</span><span
											class="opening-hours-time">${spaceDetail.space_sum} 원</span></li>
									</ul>	
								</div>
							</div>
						</div>
						<!--box-widget-item end -->
						<!--box-widget-item -->
						<div class="box-widget-item fl-wrap">
							<div class="box-widget-item-header">
								<h3>장소 예약</h3>
							</div>
							<div class="box-widget opening-hours">
								<div class="box-widget-content">
									<form class="add-comment custom-form">
									<input type="hidden" name="space_name" id="space_name" value="${spaceDetail.space_name}">
									<input type="hidden" name="space_category" id="space_category" value="${spaceDetail.space_category}">
									<input type="hidden" name="space_sum" id="space_sum" value="${spaceDetail.space_sum}">
										<fieldset>
											<label><i class="fa fa-user-o"></i></label>
											<input type="text" name="reserve_name" id="reserve_name" placeholder="Your Name *"/>
											<div class="clearfix"></div>
											<label><i class="fa fa-envelope-o"></i></label> 
											<input type="text" name="reserve_email" id="reserve_email" placeholder="Email Address*"/>
											<label><i class="fa fa-phone"></i></label> 
											<input type="text" name="reserve_phone" id="reserve_phone" placeholder="Your Phone number *"/>
											<div class="quantity fl-wrap">
												<span><i class="fa fa-user-plus"></i>사람 수 : </span>
												<div class="quantity-item">
													<input type="button"  value="-" class="minus" onclick="subQuantity()">
                                                  		<input type="text" name="reserve_quantity" id="reserve_quantity" value="1" title="Qty" class="qty" size="4">
                                                  		<input type="button"  value="+" class="plus" onclick="addQuantity()">
												</div>
											</div>
											<div class="row">
												<div class="col-md-6">
													<label><i class="fa fa-calendar-check-o"></i></label>
													<input type="text" name="reserve_startDate" id="reserve_startDate" placeholder="Date" class="datepicker" data-large-mode="true" data-large-default="true" value="" />
												</div>
												<div class="col-md-6">
													<label><i class="fa fa-calendar-check-o"></i></label>
													<input type="text" name="reserve_endDate" id="reserve_endDate" placeholder="Date" class="datepicker" data-large-mode="true" data-large-default="true" value="" />
												</div>
											</div>
											<textarea cols="40" rows="3" id="reserve_message" name="reserve_message" placeholder="Additional Information"></textarea>
										</fieldset>
										<button type="button" class="btn  big-btn color-bg flat-btn modal-open2" onclick="checkReserve()">
											예약 하기<i class="fa fa-angle-right"></i>
										</button>
									</form>
								</div>
							</div>
						</div>
						<!--box-widget-item end -->
						<!--box-widget-item -->
						<div class="box-widget-item fl-wrap">
							<div class="box-widget-item-header">
								<h3>위치 / 문의 :</h3>
							</div>
							<div class="box-widget">
								<div class="map-container">
									<div id="singleMap" data-latitude="${spaceDetail.map_latitude}"
										data-longitude="${spaceDetail.map_longitude}"
										data-mapTitle="Our Location"></div>
								</div>
								<div class="box-widget-content">
									<div
										class="list-author-widget-contacts list-item-widget-contacts">
										<ul>
											<li><span><i class="fa fa-map-marker"></i> 주소 : </span>
												<a href="#">${spaceDetail.space_addr1} ${spaceDetail.space_addr2}</a></li>
											<li><span><i class="fa fa-phone"></i> 전화번호 :</span> 
												<a href="#">+82 ${spaceDetail.space_phone}</a></li>
											<li><span><i class="fa fa-envelope-o"></i> 이메일 : </span>
												<a href="#">${spaceDetail.memberVO.mem_Id}</a></li>
											<li><span><i class="fa fa-globe"></i> 사이트 : </span>
												<a href="${spaceDetail.space_site}">${spaceDetail.space_site}</a></li>
										</ul>
									</div>
									<div class="list-widget-social">
										<ul>
											<li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#" target="_blank"><i class="fa fa-vk"></i></a></li>
											<li><a href="#" target="_blank"><i class="fa fa-whatsapp"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!--box-widget-item end -->
						<!--box-widget-item -->
						<div class="box-widget-item fl-wrap">
							<div class="box-widget-item-header">
								<h3> 호스트 정보 </h3>
							</div>
							<div class="box-widget list-author-widget">
								<div
									class="list-author-widget-header shapes-bg-small  color-bg fl-wrap">
									<span class="list-author-widget-link"><a href="author-single.html">김남현</a></span>
									<img src="${spaceDetail.memberVO.mem_Img}">
								</div>
								<div class="box-widget-content">
									<div class="list-author-widget-text">
										<div class="list-author-widget-contacts">
											<ul>
												<li><span><i class="fa fa-phone"></i> 휴대폰 : </span>
													<a href="#">+82 ${spaceDetail.memberVO.mem_Phone}</a></li>
												<li><span><i class="fa fa-envelope-o"></i> 이메일 : </span>
													<a href="#">${spaceDetail.memberVO.mem_Id}</a></li>
												<li><span><i class="fa fa-globe"></i> 카카오톡ID : </span>
													<a href="#">${spaceDetail.memberVO.mem_Id}</a></li>
											</ul>
										</div>
										<a href="javascript:;" onclick="openInquire()" class="btn transparent-btn"> 1:1 문의 </a>
									</div>
								</div>
							</div>
						</div>
						<!--box-widget-item end -->
						<!--box-widget-item -->
						<div class="box-widget-item fl-wrap">
							<div class="box-widget-item-header">
								<h3>그 외 공간</h3>
							</div>
							<div class="box-widget widget-posts">
								<div class="box-widget-content">
									<ul>
										<c:forEach var="etcSpaceList" items="${etcSpaceList}">
										<li class="clearfix"><a href="/Spacebook/spaceView.do?space_no=${etcSpaceList.space_no}" class="widget-posts-img"><img src="${pageContext.request.contextPath}/resources/bootstrap/images/all/1.jpg"></a>
											<div class="widget-posts-descr">
												<a href="/Spacebook/spaceView.do?space_no=${etcSpaceList.space_no}" title="">${etcSpaceList.space_name}</a> 
												<span class="widget-posts-date"><i class="fa fa-clock-o"></i> ${etcSpaceList.space_open} ~ ${etcSpaceList.space_close} </span>
											</div>
										</li>
										</c:forEach>
									</ul>
									<a class="widget-posts-link" href="#"> 다른 공간 보기 <span><i class="fa fa-angle-right"></i></span></a>
								</div>
							</div>
						</div>
						<!--box-widget-item end -->
					</div>
				</div>
				<!--box-widget-wrap end -->
			</div>
		</div>
	</section>
	<!--  section  end-->
	<div class="limit-box fl-wrap"></div>
	<!--  section  end-->
	<!-- modal start-->
	<div class="main-register-wrap modal2" style="align-items: center;">
	<!-- price-item-->
		<div class="main-overlay"></div>
		<div class="main-register-holder">
			<div class="price-head op2">
				<h3>호텔</h3> <h2>넓은 댄스 연습실</h2>
			</div>
			<div class="price-content fl-wrap">
				<div class="price-num fl-wrap">
					<span class="curen">&#8361;</span> <span class="price-num-item">30,000</span>
				</div>
				<div class="price-desc fl-wrap">
					<ul>
						<li><span id="payment_name"></span></li>
						<li><span id="payment_email"></span></li>
						<li><span id="payment_phone"></span></li>
						<li><span id="payment_Date"></span></li>
						<li><span id="payment_quantity"></span></li>
						<li><span id="payment_message"></span></li>
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
<jsp:include page="inquireModal.jsp" flush="false" />  
<!-- javascript start -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/space/spaceView.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- javascript end -->