/* 
   function idChkConfirm() { // id중복체크를를 우선적으로 하게 하는 기능.
      var chk = document.getElementsByName("userId")[0].title;
      if (chk == "n") {
         alert("아이디 중복체크를 해주세요");
         document.getElementsByName("userId")[0].focus();
      }
   }*/


	function snsChecked() { //문자알림서비스 확인창
		var retVal = confirm("문자알림을 받으시겠습니까?\n매달 1일, 부모님께 안부를 물어보도록 유도하는 알림문자가 발송되며,\n캘린더에 일정 추가 시 일정 알림을 체크하면 \n해당 일정 날짜의 하루 전에 알림 문자가 발송됩니다.");

		if (retVal == true) {
			$("input[class=checkbox]").prop("checked", true);
		} else {
			$("input[class=checkbox]").prop("checked", false);
		}
	}

	function showSub(obj){ //주소 셀렉트박스
 	   addr = document.forms.regist;
		switch(obj){
			case "서울특별시" :
				addr.seoul.style.display = "";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "경기도" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "인천광역시" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "강원도" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "충청북도" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "충청남도" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "대전광역시" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "세종특별자치시" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;	
			case "경상북도" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "대구광역시" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "울산광역시" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "경상남도" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "부산광역시" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "전라북도" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "전라남도" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "none";
				break;
			case "광주광역시" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "";
				addr.jeju.style.display = "none";
				break;
			case "제주도" :
				addr.seoul.style.display = "none";
				addr.gyeonggi.style.display = "none";
				addr.incheon.style.display = "none";
				addr.gangwon.style.display = "none";
				addr.chungbuk.style.display = "none";
				addr.chungnam.style.display = "none";
				addr.daejeon.style.display = "none";
				addr.gyeongbug.style.display = "none";
				addr.daegu.style.display = "none";
				addr.ulsan.style.display = "none";
				addr.gyeongnam.style.display = "none";
				addr.busan.style.display = "none";
				addr.jeonbug.style.display = "none";
				addr.jeonnam.style.display = "none";
				addr.gwangju.style.display = "none";
				addr.jeju.style.display = "";
				break;
		}
   }
	$(function(){
		      $("input[name=userId").on("change",function() {
		            var idVal = $("input[name=userId]").val();
		            if(idVal==null || idVal==""){
		            	 $("#useId").css("display", "none");
	                     $("#unId").css("display", "none");   	
		            }else{
		            	  $.ajax({
				               type:"post",
				               url : "IDChk.do",
				               data:"id="+idVal,
				               success : function(res) {
				                  var r = $.trim(res);
				                  if (r == "t") {  
				                     $("#useId").css("display", "inline");
				                     $("#unId").css("display", "none");
				                  }else{
				                	 $("#unId").css("display", "inline");
				                	 $("#useId").css("display", "none");
				                  }
				               }
				            });
		            }
		         })
		         
		          $("input[name=userNick").on("change",function() {
		            var nickVal = $("input[name=userNick]").val();
		            if(nickVal==null || nickVal==""){
		            	 $("#useNick").css("display", "none");
	                     $("#unNick").css("display", "none");   	
		            }else{
		            $.ajax({
		               type:"post",
		               url : "nickNameChk.do",
		               data:"nickName="+nickVal,
		               success : function(res) {
		                  var r = $.trim(res);
		                  if (r == "t") {  
		                     $("#useNick").css("display", "inline");
		                     $("#unNick").css("display", "none");
		                  }else{
		                	 $("#unNick").css("display", "inline");
		                	 $("#useNick").css("display", "none");
		                  }
		               }
		            });
		            }
		         })
		         
		          $("input[name=userEmail").on("change",function() {
		            var emailVal = $("input[name=userEmail]").val();
		            if(emailVal==null || emailVal==""){
		            	 $("#useEmail").css("display", "none");
	                     $("#unEmail").css("display", "none");   	
		            }else{
		            $.ajax({
		               type:"post",
		               url : "emailChk.do",
		               data:"email="+emailVal,
		               success : function(res) {
		                  var r = $.trim(res);
		                  if (r == "t") {  
		                     $("#useEmail").css("display", "inline");
		                     $("#unEmail").css("display", "none");
		                  }else{
		                	 $("#unEmail").css("display", "inline");
		                	 $("#useEmail").css("display", "none");
		                  }
		               }
		            });
		            }
		         })
		         
		          $("input[name=userPw").on("change",function() {
		            var pwVal = $("input[name=userPw]").val();
		            if(pwVal==null || pwVal==""){
		            	 $("#usePw").css("display", "none");
	                     $("#unPw").css("display", "none");   	
		            }else{
		            $.ajax({
		               type:"post",
		               url : "pwChk.do",
		               data:"pw="+pwVal,
		               success : function(res) {
		                  var r = $.trim(res);
		                  if (r == "t") {  
		                     $("#usePw").css("display", "inline");
		                     $("#unPw").css("display", "none");
		                  }else{
		                	 $("#unPw").css("display", "inline");
		                	 $("#usePw").css("display", "none");
		                  }
		               }
		            });
		            }
		         })
		         
		          $("input[name=userChkpw").on("change",function() {
		        	  var pwVal = $("input[name=userPw]").val();
		        	  var pwValChk = $("input[name=userChkpw]").val();
		        	  if(pwValChk==null || pwValChk==""){
			            	 $("#useOnemore").css("display", "none");
		                     $("#unOnemore").css("display", "none");   	
			            }else{
			            	if(pwVal == pwValChk){
			            		$("#useOnemore").css("display", "inline");
			            		$("#unOnemore").css("display", "none");
			            	}else{
			            		$("#unOnemore").css("display", "inline");
			            		$("#useOnemore").css("display", "none");  
			            	}
			            }
		         })
		      
	
	
	
	
	
	})