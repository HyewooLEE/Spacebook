<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<script>
	$(document).ready(function() {
		$(".overlay").click(function() {
			var check = $(this).attr("id");
			if ($(this).css('opacity') == '0.1') {
				$(this).css('opacity', '0.8');
				$(this).html('<i class="fa fa-check fa-3x"  style="color:white; margin-top:50px"></i>')
				
			} else {
				$(this).css('opacity', '0.1');
				$(this).html('')
			}
			 $('input:checkbox[name="favor"]').each(function() {
			     if(this.value ==check){ //값 비교
			    	 if($(this).is(":checked")){
			            this.checked = false; 
			    	 }else{
			            this.checked = true; 
			    	 }
			      }
			 });
		});
	});
</script>