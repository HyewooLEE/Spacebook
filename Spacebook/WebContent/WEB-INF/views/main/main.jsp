<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--section -->
<section class="scroll-con-sec hero-section" data-scrollax-parent="true" id="sec1" style="height: -webkit-fill-available; " >
	<div class="media-container video-parallax" data-scrollax="properties: { translateY: '200px' }"  >
		<div class="bg mob-bg" style="background-image: url(${pageContext.request.contextPath}/resources/bootstrap/images/all/5.jpg)" ></div>
		<div class="video-container" >
			<video autoplay loop muted class="bgvid" height="100%;" style="width:auto;max-width: none;">
				<source src="${pageContext.request.contextPath}/resources/bootstrap/video/2.mp4" 	type="video/mp4" >
			</video>
		</div>
	</div>
	<div class="overlay"></div>
	<div class="hero-section-wrap fl-wrap">
		<div class="container">
			<div class="intro-item fl-wrap">
				<h2>너가 원하는 모든 장소를 찾아줄게</h2>
				<h3>팔로 팔로미 ! 다 찾아줄게!</h3>
			</div>
			<div class="main-search-input-wrap">
			<form action="search.do" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<div class="main-search-input fl-wrap">
					<div class="main-search-input-item">
						<input type="text" placeholder="어떤 공간을 찾으시나요?" value="" id="search" name="search"/>
					</div>
					<div class="main-search-input-item location">
						<input type="text" placeholder="위치" value=""  name="space_addr1"/>
						<a href="#"><i class="fa fa-dot-circle-o"></i></a>
					</div>
					<div class="main-search-input-item">
						<select  id="space_category" name="space_category" class="chosen-select">
                            	<option value="">공간유형</option>
                           		<option value="작업실">작업실</option>
                           		<option value="연습실">연습실</option>
                           		<option value="세미나실">세미나실</option>
                           		<option value="스터디룸">스터디룸</option>
                           		<option value="파티룸">파티룸</option>
                           		<option value="공연장">공연장</option>
                           		<option value="다목적홀">다목적홀</option>
                           		<option value="엠티장소">엠티장소</option>
                           		<option value="워크숍장소">워크숍장소</option>
                           		<option value="레저시설">레저시설</option>
                           		<option value="카페">카페</option>
                           		<option value="">기타</option>
                           	</select>
					</div>
					<button class="main-search-button" type="submit">검색</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	<div class="header-sec-link">
		<div class="container">
			<a href="#sec2" class="custom-scroll-link">시작하기!</a>
		</div>
	</div>
</section>
<!-- section end -->
<!--section -->
<section id="sec2">
	<div class="container">
		<div class="section-title">
			<h2>공간 카테고리</h2>
			<div class="section-subtitle">골라 골라 골라봐</div>
			<span class="section-separator"></span>
			<p>저희가 분류한 공간의 카테고리에서 원하시는 곳을 찾아보세요!</p>
		</div>
		<!-- portfolio start -->
		<div class="gallery-items fl-wrap mr-bot spad">
			<!-- gallery-item-->
			<c:forEach var="category" items="${category }" varStatus="status" begin="0" end="4">
			<c:if test="${status.index=='0' }">
			<div class="gallery-item">
				<div class="grid-item-holder">
					<div class="listing-item-grid" style="cursor:pointer;" onClick="location.href='spaceView.do?space_no=${category.space_no }'">
						<img src="${category.space_img1}" style="width:387px;height:256px;">
						<div class="listing-counter">
							<span>${category.space_category }</span>
						</div>
						<div class="listing-item-cat">
							<h3>
								<a href="spaceView.do?space_no=${category.space_no }">${category.space_category } - ${category.space_name }</a>
							</h3>
							<p>${category.space_intro1 }</p>
						</div>
					</div>
				</div>
			</div>
			</c:if>
			<!-- gallery-item end-->
			<!-- gallery-item-->
			<c:if test="${status.index=='1' }">
			<div class="gallery-item gallery-item-second">
				<div class="grid-item-holder">
					<div class="listing-item-grid" style="cursor:pointer;" onClick="location.href='spaceView.do?space_no=${category.space_no }'">
						<img src="${category.space_img1}" style="width:795px;height:424px;">
						<div class="listing-counter">
							<span>${category.space_category }</span>
						</div>
						<div class="listing-item-cat">
							<h3>
								<a href="spaceView.do?space_no=${category.space_no }">${category.space_category } - ${category.space_name }</a>
							</h3>
							<p>${category.space_intro1 }</p>
						</div>
					</div>
				</div>
			</div>
			</c:if>
			<!-- gallery-item end-->
			<!-- gallery-item-->
			<c:if test="${status.index=='2' }">
			<div class="gallery-item">
				<div class="grid-item-holder">
					<div class="listing-item-grid" style="cursor:pointer;" onClick="location.href='spaceView.do?space_no=${category.space_no }'">
						<img src="${category.space_img1}" style="width:387px;height:256px;">
						<div class="listing-counter">
							<span>${category.space_category }</span>
						</div>
						<div class="listing-item-cat">
							<h3>
								<a href="spaceView.do?space_no=${category.space_no }">${category.space_category } - ${category.space_name }</a>
							</h3>
							<p>${category.space_intro1 }</p>
						</div>
					</div>
				</div>
			</div>
			</c:if>
			<!-- gallery-item end-->
			<!-- gallery-item-->
			<c:if test="${status.index=='3' }">
			<div class="gallery-item">
				<div class="grid-item-holder">
					<div class="listing-item-grid" style="cursor:pointer;" onClick="location.href='spaceView.do?space_no=${category.space_no }'">
						<img src="${category.space_img1}" style="width:387px;height:256px;">
						<div class="listing-counter">
							<span>${category.space_category }</span>
						</div>
						<div class="listing-item-cat">
							<h3>
								<a href="spaceView.do?space_no=${category.space_no }">${category.space_category } - ${category.space_name }</a>
							</h3>
							<p>${category.space_intro1 }</p>
						</div>
					</div>
				</div>
			</div>
			</c:if>
			<!-- gallery-item end-->
			<!-- gallery-item-->
			<c:if test="${status.index=='4' }">
			<div class="gallery-item">
				<div class="grid-item-holder">
					<div class="listing-item-grid" style="cursor:pointer;" onClick="location.href='spaceView.do?space_no=${category.space_no }'">
						<img src="${category.space_img1}" style="width:387px;height:256px;">
						<div class="listing-counter">
							<span>${category.space_category }</span>
						</div>
						<div class="listing-item-cat">
							<h3>
								<a href="spaceView.do?space_no=${category.space_no }">${category.space_category } - ${category.space_name }</a>
							</h3>
							<p>${category.space_intro1 }</p>
						</div>
					</div>
				</div>
			</div>
			</c:if>
			<!-- gallery-item end-->
			</c:forEach>
		</div>
		<!-- portfolio end -->
		<a href="listSpace.do" class="btn  big-btn circle-btn dec-btn  color-bg flat-btn">모두 보기<i class="fa fa-eye"></i>
		</a>
	</div>
</section>
<!-- section end -->
<!--section -->
<section class="gray-section">
	<div class="container">
		<div class="section-title">
			<h2>추천 리스트!</h2>
			<div class="section-subtitle">우린 이미 당신의 취향을 파악했어요</div>
			<span class="section-separator"></span>
			<p>저희가 회원님 취향에 맞는 공간을 준비해 봤어요 입맛에 맞으시나요?</p>
		</div>
	</div>
	<!-- carousel -->
	<div class="list-carousel fl-wrap card-listing ">
		<!--listing-carousel-->
		<div class="listing-carousel  fl-wrap ">
			<!--slick-slide-item-->
			<c:forEach var="recommend" items="${recommend }" begin="0" end="5">
			<div class="slick-slide-item">
				<!-- listing-item -->
				<div class="listing-item">
					<article class="geodir-category-listing fl-wrap">
						<div class="geodir-category-img">
							<img
								src="${recommend.space_img1}"
								alt="">
							<div class="overlay"></div>
							<div class="list-post-counter">
								<span>${recommend.spaceFavoriteDTO.favorite }</span><i class="fa fa-heart"></i>
							</div>
						</div>
						<div class="geodir-category-content fl-wrap">
							<a class="listing-geodir-category" href="spaceView.do?space_no=${recommend.space_no }">${recommend.space_category}</a>
							<div class="listing-avatar">
								<a href="spaceView.do?space_no=${recommend.space_no }"><img src="${recommend.memberVO.mem_Img}"
									alt=""></a> <span class="avatar-tooltip">Added By <strong>Lisa
										Smith</strong></span>
							</div>
							<h3>
								<a href="spaceView.do?space_no=${recommend.space_no }">${recommend.space_name}</a>
							</h3>
							<p>${recommend.space_intro1}</p>
							<div class="geodir-category-options fl-wrap">
								<div class="listing-rating card-popup-rainingvis"
									data-starrating2="${recommend.spaceReviewDTO.rev_rate}">
									<span>(${recommend.spaceReviewDTO.count} reviews)</span>
								</div>
								<div class="geodir-category-location">
									<a href="spaceView.do?space_no=${recommend.space_no }"><i class="fa fa-map-marker" aria-hidden="true"></i>
										${recommend.space_addr1}</a>
								</div>
							</div>
						</div>
					</article>
				</div>
				<!-- listing-item end-->
			</div>
			</c:forEach>
			<!--slick-slide-item end-->
		</div>
		<!--listing-carousel end-->
		<div class="swiper-button-prev sw-btn">
			<i class="fa fa-long-arrow-left" style="margin-top: 15px;"></i>
		</div>
		<div class="swiper-button-next sw-btn">
			<i class="fa fa-long-arrow-right" style="margin-top: 15px;"></i>
		</div>
	</div>
	<!--  carousel end-->
</section>
<!-- section end -->
<!--section -->
<section class="color-bg">
	<div class="shapes-bg-big"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="images-collage fl-wrap">
					<div class="images-collage-title">
						SPACE<span>BOOK</span>
					</div>
					<div class="images-collage-main images-collage-item">
						<img
							src="${pageContext.request.contextPath}/resources/images/byung.png"
							alt="">
					</div>
					<div class="images-collage-other images-collage-item"
						data-position-left="23" data-position-top="10" data-zindex="2">
						<img
							src="${pageContext.request.contextPath}/resources/images/nam.png"
							alt="">
					</div>
					<div class="images-collage-other images-collage-item anim-col"
						data-position-left="62" data-position-top="54" data-zindex="5">
						<img
							src="${pageContext.request.contextPath}/resources/images/joo.png"
							alt="">
					</div>
					<div class="images-collage-other images-collage-item anim-col"
						data-position-left="18" data-position-top="70" data-zindex="11">
						<img
							src="${pageContext.request.contextPath}/resources/images/hye.png"
							alt="">
					</div>
					<div class="images-collage-other images-collage-item"
						data-position-left="37" data-position-top="100" data-zindex="1">
						<img
							src="${pageContext.request.contextPath}/resources/images/you.png"
							alt="">
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="color-bg-text">
					<h3>SPACE BOOK을 함께 즐겨봐요!</h3>
					<p>우린 우리만을 위한 공간이 필요 할 때가 있어요. 아니면 나에게 놀고있는 공간이 있어요.<br>
					 이럴땐 주저하지 말고 SPACE BOOK을 찾으세요 !<br>
					우린 분명히 당신에게 도움이 될거에요!</p>
					<a href="#" class="color-bg-link modal-open">지금 가입하기</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!--section   end -->
<!--section -->
<section>
	<div class="container">
		<div class="section-title">
			<h2>SPACE BOOK 이용하기!</h2>
			<div class="section-subtitle">어렵지 않아요 이용방법</div>
			<span class="section-separator"></span>
			<p>누구나 쉽게 사용할 수 있는 이용방법을 확인하세요.</p>
		</div>
		<!--process-wrap  -->
		<div class="process-wrap fl-wrap">
			<ul>
				<li>
					<div class="process-item">
						<span class="process-count">01 . </span>
						<div class="time-line-icon">
							<i class="fa fa-map-o"></i>
						</div>
						<h4>간단하게 회원 가입하세요!</h4>
						<p>지금 가지고 계신 모바일이나 데스크탑으로 간편하게 회원가입을 하세요 !<br> 단 1분도 걸리지 않습니다.</p>
					</div> <span class="pr-dec"></span>
				</li>
				<li>
					<div class="process-item">
						<span class="process-count">02 .</span>
						<div class="time-line-icon">
							<i class="fa fa-envelope-open-o"></i>
						</div>
						<h4>만약 놀고 있는 공간이 있다면 공간 등록을 하세요 !</h4>
						<p>자세한 정보를 입력할 수록 예약 수가 높아집니다!</p>
					</div> <span class="pr-dec"></span>
				</li>
				<li>
					<div class="process-item">
						<span class="process-count">03 .</span>
						<div class="time-line-icon">
							<i class="fa fa-hand-peace-o"></i>
						</div>
						<h4>나 또는 우리에게 필요한 공간이 있으면 예약하세요 !</h4>
						<p>다양한 결제방식으로 간편하게 예약하세요.<br>어때요 진짜 쉽죠?</p>
					</div>
				</li>
			</ul>
			<div class="process-end">
				<i class="fa fa-check"></i>
			</div>
		</div>
		<!--process-wrap   end-->
	</div>
</section>
<section class="parallax-section" data-scrollax-parent="true">
	<div class="bg"
		data-bg="${pageContext.request.contextPath}/resources/bootstrap/images/all/4.jpg"
		data-scrollax="properties: { translateY: '100px' }"></div>
	<div class="overlay co lor-overlay"></div>
	<!--container-->
	<div class="container">
		<div class="intro-item fl-wrap">
			<h2>비어있는 나의 공간을 가치있게 활용하세요!</h2>
			<h3>무용지물 나의 공간이 가치있는 공간으로 재탄생 합니다! </h3>
			<a class="trs-btn" href="submitSpaceForm.do">공간 등록하기 + </a>
		</div>
	</div>
</section>
<!-- section end -->
<!--section -->
<section>
	<div class="container">
		<div class="section-title">
			<h2>회원님들의 후기</h2>
			<div class="section-subtitle">믿음직한 후기를 보세요</div>
			<span class="section-separator"></span>
			<p>이와 같이 후기를 남기고 이벤트에 참여하여 경품을 수령하세요!</p>
		</div>
	</div>
	<!-- testimonials-carousel -->
	<div class="carousel fl-wrap">
		<!--testimonials-carousel-->
		<div class="testimonials-carousel single-carousel fl-wrap">
			<!--slick-slide-item-->
			<c:forEach var="reviewList" items="${review}">
			<div class="slick-slide-item">
				<div class="testimonilas-text">
					<div class="listing-rating card-popup-rainingvis" data-starrating2="${reviewList.rev_rate}"></div>
					<p>${reviewList.rev_note}</p>
				</div>
				<div class="testimonilas-avatar-item">
					<div class="testimonilas-avatar">
						<img src="${reviewList.mem_img}">
					</div>
					<h4>${reviewList.mem_name}</h4>
					<span>${reviewList.space_name} 호스트</span>
				</div>
			</div>
			</c:forEach>
			<!--slick-slide-item end-->
		</div>
		<!--testimonials-carousel end-->
		<div class="swiper-button-prev sw-btn">
			<i class="fa fa-long-arrow-left" style="margin-top: 15px;"></i>
		</div>
		<div class="swiper-button-next sw-btn">
			<i class="fa fa-long-arrow-right" style="margin-top: 15px;"></i>
		</div>
	</div>
	<!-- carousel end-->
</section>
<!-- section end -->