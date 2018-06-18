<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style1.css">

  
</head>

<body>

  
<h1 style="padding-top: 60px;">CSS Slider</h1>
<h2>Pure CSS Slider. No JS. Because it is possieble!</h2>
<div class="csslider infinity" id="slider1">
  <input type="radio" name="slides" id="slides_1"/>
  <input type="radio" name="slides" checked="checked" id="slides_2"/>
  <input type="radio" name="slides" id="slides_5"/>
  <input type="radio" name="slides" id="slides_6"/>
  <ul>
    <li>
      <h1>Say hello to CSS3</h1>
      <p>CSSlider is lightweight & easy to use slider. No JS - pure CSS.</p>
    </li>
    <li><img src="https://rawgithub.com/drygiel/csslider/master/examples/themes/stones.jpg"/>
    </li>
    <li>
      <div id="center"> <a class="nice-link" href="https://github.com/drygiel/csslider" data-text="More examples on github" target="_blank">More examples on github</a></div>
    </li>
    <li>
      <div id="center"><a class="play" id="dex-sign" href="http://drygiel.com" target="_blank"></a></div>
    </li>
  </ul>
  <div class="arrows">
    <label for="slides_1"></label>
    <label for="slides_2"></label>
    <label for="slides_5"></label>
    <label for="slides_6"></label>
    <label class="goto-first" for="slides_1"></label>
    <label class="goto-last" for="slides_6"></label>
  </div>
  <div class="navigation"> 
    <div>
      <label for="slides_1"></label>
      <label for="slides_2"></label>
      <label for="slides_5"></label>
      <label for="slides_6"></label>
    </div>
  </div>
</div>
  

</body>

</html>