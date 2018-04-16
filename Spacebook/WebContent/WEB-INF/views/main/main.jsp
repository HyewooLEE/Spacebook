<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--section -->
<section class="scroll-con-sec hero-section" data-scrollax-parent="true" id="sec1" style="height: -webkit-fill-available; padding-top: 250px;" >
	<div class="media-container video-parallax" data-scrollax="properties: { translateY: '200px' }"  >
		<div class="bg mob-bg" style="background-image: url(${pageContext.request.contextPath}/resources/bootstrap/images/bg/1.jpg)" ></div>
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
				<h3>팔로 팔로미 ! 시팔로미</h3>
			</div>
			<div class="main-search-input-wrap">
				<div class="main-search-input fl-wrap">
					<div class="main-search-input-item">
						<input type="text" placeholder="어떤 공간을 찾으시나요?" value="" />
					</div>
					<div class="main-search-input-item location">
						<input type="text" placeholder="위치" value="" /> <a href="#"><i
							class="fa fa-dot-circle-o"></i></a>
					</div>
					<div class="main-search-input-item">
						<select data-placeholder="All Categories" class="chosen-select">
							<option>종류</option>
							<option>Shops</option>
							<option>Hotels</option>
							<option>Restaurants</option>
							<option>Fitness</option>
							<option>Events</option>
						</select>
					</div>
					<button class="main-search-button"
						onclick="window.location.href='listings-half-screen-map-list.html'">검색</button>
				</div>
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
					<div class="listing-item-grid">
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
					<div class="listing-item-grid">
						<img src="${category.space_img1}" style="width:795px;height:424px;">
						<div class="listing-counter">
							<span>${category.space_category }</span>
						</div>
						<div class="listing-item-cat">
							<h3>
								<a href="listing.html">${category.space_category } - ${category.space_name }</a>
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
					<div class="listing-item-grid">
						<img src="${category.space_img1}" style="width:387px;height:256px;">
						<div class="listing-counter">
							<span>${category.space_category }</span>
						</div>
						<div class="listing-item-cat">
							<h3>
								<a href="listing.html">${category.space_category } - ${category.space_name }</a>
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
					<div class="listing-item-grid">
						<img src="${category.space_img1}" style="width:387px;height:256px;">
						<div class="listing-counter">
							<span>${category.space_category }</span>
						</div>
						<div class="listing-item-cat">
							<h3>
								<a href="listing.html">${category.space_category } - ${category.space_name }</a>
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
					<div class="listing-item-grid">
						<img src="${category.space_img1}" style="width:387px;height:256px;">
						<div class="listing-counter">
							<span>${category.space_category }</span>
						</div>
						<div class="listing-item-cat">
							<h3>
								<a href="listing.html">${category.space_category } - ${category.space_name }</a>
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
			<div class="slick-slide-item">
				<!-- listing-item -->
				<div class="listing-item">
					<article class="geodir-category-listing fl-wrap">
						<div class="geodir-category-img">
							<img
								src="${pageContext.request.contextPath}/resources/bootstrap/images/all/1.jpg"
								alt="">
							<div class="overlay"></div>
							<div class="list-post-counter">
								<span>4</span><i class="fa fa-heart"></i>
							</div>
						</div>
						<div class="geodir-category-content fl-wrap">
							<a class="listing-geodir-category" href="listing.html">Retail</a>
							<div class="listing-avatar">
								<a href="author-single.html"><img src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
									alt=""></a> <span class="avatar-tooltip">Added By <strong>Lisa
										Smith</strong></span>
							</div>
							<h3>
								<a href="listing-single.html">Event in City Mol</a>
							</h3>
							<p>Sed interdum metus at nisi tempor laoreet.</p>
							<div class="geodir-category-options fl-wrap">
								<div class="listing-rating card-popup-rainingvis"
									data-starrating2="5">
									<span>(7 reviews)</span>
								</div>
								<div class="geodir-category-location">
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>
										27th Brooklyn New York, NY 10065</a>
								</div>
							</div>
						</div>
					</article>
				</div>
				<!-- listing-item end-->
			</div>
			<!--slick-slide-item end-->
			<!--slick-slide-item-->
			<div class="slick-slide-item">
				<!-- listing-item -->
				<div class="listing-item">
					<article class="geodir-category-listing fl-wrap">
						<div class="geodir-category-img">
							<img
								src="${pageContext.request.contextPath}/resources/bootstrap/images/all/1.jpg"
								alt="">
							<div class="overlay"></div>
							<div class="list-post-counter">
								<span>15</span><i class="fa fa-heart"></i>
							</div>
						</div>
						<div class="geodir-category-content fl-wrap">
							<a class="listing-geodir-category" href="listing.html">Event</a>
							<div class="listing-avatar">
								<a href="author-single.html"><img
									src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
									alt=""></a> <span class="avatar-tooltip">Added By <strong>Mark
										Rose</strong></span>
							</div>
							<h3>
								<a href="listing-single.html">Cafe "Lollipop"</a>
							</h3>
							<p>Morbi suscipit erat in diam bibendum rutrum in nisl.</p>
							<div class="geodir-category-options fl-wrap">
								<div class="listing-rating card-popup-rainingvis"
									data-starrating2="4">
									<span>(17 reviews)</span>
								</div>
								<div class="geodir-category-location">
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>
										27th Brooklyn New York, NY 10065</a>
								</div>
							</div>
						</div>
					</article>
				</div>
				<!-- listing-item end-->
			</div>
			<!--slick-slide-item end-->
			<!--slick-slide-item-->
			<div class="slick-slide-item">
				<!-- listing-item -->
				<div class="listing-item">
					<article class="geodir-category-listing fl-wrap">
						<div class="geodir-category-img">
							<img
								src="${pageContext.request.contextPath}/resources/bootstrap/images/all/1.jpg"
								alt="">
							<div class="overlay"></div>
							<div class="list-post-counter">
								<span>13</span><i class="fa fa-heart"></i>
							</div>
						</div>
						<div class="geodir-category-content fl-wrap">
							<a class="listing-geodir-category" href="listing.html">Gym </a>
							<div class="listing-avatar">
								<a href="author-single.html"><img
									src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
									alt=""></a> <span class="avatar-tooltip">Added By <strong>Nasty
										Wood</strong></span>
							</div>
							<h3>
								<a href="listing-single.html">Gym In Brooklyn</a>
							</h3>
							<p>Morbiaccumsan ipsum velit tincidunt .</p>
							<div class="geodir-category-options fl-wrap">
								<div class="listing-rating card-popup-rainingvis"
									data-starrating2="3">
									<span>(16 reviews)</span>
								</div>
								<div class="geodir-category-location">
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>
										27th Brooklyn New York, NY 10065</a>
								</div>
							</div>
						</div>
					</article>
				</div>
				<!-- listing-item end-->
			</div>
			<!--slick-slide-item end-->
			<!--slick-slide-item-->
			<div class="slick-slide-item">
				<!-- listing-item -->
				<div class="listing-item">
					<article class="geodir-category-listing fl-wrap">
						<div class="geodir-category-img">
							<img
								src="${pageContext.request.contextPath}/resources/bootstrap/images/all/1.jpg"
								alt="">
							<div class="overlay"></div>
							<div class="list-post-counter">
								<span>3</span><i class="fa fa-heart"></i>
							</div>
						</div>
						<div class="geodir-category-content fl-wrap">
							<a class="listing-geodir-category" href="listing.html">Shops</a>
							<div class="listing-avatar">
								<a href="author-single.html"><img
									src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
									alt=""></a> <span class="avatar-tooltip">Added By <strong>Nasty
										Wood</strong></span>
							</div>
							<h3>
								<a href="listing-single.html">Shop in Boutique Zone</a>
							</h3>
							<p>Morbiaccumsan ipsum velit tincidunt .</p>
							<div class="geodir-category-options fl-wrap">
								<div class="listing-rating card-popup-rainingvis"
									data-starrating2="4">
									<span>(6 reviews)</span>
								</div>
								<div class="geodir-category-location">
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>
										27th Brooklyn New York, NY 10065</a>
								</div>
							</div>
						</div>
					</article>
				</div>
				<!-- listing-item end-->
			</div>
			<!--slick-slide-item end-->
			<!--slick-slide-item-->
			<div class="slick-slide-item">
				<!-- listing-item -->
				<div class="listing-item">
					<article class="geodir-category-listing fl-wrap">
						<div class="geodir-category-img">
							<img
								src="${pageContext.request.contextPath}/resources/bootstrap/images/all/1.jpg"
								alt="">
							<div class="overlay"></div>
							<div class="list-post-counter">
								<span>35</span><i class="fa fa-heart"></i>
							</div>
						</div>
						<div class="geodir-category-content fl-wrap">
							<a class="listing-geodir-category" href="listing.html">Cars</a>
							<div class="listing-avatar">
								<a href="author-single.html"><img
									src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
									alt=""></a> <span class="avatar-tooltip">Added By <strong>Kliff
										Antony</strong></span>
							</div>
							<h3>
								<a href="listing-single.html">Best deal For the Cars</a>
							</h3>
							<p>Lorem ipsum gravida nibh vel velit.</p>
							<div class="geodir-category-options fl-wrap">
								<div class="listing-rating card-popup-rainingvis"
									data-starrating2="5">
									<span>(11 reviews)</span>
								</div>
								<div class="geodir-category-location">
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>
										27th Brooklyn New York, NY 10065</a>
								</div>
							</div>
						</div>
					</article>
				</div>
				<!-- listing-item end-->
			</div>
			<!--slick-slide-item end-->
			<!--slick-slide-item-->
			<div class="slick-slide-item">
				<!-- listing-item -->
				<div class="listing-item">
					<article class="geodir-category-listing fl-wrap">
						<div class="geodir-category-img">
							<img
								src="${pageContext.request.contextPath}/resources/bootstrap/images/all/1.jpg"
								alt="">
							<div class="overlay"></div>
							<div class="list-post-counter">
								<span>553</span><i class="fa fa-heart"></i>
							</div>
						</div>
						<div class="geodir-category-content fl-wrap">
							<a class="listing-geodir-category" href="listing.html">Restourants</a>
							<div class="listing-avatar">
								<a href="author-single.html"><img
									src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
									alt=""></a> <span class="avatar-tooltip">Added By <strong>Adam
										Koncy</strong></span>
							</div>
							<h3>
								<a href="listing-single.html">Luxury Restourant</a>
							</h3>
							<p>Sed non neque elit. Sed ut imperdie.</p>
							<div class="geodir-category-options fl-wrap">
								<div class="listing-rating card-popup-rainingvis"
									data-starrating2="5">
									<span>(7 reviews)</span>
								</div>
								<div class="geodir-category-location">
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>
										27th Brooklyn New York, NY 10065</a>
								</div>
							</div>
						</div>
					</article>
				</div>
				<!-- listing-item end-->
			</div>
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
							src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
							alt="">
					</div>
					<div class="images-collage-other images-collage-item"
						data-position-left="23" data-position-top="10" data-zindex="2">
						<img
							src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
							alt="">
					</div>
					<div class="images-collage-other images-collage-item"
						data-position-left="62" data-position-top="54" data-zindex="5">
						<img
							src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
							alt="">
					</div>
					<div class="images-collage-other images-collage-item anim-col"
						data-position-left="18" data-position-top="70" data-zindex="11">
						<img
							src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
							alt="">
					</div>
					<div class="images-collage-other images-collage-item"
						data-position-left="37" data-position-top="90" data-zindex="1">
						<img
							src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
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
						<h4>Find Interesting Place</h4>
						<p>Proin dapibus nisl ornare diam varius tempus. Aenean a quam
							luctus, finibus tellus ut, convallis eros sollicitudin turpis.</p>
					</div> <span class="pr-dec"></span>
				</li>
				<li>
					<div class="process-item">
						<span class="process-count">02 .</span>
						<div class="time-line-icon">
							<i class="fa fa-envelope-open-o"></i>
						</div>
						<h4>Contact a Few Owners</h4>
						<p>Faucibus ante, in porttitor tellus blandit et. Phasellus
							tincidunt metus lectus sollicitudin feugiat pharetra consectetur.</p>
					</div> <span class="pr-dec"></span>
				</li>
				<li>
					<div class="process-item">
						<span class="process-count">03 .</span>
						<div class="time-line-icon">
							<i class="fa fa-hand-peace-o"></i>
						</div>
						<h4>Make a Listing</h4>
						<p>Maecenas pulvinar, risus in facilisis dignissim, quam nisi
							hendrerit nulla, id vestibulum metus nullam viverra porta.</p>
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
			<a class="trs-btn" href="#">공간 등록하기 + </a>
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
			<div class="slick-slide-item">
				<div class="testimonilas-text">
					<div class="listing-rating card-popup-rainingvis"
						data-starrating2="5"></div>
					<p>Sed ut perspiciatis unde omnis iste natus error sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam,
						eaque ipsa quae ab illo inventore veritatis et quasi arch itecto
						beatae vitae dicta sunt explicabo.</p>
				</div>
				<div class="testimonilas-avatar-item">
					<div class="testimonilas-avatar">
						<img
							src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
							alt="">
					</div>
					<h4>Lisa Noory</h4>
					<span>Restaurant Owner</span>
				</div>
			</div>
			<!--slick-slide-item end-->
			<!--slick-slide-item-->
			<div class="slick-slide-item">
				<div class="testimonilas-text">
					<div class="listing-rating card-popup-rainingvis"
						data-starrating2="4"></div>
					<p>Aliquam erat volutpat. Curabitur convallis fringilla diam
						sed aliquam. Sed tempor iaculis massa faucibus feugiat. In
						fermentum facilisis massa, a consequat purus viverra.</p>
				</div>
				<div class="testimonilas-avatar-item">
					<div class="testimonilas-avatar">
						<img
							src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
							alt="">
					</div>
					<h4>Antony Moore</h4>
					<span>Restaurant Owner</span>
				</div>
			</div>
			<!--slick-slide-item end-->
			<!--slick-slide-item-->
			<div class="slick-slide-item">
				<div class="testimonilas-text">
					<div class="listing-rating card-popup-rainingvis"
						data-starrating2="5"></div>
					<p>Feugiat nulla facilisis at vero eros et accumsan et iusto
						odio dignissim qui blandit praesent luptatum zzril delenit augue
						duis dolore te odio dignissim qui blandit praesent.</p>
				</div>
				<div class="testimonilas-avatar-item">
					<div class="testimonilas-avatar">
						<img
							src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
							alt="">
					</div>
					<h4>Austin Harisson</h4>
					<span>Restaurant Owner</span>
				</div>
			</div>
			<!--slick-slide-item end-->
			<!--slick-slide-item-->
			<div class="slick-slide-item">
				<div class="testimonilas-text">
					<div class="listing-rating card-popup-rainingvis"
						data-starrating2="4"></div>
					<p>Qui sequitur mutationem consuetudium lectorum. Mirum est
						notare quam littera gothica, quam nunc putamus parum claram
						seacula quarta decima et quinta decima.</p>
				</div>
				<div class="testimonilas-avatar-item">
					<div class="testimonilas-avatar">
						<img
							src="${pageContext.request.contextPath}/resources/bootstrap/images/avatar/1.jpg"
							alt="">
					</div>
					<h4>Garry Colonsi</h4>
					<span>Restaurant Owner</span>
				</div>
			</div>
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