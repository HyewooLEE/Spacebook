<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- <script src="https://code.jquery.com/jquery-3.1.0.min.js"></script> -->
<script>
function sendInquire(i){
	$("#inquireDiv").slideToggle();
	if(i==0){
		$("#sendInquire").attr('style','display:none');
	}
	else if(i==1){
		$("#sendInquire").attr('style','display:show');
	}
} 

function submitInquire(){
	inq_title = document.getElementById("inq_title").value;
	inq_note = document.getElementById("inq_note").value;
	
	if(inq_title == "") {
		swal("제목을 입력해주세요.");
		return;
	}
	
	if(inq_note == "") {
		swal("답변내용을 작성해주세요.");
		return;
	}
	
	inquireForm.submit();
}

</script>