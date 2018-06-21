<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>행가래 회원가입</title>
  
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
 	<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.min.css'>
    <link rel="stylesheet" href="css/sign_up_style.css">
    <link rel="stylesheet" href="css/select_style.css">
    
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script src="js/MemberSignUp.js"></script>
	<style>
		a:link { color: #cccccc; text-decoration: none;}
		a:visited { color: #cccccc; text-decoration: none;}
		a:hover { color: #cccccc; text-decoration: none;}
	</style>

  
</head>
<body>
  <div id="container">
  <div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>

  <form id="regist" class="main-form first" action="MemberSignUp.do" method="post" class="userForm" novalidate>
	<div class="main-form__title">
	  <h1>Sign-up</h1>
	</div>
	<div class="main-form__body">
		<input type="text" name="memberId" title="n" required="required" class="main-form__input" placeholder="Username" />
	  		<a class="ajChk" id="unId" style="color: #F15F5F; font-size: 0.8em;"><b>사용 불가능한 아이디 입니다.</b></a>
			<a class="ajChk" id="useId" style="color: #3ee625; font-size: 0.8em;"><b>사용 가능한 아이디 입니다.</b></a>
		
	   <input type="password" name="memberPw" required="required" title="n" class="main-form__input" placeholder="Password" />
	  		<a class="ajChk" id="unPw" style="color: #F15F5F; font-size: 0.8em;"><b>사용 불가능한 비밀번호 입니다.</b></a>
	    	<a class="ajChk" id="usePw" style="color: #3ee625; font-size: 0.8em;"><b>사용 가능한 비밀번호 입니다.</b></a>
	    
	   <input type="password" name="userChkpw" required="required" class="main-form__input" placeholder="Repeat Password" />
	   
	   <input type="text" name="memberNickname" class="main-form__input" title="n" required="required" placeholder="Nick Name" />
	   		<a class="ajChk" id="unNick" style="color: #F15F5F; font-size: 0.8em;"><b>사용 불가능한 닉네임 입니다.</b></a>
	   		<a class="ajChk" id="useNick" style="color: #3ee625; font-size: 0.8em;"><b>사용 가능한 닉네임 입니다.</b></a>
	   <div>
	   		<input type="text" name="memberPhone1" class="main-form__input" placeholder="010" oninput="maxLengthCheck(this)" style="width: 110px; display: inline-block;" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')">
	   		<input type="text" name="memberPhone2" class="main-form__input" placeholder="번호입력" oninput="maxLengthCheck(this)" style="width: 170px; display: inline-block;" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"/>
	   		<input type="text" name="memberPhone3" class="main-form__input" placeholder="나머지번호입력" oninput="maxLengthCheck(this)" style="width: 170px; display: inline-block;" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')"/>
	   </div>	
	   <label>
	   <a id="main-form_sns" style="font-color:#cccccc;">
	   		<input class="checked"type="checkbox" name="memberSMS" onclick="snsChecked();" value="Y" id="main-form_checkboxstyle" style="vertical-align: top; width: 15px; 
	height: 15px;"> 문자알림을 받으시겠습니까?
	   </a>
	   </label>    
	   
	   <input type="email" name="memberEmail" title="n" required="required" class="main-form__input" placeholder="Email Address" size="50" maxlength="50" />
	  	 	<a class="ajChk" id="unEmail" style="color: #F15F5F; font-size: 0.8em;"><b>중복된 E-MAIL 입니다.</b></a>
	  		<a class="ajChk" id="useEmail" style="color: #3ee625; font-size: 0.8em;"><b>사용 가능한 E-MAIL 입니다.</b></a>
	  		<a class="ajChk" id="incorrectEmail"  style="color: #F15F5F; font-size: 0.8em;"><b>올바르지 않은 E-MAIL 형식 입니다.</b></a>
	</div>
    <div class="select-wrapper" style="margin-top: 20px;">
      <select name="memberDo" class="select-wrapper" onChange="showSub(this.options[this.selectedIndex].value);" required="required" style="width:150px;">
      	<option value="">도를 선택해주세요</option>
      	<option value="서울특별시">서울특별시</option>
      	<option value="경기도">경기도</option>
      	<option value="인천광역시">인천광역시</option>
      	<option value="강원도">강원도</option>
      	<option value="충청북도">충청북도</option>
      	<option value="충청남도">충청남도</option>
      	<option value="대전광역시">대전광역시</option>
      	<option value="세종특별자치시">세종특별자치시</option>
      	<option value="경상북도">경상북도</option>
      	<option value="대구광역시">대구광역시</option>
      	<option value="울산광역시">울산광역시</option>
      	<option value="경상남도">경상남도</option>
      	<option value="부산광역시">부산광역시</option>
      	<option value="전라북도">전라북도</option>
      	<option value="전라남도">전라남도</option>
      	<option value="광주광역시">광주광역시</option>
      	<option value="제주도">제주도</option>
      </select>
	      <select class="memberCity" name="" id="seoul" style="display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="강남구">강남구</option>
	      	<option value="강동구">강동구</option>
	      	<option value="강북구">강북구</option>
	      	<option value="강서구">강서구</option>
	      	<option value="관악구">관악구</option>
	      	<option value="광진구">광진구</option>
	      	<option value="구로구">구로구</option>
	      	<option value="금천구">금천구</option>
	      	<option value="노원구">노원구</option>
	      	<option value="도봉구">도봉구</option>
	      	<option value="동대문구">동대문구</option>
	      	<option value="동작구">동작구</option>
	      	<option value="마포구">마포구</option>
	      	<option value="서대문구">서대문구</option>
	      	<option value="서초구">서초구</option>
	      	<option value="성동구">성동구</option>
	      	<option value="성북구">성북구</option>
	      	<option value="송파구">송파구</option>
	      	<option value="양천구">양천구</option>
	      	<option value="영등포구">영등포구</option>
	      	<option value="용산구">용산구</option>
	      	<option value="은평구">은평구</option>
	      	<option value="종로구">종로구</option>
	      	<option value="중구">중구</option>
	      	<option value="중랑구">중랑구</option>
	      </select>
	      <select class="memberCity" name="" id="gyeonggi" style="display: none;" required="required">
	      	<option value="">시,군을 선택해주세요</option>
	      	<option value="가평군">가평군</option>
	      	<option value="고양시">고양시</option>
	      	<option value="과천시">과천시</option>
	      	<option value="광명시">광명시</option>
	      	<option value="광주시">광주시</option>
	      	<option value="구리시">구리시</option>
	      	<option value="군포시">김포시</option>
	      	<option value="남양주시">남양주시</option>
	      	<option value="동두천시">동두천시</option>
	      	<option value="부천시">부천시</option>
	      	<option value="성남시">성남시</option>
	      	<option value="수원시">수원시</option>
	      	<option value="시흥시">시흥시</option>
	      	<option value="안산시">안산시</option>
	      	<option value="안성시">안성시</option>
	      	<option value="안양시">안양시</option>
	      	<option value="양주시">양주시</option>
	      	<option value="양평군">양평군</option>
	      	<option value="여주시">여주시</option>
	      	<option value="연천군">연천군</option>
	      	<option value="오산시">오산시</option>
	      	<option value="용인시">용인시</option>
	      	<option value="의왕시">의왕시</option>
	      	<option value="의정부시">의정부시</option>
	      	<option value="이천시">이천시</option>
	      	<option value="파주시">파주시</option>
	      	<option value="평택시">평택시</option>
	      	<option value="포천시">포천시</option>
	      	<option value="하남시">하남시</option>
	      	<option value="화성시">화성시</option>
	      </select>
	      <select class="memberCity" name="" id="incheon" style="display: none;" required="required">
	        <option value="">구,시,군을 선택해주세요</option>
	      	<option value="강화군">강화군</option>
	      	<option value="계양구">계양구</option>
	      	<option value="남구">남구</option>
	      	<option value="남동구">남동구</option>
	      	<option value="동구">동구</option>
	      	<option value="부평구">부평구</option>
	      	<option value="서구">서구</option>
	      	<option value="연수구">연수구</option>
	      	<option value="옹진군">옹진군</option>
	      	<option value="중구">중구</option>
	      </select>
	      <select class="memberCity" name="" id="gangwon" style="display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="강릉시">강릉시</option>
	      	<option value="고성군">고성군</option>
	      	<option value="동해시">동해시</option>
	      	<option value="삼척시">삼척시</option>
	      	<option value="속초시">속초시</option>
	      	<option value="양구군">양구군</option>
	      	<option value="양양군">양양군</option>
	      	<option value="영월군">영월군</option>
	      	<option value="원주시">원주시</option>
	      	<option value="인제군">인제군</option>
	      	<option value="정선군">정선군</option>
	      	<option value="철원군">철원군</option>
	      	<option value="춘천시">춘천시</option>
	      	<option value="태백시">태백시</option>
	      	<option value="평창군">평창군</option>
	      	<option value="홍천군">홍천군</option>
	      	<option value="화천군">화천군</option>
	      	<option value="횡성군">횡성군</option>
	      </select>
	      <select class="memberCity" name="" id="chungbuk" style="height: 37px; display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="괴산군">괴산군</option>
	      	<option value="단양군">단양군</option>
	      	<option value="보은군">보은군</option>
	      	<option value="영동군">영동군</option>
	      	<option value="옥천군">옥천군</option>
	      	<option value="음성군">음성군</option>
	      	<option value="제천시">제천시</option>
	      	<option value="증평군">증평군</option>
	      	<option value="진천군">진천군</option>
	      	<option value="청주시">청주시</option>
	      	<option value="충주시">충주시</option>
	      </select>
			      <select class="memberCity" name=""  id="chungnam" style="display: none;" required="required">
			      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="계룡시">계룡시</option>
	      	<option value="공주시">공주시</option>
	      	<option value="금산군">금산군</option>
	      	<option value="논산시">논산시</option>
	      	<option value="당진시">당진시</option>
	      	<option value="보령시">보령시</option>
	      	<option value="부여군">부여군</option>
	      	<option value="서산시">서산시</option>
	      	<option value="서천군">서천군</option>
	      	<option value="아산시">아산시</option>
	      	<option value="예산군">예산군</option>
	      	<option value="천안시">천안시</option>
	      	<option value="청양군">청양군</option>
	      	<option value="태안군">태안군</option>
	      	<option value="홍성군">홍성군</option>
	      </select>
	      <select class="memberCity" name="" id="daejeon" style="display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="대덕구">대덕구</option>
	      	<option value="동구">동구</option>
	      	<option value="서구">서구</option>
	      	<option value="유성구">유성구</option>
	      	<option value="중구">중구</option>
	      </select>
	      <select class="memberCity" name="" id="gyeongbug" style="display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="경산시">경산시</option>
	      	<option value="경주시">경주시</option>
	      	<option value="고령군">고령군</option>
	      	<option value="구미시">구미시</option>
	      	<option value="군위군">군위군</option>
	      	<option value="김천시">김천시</option>
	      	<option value="문경시">문경시</option>
	      	<option value="봉화군">봉화군</option>
	      	<option value="상주시">상주시</option>
	      	<option value="성주군">성주군</option>
	      	<option value="안동시">안동시</option>
	      	<option value="영덕군">영덕군</option>
	      	<option value="영양군">영양군</option>
	      	<option value="영주시">영주시</option>
	      	<option value="영천시">영천시</option>
	      	<option value="예천군">예천군</option>
	      	<option value="울릉군">울릉군</option>
	      	<option value="울진군">울진군</option>
	      	<option value="의성군">의성군</option>
	      	<option value="청도군">청도군</option>
	      	<option value="청송군">청송군</option>
	      	<option value="칠곡군">칠곡군</option>
	      	<option value="포항시">포항시</option>
	      </select>
	      <select class="memberCity" name="" id="daegu" style="display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="남구">남구</option>
	      	<option value="달서구">달서구</option>
	      	<option value="달성군">달성군</option>
	      	<option value="동구">동구</option>
	      	<option value="북구">북구</option>
	      	<option value="서구">서구</option>
	      	<option value="수성구">수성구</option>
	      	<option value="중구">중구</option>
	      </select>
	      <select class="memberCity" name="" id="ulsan" style="display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="남구">남구</option>
	      	<option value="동구">동구</option>
	      	<option value="북구">북구</option>
	      	<option value="울주군">울주군</option>
	      	<option value="중구">중구</option>
	      </select>
	      <select class="memberCity" name="" id="gyeongnam" style="display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="거제시">거제시</option>
	      	<option value="거창군">거창군</option>
	      	<option value="고성군">고성군</option>
	      	<option value="김해시">김해시</option>
	      	<option value="남해군">남해군</option>
	      	<option value="밀양시">밀양시</option>
	      	<option value="사천시">사천시</option>
	      	<option value="산청군">상천군</option>
	      	<option value="양산시">양산시</option>
	      	<option value="의령군">의령군</option>
	      	<option value="진주시">진주시</option>
	      	<option value="창녕군">창녕군</option>
	      	<option value="창원시">창원시</option>
	      	<option value="통영시">통영시</option>
	      	<option value="하동군">하동군</option>
	      	<option value="함안군">함안군</option>
	      	<option value="함양군">함양군</option>
	      	<option value="합천군">합천군</option>
	      </select>
	      <select class="memberCity" name=""  id="busan" style="display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="강서구">강서구</option>
	      	<option value="금정구">금정구</option>
	      	<option value="기장군">기장군</option>
	      	<option value="남구">남구</option>
	      	<option value="동구">동구</option>
	      	<option value="동래구">동래구</option>
	      	<option value="부산진구">부산진구</option>
	      	<option value="북구">북구</option>
	      	<option value="사상구">사상구</option>
	      	<option value="사하구">사하구</option>
	      	<option value="서구">서구</option>
	      	<option value="수영구">수영구</option>
	      	<option value="연제구">연제구</option>
	      	<option value="영도구">영도구</option>
	      	<option value="중구">중구</option>
	      	<option value="해운대구">해운대구</option>
	      </select>
	      <select class="memberCity" name="" id="jeonbug"  style="display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="고창군">고창군</option>
	      	<option value="군산시">군산시</option>
	      	<option value="김제시">김제시</option>
	      	<option value="남원시">남원시</option>
	      	<option value="무주군">무주군</option>
	      	<option value="부안군">부안군</option>
	      	<option value="순창군">순창군</option>
	      	<option value="완주군">완주군</option>
	      	<option value="익산시">익산시</option>
	      	<option value="임실군">임실군</option>
	      	<option value="장수군">장수군</option>
	      	<option value="전주시">전주시</option>
	      	<option value="정읍시">정읍시</option>
	      	<option value="진안군">진안군</option>
	      </select>
	      <select class="memberCity" name="" id="jeonnam" style="display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="강진군">강진군</option>
	      	<option value="고흥군">고흥군</option>
	      	<option value="곡성군">곡성군</option>
	      	<option value="광양시">광양시</option>
	      	<option value="구례군">구례군</option>
	      	<option value="나주시">나주시</option>
	      	<option value="담양군">담양군</option>
	      	<option value="목포시">목포시</option>
	      	<option value="무안군">무안군</option>
	      	<option value="보성군">보성군</option>
	      	<option value="순천시">순천시</option>
	      	<option value="신안군">신안군</option>
	      	<option value="여수시">여수시</option>
	      	<option value="영광군">영광군</option>
	      	<option value="영암군">영암군</option>
	      	<option value="완도군">완도군</option>
	      	<option value="장성군">장성군</option>
	      	<option value="장흥군">장흥군</option>
	      	<option value="진도군">진도군</option>
	      	<option value="함평군">함평군</option>
	      	<option value="해남군">해남군</option>
	      	<option value="화순군">화순군</option>
	      </select>
	      <select class="memberCity" name="" id="gwangju"  style="display: none;" required="required">
	      	<option value="">구,시,군을 선택해주세요</option>
	      	<option value="광산군">광산군</option>
	      	<option value="남구">남구</option>
	      	<option value="동구">동구</option>
	      	<option value="북구">북구</option>
	      	<option value="서구">서구</option>
	      </select>
	      <select class="memberCity" name="" id="jeju"style="display: none;" required>
	      	<option class="memberCity" value="">구,시,군을 선택해주세요</option>
	      	<option value="서귀포시">서귀포시</option>
	      	<option value="제주시">제주시</option>
	      </select>
		      <input class="main-form__input" type="text" name="memberAddr" placeholder="상세주소를 입력해주세요." maxlength="60" style="margin-top: -10px;">
	 	  </div>
	 	  <div class="main-form__body">
	 	  	<button type="button" class="btn" onclick="history.back();">Cancel</button>
   		  	<button class="btn">Join</button>
	 	  </div>
	</form>
	<div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>
  
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</body>
</html>