<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="parallax-section small-par color-bg" data-scrollax-parent="true" id="sec1" style="height: 100%; padding:10%;">
				<div class="shapes-bg-big"></div>		
				<div class="cs-wrapper fl-wrap"  style="padding-top: 10px;">
                <!-- container  -->
                <div class="container small-container counter-widget" data-countDate="09/12/2019">
                    <h3 class="soon-title" style="font-size: 30px;">이메일로 비밀번호 찾기</h3>
                    <!-- countdown -->
                    <!-- countdown end -->
                    <div class="subcribe-form fl-wrap">
                        <p>사용하시던 이메일 계정을 입력해주세요 </p>
                        <form id="subscribe" method="get" action="passwordFindSubmit.do" target="w">
                        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <input class="enteremail" name="EMAIL" id="subscribe-email" placeholder="이메일을 입력해주세요" spellcheck="false" type="text">
                            <button type="submit" id="subscribe-button" class="subscribe-button color-bg" onClick="document.getElementById('subscribe').submit();"> 보내기</button>
                            <label for="subscribe-email" class="subscribe-message"></label>
                        </form>
                    </div>
                </div>
                <!-- container end -->
                </div>
</section>