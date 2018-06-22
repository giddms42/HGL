<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
<br><br><br><br>
<input type="text" id="fileName" class="file_input_textbox" readonly="readonly">
 
<div class="file_input_div">
  <input type="button" value="버튼" class="file_input_button" />
  <input type="file" class="file_input_hidden" onchange="javascript: document.getElementById('fileName').value = this.value" />
</div>

자기전에한번더
</body>

</html>
