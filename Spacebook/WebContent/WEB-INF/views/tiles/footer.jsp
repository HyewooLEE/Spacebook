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
					<h3>INSTAGRAM NEWS</h3>
					<div class="widget-posts fl-wrap">
			<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/instafeed.min.js"></script> <!-- js 파일 로드 -->
			<script type="text/javascript">    
			var userFeed = new Instafeed({
			    get: 'user',
			    userId: 7568363138,
			    sortBy: "most-recent",
			    limit: 2,
			    template: 
			    	'<li class="clearfix">'+
			    	'<a href="{{link}}" class="widget-posts-img" target="_blank" style="width:20%">'+
			    	'<img src="{{image}}" class="respimg" alt="">'+
			    	'</a><div class="widget-posts-descr">'+
			    	'<a href="{{link}}" title="">{{caption}}</a></div></li>',
			    accessToken: '7568363138.1f86452.b076a43c14dd4f9b8b4ef5ac4946732a'
			});
			userFeed.run();
			</script>
						<ul id="instafeed">
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
					<%-- <a href="https://kauth.kakao.com/oauth/authorize?client_id=899499d6220daee9a08638718e824675&redirect_uri=http://localhost:8328/Spacebook/kakaologin.do&response_type=code "  style="height:60px;"><img src="${pageContext.request.contextPath}/resources/bootstrap/images/kakao.jpg" height="60px;"></a> --%>
					 <a href="https://accounts.kakao.com/login?continue=https%3A%2F%2Fkauth.kakao.com%2Foauth%2Fauthorize%3Fclient_id%3D899499d6220daee9a08638718e824675%26redirect_uri%3Dhttp%3A%2F%2Flocalhost%3A8328%2FSpacebook%2Fkakaologin.do%26response_type%3Dcode "  style="height:60px;"><img src="${pageContext.request.contextPath}/resources/bootstrap/images/kakao.jpg" height="60px;"></a> 
			</div>
			<div class="log-separator fl-wrap">
				<span>or</span>
			</div>
			<div id="tabs-container">
				<ul class="tabs-menu">
					<li class="current"><a href="#tab-1" >로그인</a></li>
					<li><a href="#tab-2" >회원가입</a></li>
				</ul>
				<div class="tab">
					<div id="tab-1" class="tab-content">
						<div class="custom-form">
							<form method="post" action="login.do" id="main-login-form">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<label>이메일 </label>
								<input name="email" type="text" onClick="this.select()" value="" id="login_id"> 
								<label>비밀번호 </label> 
								<input name="passwd" type="password" onClick="this.select()" value="" id="login_pwd">
								<a href="#" class="log-submit-btn" onClick="return CheckLogin();">
									<span>로그인 하기</span>
								</a>
								<div class="clearfix"></div>
								<div class="filter-tags">
									<input id="remember_me" type="checkbox" name="remember-me"> <label for="remember_me">자동 로그인</label>
								</div>
							</form>
						</div>
					</div>
					<div class="tab">
						<div id="tab-2" class="tab-content">
							<div class="custom-form">
								<form method="post" class="main-register-form" id="main-register-form2" action="regist.do">
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									<input type="hidden" name="authority" value="ROLE_USER">
									<label>이메일 <span id="registCheck"></span> </label> 
									<input name="email" type="email" onClick="this.select()" value="" id="regist_id"> 
									<label>비밀번호</label> 
									<input name="password" id="regist_pwd_1" type="password" onClick="this.select()" value="">
									<label>비밀번호 확인</label> 
									<input name="password2" type="password" id="regist_pwd_2" onClick="this.select()" value="">
									<button type="button" class="log-submit-btn" onClick="return Check()">
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
