<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>
function deleteInquire(inq_no){
	var params = "inq_no="+inq_no;
	var countVal = 0;
 	$.ajax({
		type:"GET",
		url:"/Spacebook/deleteInquireHost.do",
		data:params,
		dataType:"json",
		success:function(result){
			swal("삭제 완료되었습니다.");
			$('#inquireTbody').html('');
			 for (var i=0; i<result.data.length; i++){
					if(result.data[i].inq_step==0){
					 	$('#inquireTbody').append(
							 '<tr style = "cursor:pointer;" onClick =" location.href=\'inquireContent.do?inq_no='+result.data[i].inq_no+'&pageNum='+result.page+' \' ">'+
						        	'<td width="25%" style="text-align:center;">'+result.data[i].spaceDTO.space_name+'</td>'+
						        	'<td width="10%" style="text-align:center;">'+result.data[i].memberVO.mem_Name+'</td>'+
						        	'<td width="35%"><a href="inquireContentHost.do?inq_no='+result.data[i].inq_no+'&pageNum='+result.page+'">'+result.data[i].inq_title+' </a></td>'+
						        	'<td width="20%" style="text-align:center;">'+result.data[i].inq_writeDate+'</td>'+
						        	'<td width="10%" style="text-align:center;" onclick="event.cancelBubble = true;"><button class="btn btn-danger btn-xs" onClick="return deleteInquire('+result.data[i].inq_no+');"><span class="glyphicon glyphicon-trash"></span></button></td>'+
						      '</tr>'
						 );
					}else if(result.data[i].inq_step>0){
					 	$('#inquireTbody').append(
					 			'<tr style = "cursor:pointer;" onClick =" location.href=\'inquireContent.do?inq_no='+result.data[i].inq_no+'&pageNum='+result.page+' \' ">'+
						        	'<td width="25%" style="text-align:center;">'+result.data[i].spaceDTO.space_name+'</td>'+
						        	'<td width="10%" style="text-align:center;">관리자</td>'+
						        	'<td width="35%"><a href="inquireContentHost.do?inq_no='+result.data[i].inq_no+'&pageNum='+result.page+'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="color:red;">ㄴ[답변]</font>'+result.data[i].inq_title+'</a></td>'+
						        	'<td width="20%" style="text-align:center;">'+result.data[i].inq_writeDate+'</td>'+
						        	'<td width="10%" style="text-align:center;" onclick="event.cancelBubble = true;"><button class="btn btn-danger btn-xs" onClick="return deleteInquire('+result.data[i].inq_no+');"><span class="glyphicon glyphicon-trash"></span></button></td>'+
						      '</tr>'     
							 );
					}
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

function showInquire(){
	$('.showModal').fadeIn();
}

function closeInquire(){
	$('.showModal').fadeOut();
}
</script>
