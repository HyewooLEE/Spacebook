<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${param.check =='writeSuccess'}">
<script>
	$(document).ready(function() {
		swal.getState();
		swal("성공", "쓰기 성공했습니다", "success", {
			buttons : "닫기"
		});
	}); 
</script>
</c:if>
<c:if test="${param.check =='updateSuccess'}">
<script>
	$(document).ready(function() {
		swal.getState();
		swal("성공", "수정 성공했습니다", "success", {
			buttons : "닫기"
		});
	}); 
</script>
</c:if>
