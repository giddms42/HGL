
	function snsChecked() { //문자알림서비스 확인창
		var retVal = confirm("문자알림을 받으시겠습니까?\n매달 1일, 부모님께 안부를 물어보도록 유도하는 알림문자가 발송되며,\n캘린더에 일정 추가 시 일정 알림을 체크하면 \n해당 일정 날짜의 하루 전에 알림 문자가 발송됩니다.");

		if (retVal == true) {
			$("input[class=checkbox]").prop("checked", true);
		} else {
			$("input[class=checkbox]").prop("checked", false);
		}
	}

	function showSub(obj){ //주소 셀렉트박스
		var seoul = document.getElementById("seoul");
		var gyeonggi = document.getElementById("gyeonggi");
		var incheon = document.getElementById("incheon");
		var gangwon = document.getElementById("gangwon");
		var chungbuk = document.getElementById("chungbuk");
		var chungnam = document.getElementById("chungnam");
		var daejeon = document.getElementById("daejeon");
		var gyeongbug = document.getElementById("gyeongbug");
		var daegu = document.getElementById("daegu");
		var ulsan = document.getElementById("ulsan");
		var gyeongnam = document.getElementById("gyeongnam");
		var busan = document.getElementById("busan");
		var jeonbug = document.getElementById("jeonbug");
		var jeonnam = document.getElementById("jeonnam");
		var gwangju = document.getElementById("gwangju");
		var jeju = document.getElementById("jeju");
		
		switch(obj){
			case "서울특별시" :
				seoul.style.display = "";
				seoul.setAttribute( 'name', 'memberCity' );
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "경기도" :
				seoul.style.display = "none";
				gyeonggi.style.display = "";
				gyeonggi.setAttribute( 'name', 'memberCity' );
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "인천광역시" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "";
				incheon.setAttribute( 'name', 'memberCity' );
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "강원도" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "";
				gangwon.setAttribute( 'name', 'memberCity' );
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "충청북도" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "";
				chungbuk.setAttribute( 'name', 'memberCity' );
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "충청남도" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "";
				chungnam.setAttribute( 'name', 'memberCity' );
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "대전광역시" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "";
				daejeon.setAttribute( 'name', 'memberCity' );
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "세종특별자치시" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;	
			case "경상북도" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "";
				gyeongbug.setAttribute( 'name', 'memberCity' );
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "대구광역시" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "";
				daegu.setAttribute( 'name', 'memberCity' );
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "울산광역시" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "";
				ulsan.setAttribute( 'name', 'memberCity' );
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "경상남도" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "";
				gyeongnam.setAttribute( 'name', 'memberCity' );
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "부산광역시" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "";
				busan.setAttribute( 'name', 'memberCity' );
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "전라북도" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "";
				jeonbug.setAttribute( 'name', 'memberCity' );
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "전라남도" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "";
				jeonnam.setAttribute( 'name', 'memberCity' );
				gwangju.style.display = "none";
				jeju.style.display = "none";
				break;
			case "광주광역시" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "";
				gwangju.setAttribute( 'name', 'memberCity' );
				jeju.style.display = "none";
				break;
			case "제주도" :
				seoul.style.display = "none";
				gyeonggi.style.display = "none";
				incheon.style.display = "none";
				gangwon.style.display = "none";
				chungbuk.style.display = "none";
				chungnam.style.display = "none";
				daejeon.style.display = "none";
				gyeongbug.style.display = "none";
				daegu.style.display = "none";
				ulsan.style.display = "none";
				gyeongnam.style.display = "none";
				busan.style.display = "none";
				jeonbug.style.display = "none";
				jeonnam.style.display = "none";
				gwangju.style.display = "none";
				jeju.style.display = "";
				jeju.setAttribute( 'name', 'memberCity' );
				break;
		}
   }
	
	$(function(){
		      $("input[name=memberId").on("change",function() {
		            var idVal = $("input[name=memberId]").val();
		            if(idVal==null || idVal==""){
		            	 $("input[name=memberId]").attr('title','n');
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
				                     $("input[name=memberId]").attr('title','y');
				                  }else{
				                	 $("#unId").css("display", "inline");
				                	 $("#useId").css("display", "none");
				                	 $("input[name=memberId]").attr('title','n');
				                  }
				               }
				            });
		            }
		         })
		         
		          $("input[name=memberNickname").on("change",function() {
		            var nickVal = $("input[name=memberNickname]").val();
		            if(nickVal==null || nickVal==""){
		            	 $("#useNick").css("display", "none");
	                     $("#unNick").css("display", "none");   	
	                     $("input[name=memberNickname]").attr('title','n');
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
		                     $("input[name=memberNickname]").attr('title','y');

		                  }else{
		                	 $("#unNick").css("display", "inline");
		                	 $("#useNick").css("display", "none");
		                	 $("input[name=memberNickname]").attr('title','n');
		                  }
		               }
		            });
		            }
		         })
		         
		          $("input[name=memberEmail").on("change",function() {
		        	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		            var emailVal = $("input[name=memberEmail]").val();
		            if(emailVal==null || emailVal==""){
		            	 $("#useEmail").css("display", "none");
	                     $("#unEmail").css("display", "none");
	                     $("input[name=memberEmail]").attr('title','n');
		            }else if(emailVal == ""||!re.test(emailVal)){
		            	 $("#useEmail").css("display", "none");
		            	 $("#unEmail").css("display", "none");
		        		 $("#incorrectEmail").css("display","inline");
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
		                     $("#incorrectEmail").css("display","none");
		                     $("input[name=memberEmail]").attr('title','y');
		                  }else{
		                	 $("#unEmail").css("display", "inline");
		                	 $("#useEmail").css("display", "none");
		                	 $("#incorrectEmail").css("display","none");
		                	 $("input[name=memberEmail]").attr('title','n');
		                  }
		               }
		            });
		            }
		         })
		         
		          $("input[name=memberPw").on("change",function() {
		            var pwVal = $("input[name=memberPw]").val();
		            if(pwVal==null || pwVal==""){
		            	 $("#usePw").css("display", "none");
	                     $("#unPw").css("display", "none");
	                     $("input[name=memberPw]").attr('title','n');
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
		                     $("input[name=memberPw]").attr('title','y');
		                  }else{
		                	 $("#unPw").css("display", "inline");
		                	 $("#usePw").css("display", "none");
		                	 $("input[name=memberPw]").attr('title','n');
		                  }
		               }
		            });
		            }
		         })
		         
		         $("#regist").submit(function(){
		        	 
		             if ($("input[name=memberPw]").val() != $("input[name=userChkpw]").val()) {
		                alert("비밀번호가  일치하지 않습니다. 다시 확인해주세요");
		                document.getElementsByName("memberPw")[0].focus();
		                return false;
		             }else if($("input[name=memberId]").attr("title")=="n"){
	            		 alert("아이디를 다시 확인해주세요")
	            		 document.getElementsByName("memberId")[0].focus();
	            		 return false;
		             }else if($("input[name=memberNickname]").attr("title")=="n"){
		            	 alert("닉네임을 다시 확인해주세요")
		            	 document.getElementsByName("memberNickname")[0].focus();
		            	 return false;
		             }else if($("input[name=memberPw]").val() == ""){
		            	 alert("비밀번호를 입력해주세요")
		            	 document.getElementsByName("memberPw")[0].focus();
		            	 return false;
		             }else if($("input[name=userChkpw]").val() == ""){
		            	 alert("비밀번호 확인을 입력해주세요")
		            	 document.getElementsByName("userChkpw")[0].focus();
		            	 return false;
		             }else if($("input[name=memberEmail]").attr("title")=="n"){
	            		 alert("이메일을 다시 확인해주세요")
	            		 document.getElementsByName("memberEmail")[0].focus();
	            		 return false;
		             }else if($("input[name=memberPhone]").val() == ""){
		            	 alert("연락처를 입력해주세요")
		            	 document.getElementsByName("memberPhone")[0].focus();
		            	 return false;
		             }else if($("input[name=memberDo]").val() == ""){
		            	 alert("주소를 선택해주세요")
		            	 document.getElementsByName("memberDo")[0].focus();
		            	 return false;
		             }else if($("select[name=memberDo]").val() == ""){
		            	 alert("도를 선택해주세요")
		            	 document.getElementsByName("memberDo")[0].focus();
		            	 return false;
		             }else if($("select[name=memberCity]").val() == ""){
		            	 alert("시,군,구를 선택해주세요")
		            	 document.getElementsByName("memberDo")[0].focus();
		            	 return false;
		             }else if($("input[name=memberAddr]").val() == ""){
		            	 alert("상세주소를 입력해주세요")
		            	 document.getElementsByName("memberAddr")[0].focus();
		            	 return false;
		             }
				 })
	})