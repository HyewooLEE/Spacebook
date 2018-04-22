<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- <script src="https://code.jquery.com/jquery-3.1.0.min.js"></script> -->
<script>
function sendInquire(i){
	$("#inquireForm").slideToggle();
	if(i==0){
		$("#sendInquire").attr('style','display:none');
	}
	if(i==1){
		$("#sendInquire").attr('style','display:show;background-color:#F29661;');
	}
} 

</script>