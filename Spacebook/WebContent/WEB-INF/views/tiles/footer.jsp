<%@ page contentType="text/html; charset=UTF-8"%>
<!--section -->
<section class="gradient-bg">
	<div class="cirle-bg">
		<div class="bg" data-bg="${pageContext.request.contextPath}/resources/bootstrap/images/bg/circle.png"></div>
	</div>
	<div class="container">
		<div class="join-wrap fl-wrap">
			<div class="row">
				<div class="col-md-8">
					<h3>혹시 이용에 어려움을 겪고 계신가요 ?</h3>
					<p>조금이라도 궁금하시거나 모르는 부분이 있으시면 바로 문의해주세요!</p>
				</div>
				<div class="col-md-4">
					<a href="contacts.html" class="join-wrap-btn">문의 하기 <i class="fa fa-envelope-o"></i></a>
				</div>
			</div>
		</div>
	</div>
</section>
<footer class="main-footer dark-footer  ">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="footer-widget fl-wrap">
					<h3>회사 소개</h3>
					<div class="footer-contacts-widget fl-wrap">
						<p>저희 회사는 위치기반을 중심으로 하여 고객들의 필요 한 공간을 대여 관리해주는 그런 사이트를 만들려고하는데 왜하는거지 ?</p>
						<ul class="footer-contacts fl-wrap">
							<li><span><i class="fa fa-envelope-o"></i> 이메일 :</span><a
								href="#" target="_blank">email@kh.com</a></li>
							<li><span><i class="fa fa-map-marker"></i> 주소 :</span><a
								href="#" target="_blank">서울 중구 대하동 KH빌딩 3층  </a></li>
							<li><span><i class="fa fa-phone"></i> 휴대폰 :</span><a
								href="#">010-1111-1234</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="footer-widget fl-wrap">
					<h3>Our Last News</h3>
					<div class="widget-posts fl-wrap">
						<ul>
							<li class="clearfix"><a href="#" class="widget-posts-img"><img
									src="${pageContext.request.contextPath}/resources/bootstrap/images/all/1.jpg"
									class="respimg" alt=""></a>
								<div class="widget-posts-descr">
									<a href="#" title="">Vivamus dapibus rutrum</a> <span
										class="widget-posts-date"> 21 Mar 09.05 </span>
								</div></li>
							<li class="clearfix"><a href="#" class="widget-posts-img"><img
									src="${pageContext.request.contextPath}/resources/bootstrap/images/all/1.jpg"
									class="respimg" alt=""></a>
								<div class="widget-posts-descr">
									<a href="#" title=""> In hac habitasse platea</a> <span
										class="widget-posts-date"> 7 Mar 18.21 </span>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="footer-widget fl-wrap">
					<h3>구독하기</h3>
					<div class="subscribe-widget fl-wrap">
						<p>당신이 원하신다면 SPACE BOOK의 최신 정보를 이메일로 받아 보실수 있습니다.<br>
						 지금 당장 구독 신청을 해보세요 !</p>
						<div class="subcribe-form">
							<form id="subscribe">
								<input class="enteremail" name="email" id="subscribe-email"
									placeholder="Email" spellcheck="false" type="text">
								<button type="submit" id="subscribe-button" class="subscribe-button">
									<i class="fa fa-rss"></i> 구독하기
								</button>
								<label for="subscribe-email" class="subscribe-message"></label>
							</form>
						</div>
					</div>
					<div class="footer-widget fl-wrap">
						<div class="footer-menu fl-wrap">
							<ul>
								<li><a href="#">Home </a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">Listing</a></li>
								<li><a href="#">Contacts</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="sub-footer fl-wrap">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="about-widget">
						<img src="${pageContext.request.contextPath}/resources/bootstrap/images/logo.png" alt="">
					</div>
				</div>
				<div class="col-md-4">
					<div class="copyright">&#169; SPACEBOOK 2018 . All rights reserved.</div>
				</div>
				<div class="col-md-4">
					<div class="footer-social">
						<ul>
							<li><a href="#" target="_blank"><i class="fa fa-facebook-official"></i></a></li>
							<li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fa fa-chrome"></i></a></li>
							<li><a href="#" target="_blank"><i class="fa fa-vk"></i></a></li>
							<li><a href="#" target="_blank"><i class="fa fa-whatsapp"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!--register form -->
<div class="main-register-wrap modal">
	<div class="main-overlay"></div>
	<div class="main-register-holder">
		<div class="main-register fl-wrap">
			<div class="close-reg"><i class="fa fa-times" style="margin-top:13px;" ></i></div>
			<h3>
				 <span>SPACE<strong>BOOK</strong></span> 로그인 하기
			</h3>
			<div class="soc-log fl-wrap" style="margin-bottom:25px;">
				<p>SNS 계정을 이용하여 로그인하기</p>
					<a href="https://kauth.kakao.com/oauth/authorize?client_id=899499d6220daee9a08638718e824675&redirect_uri=http://localhost:8328/Spacebook/kakaologin.do&response_type=code "  style="height:60px;"><img src="${pageContext.request.contextPath}/resources/bootstrap/images/kakao.jpg" height="60px;"></a> 
			</div>
			<div class="log-separator fl-wrap">
				<span>or</span>
			</div>
			<div id="tabs-container">
				<ul class="tabs-menu">
					<li class="current"><a href="#tab-1">로그인</a></li>
					<li><a href="#tab-2">회원가입</a></li>
				</ul>
				<div class="tab">
					<div id="tab-1" class="tab-content">
						<div class="custom-form">
							<form method="post" action="login.do">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<label>이메일 </label>
								<input name="email" type="text" onClick="this.select()" value=""> 
								<label>비밀번호 </label> 
								<input name="passwd" type="password" onClick="this.select()" value="">
								<button type="submit" class="log-submit-btn">
									<span>로그인 하기</span>
								</button>
								<div class="clearfix"></div>
								<div class="filter-tags">
									<input id="check-a" type="checkbox" name="check"> <label for="check-a">자동 로그인</label>
								</div>
							</form>
							<div class="lost_password">
								<a href="#">비밀번호를 잃어버리셨나요?</a>
							</div>
						</div>
					</div>
					<div class="tab">
						<div id="tab-2" class="tab-content">
							<div class="custom-form">
								<form method="post" class="main-register-form" id="main-register-form2" action="regist.do">
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									<input type="hidden" name="authority" value="ROLE_USER">
									<label>이메일 </label> <input name="email" type="email" onClick="this.select()" value=""> 
									<label>비밀번호</label> <input name="password" type="password" onClick="this.select()" value="">
									<label>비밀번호 확인</label> <input name="password2" type="password" onClick="this.select()" value="">
									<button type="submit" class="log-submit-btn">
										<span>가입하기</span>
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--register form end -->
<a class="to-top"><i class="fa fa-angle-up" style="margin-top: 10px;"></i></a>
<!-- Main end -->
