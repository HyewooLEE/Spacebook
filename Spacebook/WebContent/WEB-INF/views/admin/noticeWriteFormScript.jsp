<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js">
</script> <!-- include summernote css/js--> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script>
<script>
    $(document).ready(function() {
        $('.summernote').summernote({
            height: 300,
            lang: 'ko-KR'
        });
    });
</script>