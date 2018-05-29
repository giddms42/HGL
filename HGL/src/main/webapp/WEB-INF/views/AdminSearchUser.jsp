<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/AdminSearchUser.css">
<style>
html { background: url("image/img.jpg") no-repeat center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

function AdminUserInfo(){
   var popupX = (window.screen.width / 2) - (440 / 2);
   // 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

   var popupY= (window.screen.height /2) - (220 / 2);
   // 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
   window.open("AdminUserInfo.do","", 'width=440, height=220, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
   }

</script>
<body>
   <div id="container">
   <div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
   
   <div id="b">
      <div id="bodyMain">
         <div id="boardName">전체회원목록</div>
         <br/>
         <img src="image/sadad.png" id="content">
               <table border="1" bordercolor="white">
                  <col width="50" class="ab">
                  <col width="150">
                  <col width="150">
                  <col width="300">
                  <col width="70">
                  <tr onclick="javascript:opener.location.href='Main.do';self.close();">
                     <th>번호</th>
                     <th>아이디</th>
                     <th>닉네임</th>
                     <th>이메일</th>
                     <th>제재횟수</th>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res" onclick="AdminUserInfo();">chlwjdgus</td>
                     <td class="div1" id="res">정현이</td>
                     <td class="div1" id="res">chljh90@gmail.com</td>
                     <td class="div1" id="res">0</td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res" onclick="AdminUserInfo();">chlwjdgus</td>
                     <td class="div1" id="res">정현이</td>
                     <td class="div1" id="res">chljh90@gmail.com</td>
                     <td class="div1" id="res">0</td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res" onclick="AdminUserInfo();">chlwjdgus</td>
                     <td class="div1" id="res">정현이</td>
                     <td class="div1" id="res">chljh90@gmail.com</td>
                     <td class="div1" id="res">0</td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res" onclick="AdminUserInfo();">chlwjdgus</td>
                     <td class="div1" id="res">정현이</td>
                     <td class="div1" id="res">chljh90@gmail.com</td>
                     <td class="div1" id="res">0</td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res" onclick="AdminUserInfo();">chlwjdgus</td>
                     <td class="div1" id="res">정현이</td>
                     <td class="div1" id="res">chljh90@gmail.com</td>
                     <td class="div1" id="res">0</td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res" onclick="AdminUserInfo();">chlwjdgus</td>
                     <td class="div1" id="res">정현이</td>
                     <td class="div1" id="res">chljh90@gmail.com</td>
                     <td class="div1" id="res">0</td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res" onclick="AdminUserInfo();">chlwjdgus</td>
                     <td class="div1" id="res">정현이</td>
                     <td class="div1" id="res">chljh90@gmail.com</td>
                     <td class="div1" id="res">0</td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res" onclick="AdminUserInfo();">chlwjdgus</td>
                     <td class="div1" id="res">정현이</td>
                     <td class="div1" id="res">chljh90@gmail.com</td>
                     <td class="div1" id="res">0</td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res" onclick="AdminUserInfo();">chlwjdgus</td>
                     <td class="div1" id="res">정현이</td>
                     <td class="div1" id="res">chljh90@gmail.com</td>
                     <td class="div1" id="res">0</td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res" onclick="AdminUserInfo();">chlwjdgus</td>
                     <td class="div1" id="res">정현이</td>
                     <td class="div1" id="res">chljh90@gmail.com</td>
                     <td class="div1" id="res">0</td>
                  </tr>
               </table>
               <br/>
               <div id="paging">페이징<br>자리~!</div>
               <br/>
               <div id="paging">페이징<br>자리~!</div>
      </div>
   </div>
   
   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
   </div>
>>>>>>> branch 'jh' of https://github.com/giddms42/HGL.git

</body>
</html>