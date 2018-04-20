<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<!--=============== basic  ===============-->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="robots" content="index, follow" />
<!--=============== css  ===============-->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/reset.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/plugins.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/style.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/color.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/custom.css">
<!--=============== favicons ===============-->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/bootstrap/images/favicon.ico">


<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<tiles:insertAttribute name="header" />
<div id="wrapper">
<!-- Content-->   
<div class="content">
	<tiles:insertAttribute name="body" />
</div>
<!-- Content end -->
</div>
<!-- wrapper end -->
	<tiles:insertAttribute name="footer" />
<!--=============== scripts  ===============-->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/scripts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/plugins.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main/main.js"></script>
<tiles:insertAttribute name="script" />
<c:if test="${param.fail ne null  }">
<script>
swal.getState();
swal("실패", "로그인 후 이용해주세요.", "warning", {
	buttons : "닫기"
}).then(function(){
	$(".main-register-wrap").css("display","block");
});
</script>
</c:if>
</body>
</html>