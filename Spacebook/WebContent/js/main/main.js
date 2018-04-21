function logout(){
	$("#logout").click();
}

function CheckLogin(){
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

	$.ajax({
		type:"GET",
		url:"${pageContext.request.contextPath}/changeAuth.do",
		data:{
			filter : filter,
			mem_Id : mem_Id
		},
		dataType:"json",
		success:function(check){
			if(check.check == '1'){
				swal.getState();
				swal("성공", "수정 완료 됬습니다", "success", {
					buttons : "닫기"
				});
			}else{
				swal.getState();
				swal("실패", "수정 실패했습니다", "warning", {
					buttons : "닫기"
				});
			}
		}
		,error:function(e){
			swal.getState();
			swal("실패", "수정 실패했습니다", "warning", {
				buttons : "닫기"
			});
		}
	});
	
	document.getElementById('main-login-form').submit();
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

