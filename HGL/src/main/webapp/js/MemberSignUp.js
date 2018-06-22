	function snsChecked() { //문자알림서비스 확인창
		var retVal = confirm("문자알림을 받으시겠습니까?\n매달 1일, 부모님께 안부를 물어보도록 유도하는 알림문자가 발송됩니다.");

		if (retVal == true) {
			$(".checked").prop("checked", true);
		} else {
			$(".checked").prop("checked", false);
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
				seoul.setAttribute( "name", 'memberCity' );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
				
			case "경기도" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "";
				gyeonggi.setAttribute( "name", 'memberCity' );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
				
			case "인천광역시" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "";
				incheon.setAttribute( "name", 'memberCity' );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "강원도" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "";
				gangwon.setAttribute( "name", 'memberCity' );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "충청북도" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "";
				chungbuk.setAttribute( "name", "memberCity" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "충청남도" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "";
				chungnam.setAttribute( "name", "memberCity" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "대전광역시" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "";
				daejeon.setAttribute( "name", "memberCity" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "세종특별자치시" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;	
			case "경상북도" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "";
				gyeongbug.setAttribute( "name", "memberCity" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "대구광역시" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "";
				daegu.setAttribute( "name", "memberCity" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "울산광역시" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "";
				ulsan.setAttribute( "name", "memberCity" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "경상남도" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "";
				gyeongnam.setAttribute( "name", "memberCity" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "부산광역시" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "";
				busan.setAttribute( "name", "memberCity" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "전라북도" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "";
				jeonbug.setAttribute( "name", "memberCity" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "전라남도" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "";
				jeonnam.setAttribute( "name", "memberCity" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "광주광역시" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "";
				gwangju.setAttribute( "name", "memberCity" );
				jeju.style.display = "none";
				jeju.setAttribute( "name", "" );
				break;
			case "제주도" :
				seoul.style.display = "none";
				seoul.setAttribute( "name", "" );
				gyeonggi.style.display = "none";
				gyeonggi.setAttribute( "name", "" );
				incheon.style.display = "none";
				incheon.setAttribute( "name", "" );
				gangwon.style.display = "none";
				gangwon.setAttribute( "name", "" );
				chungbuk.style.display = "none";
				chungbuk.setAttribute( "name", "" );
				chungnam.style.display = "none";
				chungnam.setAttribute( "name", "" );
				daejeon.style.display = "none";
				daejeon.setAttribute( "name", "" );
				gyeongbug.style.display = "none";
				gyeongbug.setAttribute( "name", "" );
				daegu.style.display = "none";
				daegu.setAttribute( "name", "" );
				ulsan.style.display = "none";
				ulsan.setAttribute( "name", "" );
				gyeongnam.style.display = "none";
				gyeongnam.setAttribute( "name", "" );
				busan.style.display = "none";
				busan.setAttribute( "name", "" );
				jeonbug.style.display = "none";
				jeonbug.setAttribute( "name", "" );
				jeonnam.style.display = "none";
				jeonnam.setAttribute( "name", "" );
				gwangju.style.display = "none";
				gwangju.setAttribute( "name", "" );
				jeju.style.display = "";
				jeju.setAttribute( "name", "memberCity" );
				break;
		}
	}
	
	$(function(){
		$(document).ready(function() {
		    $('input[name=memberPhone1]').on('keyup', function() {
		        if($(this).val().length > 3) {
		            $(this).val($(this).val().substring(0, 3));
		        }
		    });
		    $('input[name=memberPhone2]').on('keyup', function() {
		        if($(this).val().length > 4) {
		            $(this).val($(this).val().substring(0, 4));
		        }
		    });
		    $('input[name=memberPhone3').on('keyup', function() {
		        if($(this).val().length > 4) {
		            $(this).val($(this).val().substring(0, 4));
		        }
		    });
		    $('input[name=memberPw').on('keyup', function() {
		        if($(this).val().length > 12) {
		            $(this).val($(this).val().substring(0, 12));
		        }
		    });
		});
		
		
		      $("input[name=memberId").on("change",function() {
		    	  
		    	  	var re = /[a-z/0-9]{6,12}$/;
		            var idVal = $("input[name=memberId]").val();
		            if(idVal==null || idVal==""){
		            	 $("input[name=memberId]").attr('title','n');
		            	 $("#useId").css("display", "none");
	                     $("#unId").css("display", "none");
		            }else if(idVal == ""||!re.test(idVal)){
		            	 $("#useId").css("display", "none");
		            	 $("#unId").css("display", "none");
		        		 $("#incorrectId").css("display","inline");
		        		 $("input[name=memberId]").attr('title','n');
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
				                     $("#incorrectId").css("display","none");
				                     $("input[name=memberId]").attr('title','y');
				                  }else{
				                	 $("#unId").css("display", "inline");
				                	 $("#useId").css("display", "none");
				                	 $("#incorrectId").css("display","none");
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
		        	var re = /[a-zA-Z0-9]+[@]+[a-zA-Z0-9]+.[a-zA-Z]{2,3}$/;
		        	//var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,3}))$/;
		            var emailVal = $("input[name=memberEmail]").val();
		            if(emailVal==null || emailVal==""){
		            	 $("#useEmail").css("display", "none");
	                     $("#unEmail").css("display", "none");
	                     $("input[name=memberEmail]").attr('title','n');
		            }else if(emailVal == ""||!re.test(emailVal)){
		            	 $("#useEmail").css("display", "none");
		            	 $("#unEmail").css("display", "none");
		        		 $("#incorrectEmail").css("display","inline");
		        		 $("input[name=memberEmail]").attr('title','n');
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
		        
		         //이부분을 아이디가 아닌 여러개로 선택할수있는 class같은걸로하면 안먹히네요
		         $("#regist").submit(function(){
		            if($("input[name=memberId]").attr("title")=="n"){
		            	swal("아이디를 다시 확인해주세요")
	            		return false;
		            }else if($("input[name=memberPw]").attr("title")=="n"){
		            	 swal("비밀번호를 다시 확인해주세요")
		            	 return false;
		            }else if($("input[name=userChkpw]").val() == ""){
		            	 swal("비밀번호 한번 더 입력해주세요")
		            	 return false;
		             } else if($("input[name=memberPw]").val() != $("input[name=userChkpw]").val()) {
		                swal("비밀번호가 일치하지 않습니다. 다시 확인해주세요");
		                return false;  
		            }else if($("input[name=memberNickname]").attr("title")=="n"){
		            	 swal("닉네임을 다시 확인해주세요")
		            	 return false;
		            }else if($("input[name=memberPhone1]").val() == ""){
		            	 swal("연락처를 모두 입력해주세요")
		            	 return false;
		             }else if($("input[name=memberPhone2]").val() == ""){
		            	 swal("연락처를 모두 입력해주세요")
		            	 return false;
		             }else if($("input[name=memberPhone3]").val() == ""){
		            	 swal("연락처를 모두 입력해주세요")
		            	 return false;
		             }else if($("input[name=memberEmail]").attr("title")=="n"){
	            		 swal("이메일을 다시 확인해주세요")
	            		 return false;
		            }else if($("select[name=memberDo]").val() == ""){
		            	 swal("주소를 선택해주세요")
		            	 return false;
		             }else if($("select[name=memberCity]").val() == ""){
		            	 swal("시,군,구를 선택해주세요")
		            	 return false;
		             }else if($("input[name=memberAddr]").val() == ""){
		            	 swal("상세주소를 입력해주세요")
		            	 return false;
		             }
				 })
	
				
})