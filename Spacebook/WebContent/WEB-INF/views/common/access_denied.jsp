<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="parallax-section" data-scrollax-parent="true" id="sec1" style="height: 100%; padding:10%;">
    <div class="bg par-elem "  data-bg="${pageContext.request.contextPath}/resources/bootstrap/images/full_bg.jpg" data-scrollax="properties: { translateY: '30%' }"></div>
    <div class="overlay"></div>
    <div class="container">
    <div class="error-wrap">
            <c:if test="${login.mem_Auth eq 'ROLE_USER' }">
            <h2 style="font-size: 50px; padding-bottom: 20px;">
            <img src="${pageContext.request.contextPath}/resources/bootstrap/images/logo.png"alt="" style="display:block;margin:40px auto;">
            	접근 권한이 없습니다!
            </h2>
            <p style="padding-bottom: 70px;">관리자 페이지입니다. 관리자에게 문의해주세요!</p>
            <div class="clearfix"></div>
            <a href="main.do" class="btn  big-btn  color-bg flat-btn">메인으로 가기	</a>
            </c:if>
            <c:if test="${login.mem_Auth eq 'ROLE_GUEST' }">
            <h2 style="font-size: 50px; padding-bottom: 20px;">
            <img src="${pageContext.request.contextPath}/resources/bootstrap/images/logo.png"alt="" style="display:block;margin:40px auto;">
            	정보를 등록하면 이용이 가능합니다!
            </h2>
            <p style="padding-bottom: 70px;">오래 걸리지않습니다! 상세정보를 등록해주세요.</p>
            <div class="clearfix"></div>
            <a href="join.do" class="btn  big-btn  color-bg flat-btn">정보 등록하기</a>
            <p style="display:inline; margin:0 20px ;">Or</p>
            <a href="main.do" class="btn  big-btn  color-bg flat-btn">메인으로 가기	</a>
            </c:if>
        </div>
    </div>
</section>
