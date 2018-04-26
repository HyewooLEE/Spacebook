<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>
function deleteSpace(space_no){
	var params = "space_no="+space_no;
	
 	$.ajax({
		type:"GET",
		url:"/Spacebook/deleteSpace.do",
		data:params,
		dataType:"json",
		success:function(result){
			swal("삭제 완료되었습니다.");
			$('#spaceTbody').html('');
			 for (var i=0; i<result.data.length; i++){
				 	$('#spaceTbody').append(
						 '<tr style = "cursor:pointer;" onClick = " location.href=\'spaceView.do?space_no='+result.data[i].space_no+' \' ">'+
					        '<td width="80%" style="text-align:center;">'+result.data[i].space_name+'</td>'+
					        '<td width="10%" onclick="event.cancelBubble = true;" style="text-align:center;"><button class="btn btn-primary btn-xs" onClick="return updateSpace('+result.data[i].space_no +');" ><span class="glyphicon glyphicon-pencil"></span></button></td>'+
					        '<td width="10%" style="text-align:center;" onclick="event.cancelBubble = true;"><button class="btn btn-danger btn-xs" onClick="return deleteSpace('+result.data[i].space_no +');"><span class="glyphicon glyphicon-trash"></span></button></td>'+
					      '</tr>'    
					 );
			 }
		}
		
		,error:function(e){
			alert(params);
			swal.getState();
			swal("실패", "삭제 실패했습니다", "warning", {
				buttons : "닫기"
			});
		}
	});
}


function updateSpace(space_no){
	//$('.showModal').show();
	location.href="updateSpaceForm.do?space_no="+space_no;
	
	
}

</script>
