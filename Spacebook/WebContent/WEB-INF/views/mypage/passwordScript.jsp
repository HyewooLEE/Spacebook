<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
function CheckPwd(){
	 var pwd1 = $("#pwd_chg1").val();
	 var pwd2 = $("#pwd_chg2").val();
	 var pwd3 = $("#pwd_Now").val();
	 
	 if (pwd1=='') {
			swal.getState();
			swal("실패", "바꿀 비밀번호를 입력해주세요", "warning", {
				buttons : "닫기"
			});
			return false;
	}
	 if (pwd2=='') {
			swal.getState();
			swal("실패", "비밀번호 확인을 입력해주세요", "warning", {
				buttons : "닫기"
			});
			return false;
	}
	 if (pwd3=='') {
			swal.getState();
			swal("실패", "현재 비밀버호를 입력해주세요", "warning", {
				buttons : "닫기"
			});
			return false;
	}
	 if(pwd1 != pwd2){
		 swal.getState();
		 swal("실패", "비밀번호가 일치 하지 않습니다.", "warning", {
		 	buttons : "닫기"
		 });
	 }
	 document.getElementById('pwdChange').submit();
	 
}

</script>
<c:if test="${param.check =='-1'}">
<script>
swal.getState();
swal("실패", "비밀번호가 틀립니다", "warning", {
	buttons : "닫기"
});
</script>
</c:if>
<c:if test="${param.check =='1'}">
<script>
swal.getState();
swal("성공", "비밀번호가 수정됬습니다", "success", {
	buttons : "닫기"
});
</script>
</c:if>
<c:if test="${param.check =='0'}">
<script>
swal.getState();
swal("실패", "수정 실패했습니다", "warning", {
	buttons : "닫기"
});
</script>
</c:if>