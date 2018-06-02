<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>연습장~!</h1><br><br><br>
	
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function adjustHeight() {
		  var textEle = $('textarea');
		  textEle[0].style.height = 'auto';
		  var textEleHeight = textEle.prop('scrollHeight');
		  textEle.css('height', textEleHeight);
	};
			
	var textEle = $('textarea');
	
	textEle.on('keyup', function() {
	 	adjustHeight();
	});
</script>

<textarea onkeyup="adjustHeight();" style="resize: none;">
 동해물과 백두산이 
</textarea>
</body>
</html>