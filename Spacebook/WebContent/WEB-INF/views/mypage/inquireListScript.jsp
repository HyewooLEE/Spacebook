<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>
function deleteInquire(inq_no){
	var params = "inq_no="+inq_no;
	
 	$.ajax({
		type:"GET",
		url:"/Spacebook/deleteInquire.do",
		data:params,
		dataType:"json",
		success:function(result){
			swal("삭제 완료되었습니다.");
			$('#inquireTbody').html('');
			 $('#inquireTbody').append('append 테스트');
			 for (var i=0; i<result.data.length; i++){
				 $('#inquireTbody').append('append 테스트2');
				 $('#inquireTbody').append(
						 '<tbody id="inquireTbody">'+
					/* '<c:forEach var="inquireList" items="'+result.data[i]+'">'+ */
					/* '<c:if test="'+result.data[i].mem_no==result.data[i].login.mem_No+' ">'+ */
						'<tr style ="text-align:center;cursor:pointer;" onClick =" location.href=\'inquireContent.do?inq_no='+result.data[i].inq_no+'&pageNum='+result.data[i].pageNum+' \' ">'+
					        '<td width="30%" >'+result.data[i].spaceDTO.space_name+'</td>'+
					        '<td width="40%"><a href="inquireContent.do?inq_no='+result.data[i].inq_no+'&pageNum='+result.data[i].pageNum+'">'+result.data[i].inq_title+' </a></td>'+
					        '<td width="20%">'+result.data[i].inq_writeDate+' </td>'+
					      	'<td width="10%" onclick="event.cancelBubble = true;"><button class="btn btn-danger btn-xs" onClick="return deleteInquire('+result.data[i].inq_no+');"><span class="glyphicon glyphicon-trash"></span></button></td>'+
					    '</tr>'+
					/* '</c:if>'+ */
					/* '</c:forEach>'+ */
						'</tbody>'
					
				);
			}
			
		}
		,error:function(e){
			alert(params);
			alert(result.data[i].inq_no);
			swal.getState();
			swal("실패", "삭제 실패했습니다", "warning", {
				buttons : "닫기"
			});
		}
	});
}
</script>
