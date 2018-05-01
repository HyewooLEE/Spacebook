<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
					<section class="parallax-section" data-scrollax-parent="true">
                        <div class="bg par-elem "  data-bg="${pageContext.request.contextPath}/resources/bootstrap/images/all/5.jpg" data-scrollax="properties: { translateY: '30%' }"></div>
                        <div class="overlay"></div>
                        <div class="bubble-bg"></div>
                        <div class="container">
                            <div class="section-title center-align">
                                <h2><span>회사소개</span></h2>
                                <div class="breadcrumbs fl-wrap"><a href="main.do">홈</a> <span>회사소개</span></div>
                                <span class="section-separator"></span>
                            </div>
                        </div>
                        <div class="header-sec-link">
                            <div class="container"><a href="#sec1" class="custom-scroll-link"> Contact!</a></div>
                        </div>
                    </section>
                    <!-- section end -->
                    <!--section -->  
                    <section id="sec1">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="list-single-main-item fl-wrap">
                                        <div class="list-single-main-item-title fl-wrap">
                                            <h3>회사 <span> 소개 </span></h3>
                                        </div>
                                        <div class="list-single-main-media fl-wrap">
                                            <img src="${pageContext.request.contextPath}/resources/bootstrap/images/all/6.jpg" class="respimg" alt="">
                                        </div>
                                        <p>
                                        위치기반 공간 공유 사이트로서 누구나 호스트가 될 수 있고, 수익을 창출 할 수 있는 사이트입니다. <br>
                                        스터디룸, 세미나실, 파티룸, 연습실까지! 우리에게 꼭 맞는 모임장소가 필요할 땐, <br>
										스페이스클라우드에서 공간을 예약해보세요 <br>
                                        </p>
                                        <div class="list-author-widget-contacts" style="border-bottom: 0px;">
                                            <ul>
                                                <li><span><i class="fa fa-map-marker"></i> 주소 :</span> <a href="#">서울 중구 대하동 KH빌딩 3층</a></li>
                                                <li><span><i class="fa fa-phone"></i> 전화번호 :</span> <a href="#">010-1234-1234</a></li>
                                                <li><span><i class="fa fa-envelope-o"></i> 이메일 :</span> <a href="#">khspacebook@gmail.com</a></li>
                                                <li><span><i class="fa fa-globe"></i> 블로그 :</span> <a href="#">facebook.com/spacebook</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="list-single-main-wrapper fl-wrap">
                                        <div class="list-single-main-item-title fl-wrap">
                                            <h3>위치</h3>
                                        </div>
                                        <div class="map-container" >
                                            <div id="singleMap" data-latitude="37.5678912" data-longitude="126.98308969999994"></div>
                                        </div>
                                        <div class="list-single-main-item-title fl-wrap">
                                            <h3>CONTACT</h3>
                                        </div>
                                        <div id="contact-form">
                                            <div id="message"></div>
                                            <form  class="custom-form" action="php/contact.php" name="contactform" id="contactform">
                                                <fieldset>
                                                    <label><i class="fa fa-user-o"></i></label>
                                                    <input type="text" name="name" id="name" placeholder="Your Name *" value=""/>
                                                    <div class="clearfix"></div>
                                                    <label><i class="fa fa-envelope-o"></i>  </label>
                                                    <input type="text"  name="email" id="email" placeholder="Email Address*" value=""/>
                                                    <textarea name="comments"  id="comments" cols="40" rows="3" placeholder="Your Message:"></textarea>
                                                </fieldset>
                                                <button class="btn  big-btn  color-bg flat-btn" id="submit">Send<i class="fa fa-angle-right"></i></button>
                                            </form>
                                        </div>
                                        <!-- contact form  end--> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- section end -->
                    <div class="limit-box fl-wrap"></div>
