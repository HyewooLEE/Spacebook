<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  <section class="parallax-section" data-scrollax-parent="true" id="sec1">
                        <div class="bg par-elem "  data-bg="${pageContext.request.contextPath}/resources/bootstrap/images/all/4.jpg" data-scrollax="properties: { translateY: '30%' }"></div>
                        <div class="overlay"></div>
                        <div class="container">
                            <div class="section-title center-align">
                                <h2><span>메뉴얼</span></h2>
                                <div class="breadcrumbs fl-wrap"><a href="main.do">홈</a><span>메뉴얼</span></div>
                                <span class="section-separator"></span>
                            </div>
                        </div>
                        <div class="header-sec-link">
                            <div class="container"><a href="#sec2" class="custom-scroll-link">시작하기!</a></div>
                        </div>
                    </section>
                    <!-- section end -->
                    <!-- <div class="scroll-nav-wrapper fl-wrap">
                        <div class="container">
                            <nav class="scroll-nav scroll-init inline-scroll-container">
                                <ul>
                                    <li><a class="act-scrlink" href="#sec1">Top</a></li>
                                    <li><a href="#sec2">Steps</a></li>
                                    <li><a href="#sec3">Video Tutorials</a></li>
                                    <li><a href="#sec4">FAQ</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div> -->
                    <!--section -->  
                    <section  id="sec2">
                        <div class="container">
                            <div class="section-title">
                                <h2> 메뉴얼</h2>
                                <div class="section-subtitle">어렵지않아 멍청아!</div>
                                <span class="section-separator"></span>
                                <p>SPACEBOOK 사용법을 3단계로 가르쳐 드릴게요 !</p>
                            </div>
                            <div class="time-line-wrap fl-wrap">
                                <!--  time-line-container  --> 
                                <div class="time-line-container">
                                    <div class="step-item">1 단계</div>
                                    <div class="time-line-box tl-text tl-left">
                                        <span class="process-count">01 . </span>
                                        <div class="time-line-icon">
                                            <i class="fa fa-map-o"></i>
                                        </div>
                                        <h3>간단하게 회원 가입하세요!</h3>
                                        <p>지금 가지고 계신 모바일이나 데스크탑으로 간편하게 회원가입을 하세요 !<br> 단 1분도 걸리지 않습니다.</p>
                                    </div>
                                    <div class="time-line-box tl-media tl-right">
                                        <img src="${pageContext.request.contextPath}/resources/bootstrap/images/howitwork/how3.jpg" alt="" style="height:360px;object-fit: cover;">
                                    </div>
                                </div>
                                <!--  time-line-container --> 
                                <!--  time-line-container  --> 
                                <div class="time-line-container lf-im">
                                    <div class="step-item">2 단계</div>
                                    <div class="time-line-box tl-text tl-right">
                                        <span class="process-count">02 . </span>
                                        <div class="time-line-icon">
                                            <i class="fa fa-envelope-open-o"></i>
                                        </div>
                                        <h3>만약 놀고 있는 공간이 있다면 공간 등록을 하세요 !</h3>
                                        <p>자세한 정보를 입력할 수록 예약 수가 높아집니다!</p>
                                    </div>
                                    <div class="time-line-box tl-media tl-left">
                                        <img src="${pageContext.request.contextPath}/resources/bootstrap/images/howitwork/how1.jpg" alt="" style="height:360px">
                                    </div>
                                </div>
                                <!--  time-line-container -->                             
                                <!--  time-line-container  --> 
                                <div class="time-line-container">
                                    <div class="step-item">3 단계</div>
                                    <div class="time-line-box tl-text tl-left">
                                        <span class="process-count">03 . </span>
                                        <div class="time-line-icon">
                                            <i class="fa fa-hand-peace-o"></i>
                                        </div>
                                        <h3>나 또는 우리에게 필요한 공간이 있으면 예약하세요 !</h3>
                                        <p>다양한 결제방식으로 간편하게 예약하세요.</p>
                                    </div>
                                    <div class="time-line-box tl-media tl-right">
                                        <img src="${pageContext.request.contextPath}/resources/bootstrap/images/howitwork/how2.jpg" alt="" style="height:360px">
                                    </div>
                                </div>
                                <!--  time-line-container -->                             
                                <div class="timeline-end"><i class="fa fa-check" style="margin-top:20px;"></i></div>
                            </div>
                        </div>
                    </section>
                    <!-- section end -->
                    <!--section -->  
                    <section class="color-bg" id="sec3">
                        <div class="shapes-bg-big"></div>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="video-box fl-wrap">
                                        <img src="${pageContext.request.contextPath}/resources/bootstrap/images/howitwork/how4.jpg" alt="">
                                        <a class="video-box-btn image-popup" href="https://vimeo.com/110234211"><i class="fa fa-play" aria-hidden="true" style="margin-top:28px;"></i></a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="color-bg-text">
                                        <h3>메뉴얼 비디오</h3>
                                        <p>비디오에서 알기 쉽게 설명해드려요 단지 3단계로 나눠서 아주 알기 쉽게 설명해드려요 !</p>
                                        <a href="#" class="color-bg-link">블로그로 가기</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- section end -->
                    <!--section -->  
                    <section class="gray-bg" id="sec4">
                        <div class="container">
                            <div class="section-title">
                                <h2> FAQ</h2>
                                <div class="section-subtitle">그만 좀 물어봐라</div>
                                <span class="section-separator"></span>
                                <p>자주 질문하시는 것들을 모아 봤어요 여기서 보고 해결하세요!</p>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="accordion">
                                        <a class="toggle act-accordion" href="#">예약 변경 전, 기존에 결제한 금액은 언제 환불되나요?<i class="fa fa-angle-down"></i></a>
                                        <div class="accordion-inner visible">
                                            <p> 변경 요청한 예약이 승인되면 <br>기존 결제가 취소되며 4-5일 이내에 전액환불 처리 됩니다.<br>변경 요청한 예약이 취소되는 경우<br>기존 결제가 유지되고 신규 결제가 전액 환불 됩니다.</p>
                                        </div>
                                        <a class="toggle" href="#">예약 변경을 취소/거절 당했을 경우, 신규 진행한 결제는 어떻게 되나요?<i class="fa fa-angle-down"></i></a>
                                        <div class="accordion-inner">
                                            <p> 예약 변경을 취소하거나,<br>호스트님에 의해 거절 당했을 경우<br>신규로 진행한 결제는<br>환불기준과 관계 없이 전액 환불을 진행해드립니다.<br>환불은 약 4~5일 정도 소요 됩니다.</p>
                                        </div>
                                        <a class="toggle" href="#">예약 변경 신청을 거절 당했어요. 다시 신청 할 수 있나요? <i class="fa fa-angle-down"></i></a>
                                        <div class="accordion-inner">
                                            <p> 불가능합니다.<br>예약 변경 신청은 결과에 관계 없이 1회만 가능합니다.<br>호스트가 거절 / 승인 또는 게스트가 취소한 경우에는 재신청이 불가합니다.
                                        </div>
                                        <a class="toggle" href="#">예약 변경을 잘못 신청했어요, 취소하고 다시 변경 신청 할 수 있나요?<i class="fa fa-angle-down"></i></a>
                                        <div class="accordion-inner">
                                            <p>예약 변경 신청은 1회만 가능하고, 변경 내용에 대한 수정은 불가합니다.</p>
                                        </div>
                                        <a class="toggle" href="#">'예약 변경' 버튼이 보이지 않아요.<i class="fa fa-angle-down"></i></a>
                                        <div class="accordion-inner">
                                            <p>예약변경은 아래의 경우를 모두 충족할 때만 신청이 가능합니다.<br>1) 모임공간 예약인 경우<br>2) 승인결제 또는 바로결제 예약으로 결제까지 완료하신 경우<br>3) 이용일 전날 오전 11시 59분을 지나지 않은 경우<br>4) 해당 예약에 대해 이전에 예약 변경 신청을 하신 적이 없는 경우<br>위의 조건을 모두 충족하는데도 예약 변경 버튼이 보이지 않는다면,<br>스페이스클라우드 1:1문의 로 예약번호와 함께 문의 주세요.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="accordion">
                                        <a class="toggle" href="#">당일 예약은 불가능한가요?<i class="fa fa-angle-down"></i></a>
                                        <div class="accordion-inner">
                                            <p>예약하려는 공간이 승인예약 또는 승인결제를 사용하는 경우,<br>예약을 승인하고 결제하는 시간이 최대 36시간 소요되기 때문에 당일 예약 접수가 불가합니다.<br>최소 2일전 혹은 3일전부터 예약을 접수하실 수 있습니다.<br>단, 바로결제를 사용하는 시간단위 공간의 경우 3시간 전까지 예약이 가능합니다</p>
                                        </div>
                                        <a class="toggle" href="#">스페이스클라우드 이용에 문의가 있어요. <i class="fa fa-angle-down"></i></a>
                                        <div class="accordion-inner">
                                            <p>스페이스클라우드 이용에 대해 자세한 문의는,<br>스페이스클라우드 고객센터에 남겨주세요:)<br>*고객센터 운영시간 : 오전 10:00 ~ 오후 6:00 (월~금)</p>
                                        </div>
                                        <a class="toggle act-accordion" href="#">예약을 취소하고 싶어요.<i class="fa fa-angle-down"></i></a>
                                        <div class="accordion-inner visible">
                                            <p>예약을 취소하시려면,<br>MY 메뉴 > 신청.확정 > 취소할 예약을 클릭하신 다음, [예약 취소하기] 버튼을 눌러주세요.<br>팝업이 뜨면 취소 및 환불에 대한 내용을 확인하시고 취소 사유를 입력해주시면 됩니다:)</p>
                                        </div>
                                        <a class="toggle" href="#">예약이 승인되었습니다. 결제는 어떻게 하나요?<i class="fa fa-angle-down"></i></a>
                                        <div class="accordion-inner">
                                            <p>MY 메뉴 > 신청.확정 > 결제할 예약을 클릭하신 다음, 하단에 결제수단을 선택하신 후 [결제하기] 버튼을 눌러주시면 됩니다.<br>또는 SMS에서 결제하기 링크를 클릭하시면 됩니다.<br>12시간 이내에 결제를 완료하셔야, 예약이 확정됩니다:) </p>
                                        </div>
                                        <a class="toggle" href="#">호스트에게 질문을 하고 싶어요.<i class="fa fa-angle-down"></i></a>
                                        <div class="accordion-inner">
                                            <p>예약을 하기 전에 또는 하고난 후에 호스트에게 문의하고 싶은 내용이 있다면, 톡톡하기를 이용해보세요.<br>공간 상세 페이지 또는 예약정보 페이지에서 [톡톡하기]버튼을 누르면 별도의 절차 없이 호스트와 메신저로 대화를 나누실 수 있습니다.<br>(별도 절차 또는 설치 X)<br>또는 공간 상세 페이지와 예약 정보 페이지에서 [전화걸기] 버튼을 눌러서 호스트에게 연락해보세요.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
