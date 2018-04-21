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
<div id="wrapper" style="padding-top: 0px;">
<!-- Content-->   
<div class="content">
	<tiles:insertAttribute name="body" />
</div>
<!-- Content end -->
</div>
<!-- wrapper end -->
<!--=============== scripts  ===============-->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/scripts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap/js/plugins.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main/main.js"></script>
</body>
</html>