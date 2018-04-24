<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>등록완료 redirect</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script  type="text/javascript">
$(document).ready(function(){
 	var message = '${msg}';
	var returnUrl = '${url}';
	
	swal(message);
	document.location.href = returnUrl; 
});
</script>
</body>
</html>