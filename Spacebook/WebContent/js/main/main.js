function logout(){
	$("#logout").click();
}
function CheckLogin(){
	var id =$("#login_id").val();
	var pwd = $("#login_pwd").val();
	if (id=='') {
		swal.getState();
		swal("실패", "아이디를 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	if ( pwd=='' ) {
		swal.getState();
		swal("실패", "비밀번호를 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	$.ajax({
		type:"GET",
		url:"/Spacebook/loginCheck.do",
		data:{
			id : id,
			pwd : pwd
		},
		dataType:"json",
		success:function(check){
			if(check.check == '-1'){
				swal.getState();
				swal("실패", "아이디가 존재 하지 않습니다", "warning", {
					buttons : "닫기"
				});
			}else if(check.check == '0'){
				swal.getState();
				swal("실패", "비밀번호가 틀렸습니다", "warning", {
					buttons : "닫기"
				});
			}else{
				document.getElementById('main-login-form').submit();
			}
		}
		,error:function(e){
			swal.getState();
			swal("실패", "AJAX 오류입니다", "warning", {
				buttons : "닫기"
			});
		}
	});
	
}
function Check(){
	var id =$("#regist_id").val();
	var pw1 = $("#regist_pwd_1").val();
	var pw2 = $("#regist_pwd_2").val();
	var lastCheck =$("#registCheck").text();
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
	if(lastCheck == "이미 사용 중인 아이디 입니다."){
		swal.getState();
		swal("실패", "아이디를 다시 확인해주세요.", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	swal("성공", "회원가입 성공하였습니다!", "success", {
		buttons : "닫기"
		}).then(function(){
		    document.getElementById('main-register-form2').submit();
	    });
}

$(document).ready(function() {
	$('#regist_id').blur(function(){
		var id = $("#regist_id").val();
		if(id ==''){
			 $("#registCheck").html("아이디를 입력해주세요")
			 $("#registCheck").css("color","red")
			 $("#regist_id").css("border","1px solid #CC3D3D")
			 return false;
		}else if(id.indexOf('@') == -1 || id.indexOf('.') == -1) {
			 $("#registCheck").html("이메일 형식으로 으로 입력해주세요")
			 $("#registCheck").css("color","red")
			 $("#regist_id").css("border","1px solid #CC3D3D")
			 return false;
		}
		$.ajax({
			type:"GET",
			url:"/Spacebook/registCheck.do",
			data:{
				id : id
			},
			dataType:"json",
			success:function(check){
				if(check.check == '1'){
					$("#registCheck").html("사용 가능한 아이디 입니다.")
					$("#registCheck").css("color","blue")
					$("#regist_id").css("border","1px solid #4374D9")
				}else if(check.check == '-1'){
					$("#registCheck").html("이미 사용 중인 아이디 입니다.")
					$("#registCheck").css("color","red")
					$("#regist_id").css("border","1px solid #CC3D3D")
				}
			}
			,error:function(e){
				swal.getState();
				swal("실패", "AJAX 오류입니다", "warning", {
					buttons : "닫기"
				});
			}
		});
	});
});
