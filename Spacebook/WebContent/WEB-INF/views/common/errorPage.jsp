<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="parallax-section" data-scrollax-parent="true" id="sec1" style="height: 100%; padding:10%;">
    <div class="bg par-elem "  data-bg="${pageContext.request.contextPath}/resources/bootstrap/images/full_bg.jpg" data-scrollax="properties: { translateY: '30%' }"></div>
    <div class="overlay"></div>
    <div class="container">
    <div class="error-wrap">
            <c:if test="${securityexceptionmsg eq 'User is disabled' }">
            <h2 style="font-size: 50px; padding-bottom: 20px;">
            <img src="${pageContext.request.contextPath}/resources/bootstrap/images/logo.png"alt="" style="display:block;margin:40px auto;">
            	관리자의 의해 로그인이 제한되었습니다.
            </h2>
            <p style="padding-bottom: 70px;">관리자에게 문의해주세요</p>
            <div class="clearfix"></div>
            <a href="main.do" class="btn  big-btn  color-bg flat-btn">메인으로</a>
            </c:if>
            <c:if test="${securityexceptionmsg eq 'Maximum sessions of 1 for this principal exceeded' }">
            <h2 style="font-size: 50px; padding-bottom: 20px;">
            <img src="${pageContext.request.contextPath}/resources/bootstrap/images/logo.png"alt="" style="display:block;margin:40px auto;">
            	현재 로그인 상태입니다.
            </h2>
            <p style="padding-bottom: 70px;">관리자에게 문의해주세요</p>
            <div class="clearfix"></div>
            <a href="main.do" class="btn  big-btn  color-bg flat-btn">메인으로</a>
            </c:if>
            
            
        </div>
    </div>
</section>
