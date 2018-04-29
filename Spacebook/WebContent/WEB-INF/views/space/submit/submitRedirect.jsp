<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>등록완료 redirect</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script  type="text/javascript">
$(document).ready(function(){
	swal("성공","공간등록이 완료되었습니다!","success",{
		  buttons: "확인",
	}).then(function(){
		document.location.href = 'main.do';
    });
	
	return false;

});
</script>
</body>
</html>