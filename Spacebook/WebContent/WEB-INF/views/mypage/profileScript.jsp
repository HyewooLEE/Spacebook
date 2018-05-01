<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function kume1() {
		new daum.Postcode(
				{
					oncomplete : function(data) {

						// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = data.address; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 기본 주소가 도로명 타입일때 조합한다.
						if (data.addressType === 'R') {
							// 법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample3_postcode').value = data.zonecode; // 5자리
						// 새우편번호
						// 사용
						document.getElementById('sample3_address').value = fullAddr;

						// iframe을 넣은 element를 안보이게 한다.
						// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
						return false;

						// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
						document.body.scrollTop = currentScroll;
					},
					// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
					onresize : function(size) {
						element_wrap.style.height = size.height + 'px';
					},
					width : '100%',
					height : '100%'
				}).open();

	}
</script>
<script>
function Check4() {
	if ($("#name").val() == '') {
		swal.getState();
		swal("실패", "이름을 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	if ($("#phone").val() == '') {
		swal.getState();
		swal("실패", "전화번호를 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	if ($("#sample3_postcode").val() == '') {
		swal.getState();
		swal("실패", "주소를 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	if ($("#sample3_address").val() == '') {
		swal.getState();
		swal("실패", "주소를 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	if ($("#detail_address").val() == '') {
		swal.getState();
		swal("실패", "주소를 입력해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}
	var size = $("input:checkbox[name='mem_Favor']:checked").length;
	if (size == 0){
		swal.getState();
		swal("실패", "취향을 최소 하나 이상 선택해주세요", "warning", {
			buttons : "닫기"
		});
		return false;
	}

	document.getElementById('profile_Form').submit();
}
$(document).ready( function() {
	        $("input[type=file]").change(function () {
	            var fileInput = document.getElementById("file");
	            var files = fileInput.files;
	            var file;
	            for (var i = 0; i < files.length; i++) {
	                file = files[i];
	                var  ext = file.name.split(".").pop().toLowerCase();
					if($.inArray(ext, ["gif","png","jpg","jpeg"]) == -1) { 
						$('#photo_file_nm').val('');
						swal.getState();	
						swal("오류!","사진 형식의 파일만 업로드가 가능합니다.","warning", {buttons: "닫기"});
										return false;
					}else{
						readURL(this);
						
					}
	            }
	        });
	    });
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function(e) {
			$('#profileImg').attr('src', e.target.result);
		}
		reader.readAsDataURL(input.files[0]);
	}
}
</script>

<c:if test="${login.mem_Favor ne null}">
<c:forTokens var="favor" items="${login.mem_Favor}" delims=",">
	<script>
	$(document).ready(function() {
	$("#${favor}").attr("checked",true);
	}); 
	</script>
</c:forTokens>
</c:if>
<c:if test="${param.check =='1'}">
<script>
	$(document).ready(function() {
		swal.getState();
		swal("성공", "수정 성공했습니다", "success", {
			buttons : "닫기"
		});
	}); 
</script>
</c:if>

<style>
@media only screen and (max-width: 768px){
	.edit-profile-photo img{
	margin : 20px auto;
	}
}
@media only screen and (max-width: 1064px){
	.edit-profile-photo img{
	float: none;
	margin : 20px auto;
	}
}
</style>
