<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/AdminSearchGG.css">
<style>
html { background: url("image/img.jpg") no-repeat center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
</style>
<body>

<div id="container">
   <div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
   
   <div id="b">
      <div id="bodyMain">
         <div id="boardName">정현이님의 좋은글 게시판 상세</div>
         <br/>
         <img src="image/sadad.png" id="content">
               <table border="1" bordercolor="white">
                  <col width="70" class="ab">
                  <col width="550">
                  <col width="300">
                  <col width="70">
                  <tr>
                     <th>글번호</th>
                     <th>글제목</th>
                     <th>작성일</th>
                     <th>글삭제</th>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res"><a href="#">정현이님이 쓴 눈물나게 좋은글</a></td>
                     <td class="div1" id="res">2018-05-28 pm21:55</td>
                     <td class="div1" id="res"><input type="button" value="삭제"></td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res"><a href="#">정현이님이 쓴 눈물나게 좋은글</a></td>
                     <td class="div1" id="res">2018-05-28 pm21:55</td>
                     <td class="div1" id="res"><input type="button" value="삭제"></td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res"><a href="#">정현이님이 쓴 눈물나게 좋은글</a></td>
                     <td class="div1" id="res">2018-05-28 pm21:55</td>
                     <td class="div1" id="res"><input type="button" value="삭제"></td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res"><a href="#">정현이님이 쓴 눈물나게 좋은글</a></td>
                     <td class="div1" id="res">2018-05-28 pm21:55</td>
                     <td class="div1" id="res"><input type="button" value="삭제"></td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res"><a href="#">정현이님이 쓴 눈물나게 좋은글</a></td>
                     <td class="div1" id="res">2018-05-28 pm21:55</td>
                     <td class="div1" id="res"><input type="button" value="삭제"></td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res"><a href="#">정현이님이 쓴 눈물나게 좋은글</a></td>
                     <td class="div1" id="res">2018-05-28 pm21:55</td>
                     <td class="div1" id="res"><input type="button" value="삭제"></td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res"><a href="#">정현이님이 쓴 눈물나게 좋은글</a></td>
                     <td class="div1" id="res">2018-05-28 pm21:55</td>
                     <td class="div1" id="res"><input type="button" value="삭제"></td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res"><a href="#">정현이님이 쓴 눈물나게 좋은글</a></td>
                     <td class="div1" id="res">2018-05-28 pm21:55</td>
                     <td class="div1" id="res"><input type="button" value="삭제"></td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res"><a href="#">정현이님이 쓴 눈물나게 좋은글</a></td>
                     <td class="div1" id="res">2018-05-28 pm21:55</td>
                     <td class="div1" id="res"><input type="button" value="삭제"></td>
                  </tr>
                  <tr>
                     <td class="div2" id="ans">1</td>
                     <td class="div1" id="res"><a href="#">정현이님이 쓴 눈물나게 좋은글</a></td>
                     <td class="div1" id="res">2018-05-28 pm21:55</td>
                     <td class="div1" id="res"><input type="button" value="삭제"></td>
                  </tr>
               </table>
               <br/>
               <div id="paging">페이징<br>자리~!</div>
      </div>
   </div>
   
   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
   </div>

</body>
</html>