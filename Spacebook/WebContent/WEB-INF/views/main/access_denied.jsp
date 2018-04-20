<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="parallax-section" data-scrollax-parent="true" id="sec1" style="height: 100%; padding:10%;">
    <div class="bg par-elem "  data-bg="${pageContext.request.contextPath}/resources/bootstrap/images/full_bg.jpg" data-scrollax="properties: { translateY: '30%' }"></div>
    <div class="overlay"></div>
    <div class="container">
        <div class="error-wrap">
            <h2 style="font-size: 50px; padding-bottom: 20px;">접근 권한이 없습니다</h2>
            <p style="padding-bottom: 70px;">로그인을 하시거나 상세정보를 등록해주세요!</p>
            <div class="clearfix"></div>
            <a href="#" class="btn  big-btn  color-bg flat-btn" onClick="denyClick()">로그인 하기</a>
            <p style="display:inline; margin:0 20px ;">Or</p>
            <a href="javascript:window.history.go(-1);" class="btn  big-btn  color-bg flat-btn">뒤로가기</a>
        </div>
    </div>
</section>
<script>
function denyClick(){
$(".main-register-wrap").css("display","block");
}
</script>