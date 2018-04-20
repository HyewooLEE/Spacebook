function Check6(){
	if ($("#title").val()=='' ) {
		swal.getState();
		swal("실패", "제목을 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	if ($("#content").val()=='') {
		swal.getState();
		swal("실패", "내용을 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	document.getElementById('noticeForm').submit();
}

