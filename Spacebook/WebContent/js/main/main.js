function logout(){
	$("#logout").click();
}

function Check(){
	var id =$("#regist_id").val();
	var pw1 = $("#regist_pwd_1").val();
	var pw2 = $("#regist_pwd_2").val();
	if (id=='') {
		swal.getState();
		swal("실패", "아이디를 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	if ( pw1=='' ) {
		swal.getState();
		swal("실패", "비밀번호를 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	if (pw2=='') {
		swal.getState();
		swal("실패", "비밀번호 확인을 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	if (pw1 != pw2) {
		swal.getState();
		swal("실패", "패스워드가 같지 않습니다.", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	
	
	document.getElementById('main-register-form2').submit();
}

