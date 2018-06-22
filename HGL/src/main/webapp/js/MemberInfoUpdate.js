	
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
		    startSeteled();
		});
	});
	
	function startSeteled(){
		var Do = document.getElementById("memberDo").value;
		var city = document.getElementById("memberCity").value; 
		
		var doo = document.getElementById("do");
	
		var len = $("#doo option").length;
		for(var i=0; i<len; i++){
			if(Do === $("#doo option:eq("+i+")").val()){  // do와 option의 value가  같다면 
				$("#doo option:eq("+i+")").prop("selected", true);
				displayDo(Do, city);
			}
		}
	}
	
	 function displayDo(Do, city){
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
			
			var arrId = new Array(16); 
			arrId[0]=seoul;
			arrId[1]=gyeonggi;
			arrId[2]=incheon;
			arrId[3]=gangwon;
			arrId[4]=chungbuk;
			arrId[5]=chungnam;
			arrId[6]=daejeon;
			arrId[7]=gyeongbug;
			arrId[8]=daegu;
			arrId[9]=ulsan;
			arrId[10]=gyeongnam;
			arrId[11]=busan;
			arrId[12]=jeonbug;
			arrId[13]=jeonnam;
			arrId[14]=gwangju;
			arrId[15]=jeju;
			
			var arrString = new Array(16);
			switch (Do) {
			case "서울특별시":
				arrString[0]="서울특별시";
				break;
			case "경기도":
				arrString[1]="경기도";
				break;
			case "인천광역시":
				arrString[2]="인천광역시";
				break;
			case "강원도":
				arrString[3]="강원도";
				break;
			case "충청북도":
				arrString[4]="충청북도";
				break;
			case "충청남도":
				arrString[5]="충청남도";
				break;
			case "대전광역시":
				arrString[6]="대전광역시";
				break;
			case "경상북도":
				arrString[7]="경상북도";
				break;	
			case "대구광역시":
				arrString[8]="대구광역시";
				break;
			case "울산광역시":
				arrString[9]="울산광역시";
				break;
			case "경상남도":
				arrString[10]="경상남도";
				break;
			case "부산광역시":
				arrString[11]="부산광역시";
				break;
			case "전라북도":
				arrString[12]="전라북도";
				break;
			case "전라남도":
				arrString[13]="전라남도";
				break;
			case "광주광역시":
				arrString[14]="광주광역시";
				break;
			case "제주도":
				arrString[15]="제주도";
				break;
			}

			
			for(var i=0; i<arrId.length; i++){
				if(Do===arrString[i]){
					arrId[i].style.display = "";
					arrId[i].setAttribute( 'name', 'memberCity' );
					var len = arrId[i].options.length;
					for(var j=0; j<len; j++){
						if(city === arrId[i].options.item(j).value){ 
							arrId[i].options[j].setAttribute("selected", true);
						}
					}
				}else{
					arrId[i].style.display = "none";
				}
			}
	
		};
			
	
	function snsChecked() { //문자알림서비스 확인창
		var retVal = confirm("문자알림을 받으시겠습니까?\n 30일마다  부모님께 안부를 물어보도록 유도하는 알림문자가 발송됩니다.");
		if (retVal == true) {
			$(".smsChk").prop("checked", true);
		} else {
			$(".smsChk").prop("checked", false);
		}
	}
	
	function cancle(){
		history.back()-1;
	}

	function showSub(obj){
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
		
		var arrId = new Array(16); 
		arrId[0]=seoul;
		arrId[1]=gyeonggi;
		arrId[2]=incheon;
		arrId[3]=gangwon;
		arrId[4]=chungbuk;
		arrId[5]=chungnam;
		arrId[6]=daejeon;
		arrId[7]=gyeongbug;
		arrId[8]=daegu;
		arrId[9]=ulsan;
		arrId[10]=gyeongnam;
		arrId[11]=busan;
		arrId[12]=jeonbug;
		arrId[13]=jeonnam;
		arrId[14]=gwangju;
		arrId[15]=jeju;
		
		var arrString = new Array(16);
		switch (obj) {
		case "서울특별시":
			arrString[0]="서울특별시";
			break;
		case "경기도":
			arrString[1]="경기도";
			break;
		case "인천광역시":
			arrString[2]="인천광역시";
			break;
		case "강원도":
			arrString[3]="강원도";
			break;
		case "충청북도":
			arrString[4]="충청북도";
			break;
		case "충청남도":
			arrString[5]="충청남도";
			break;
		case "대전광역시":
			arrString[6]="대전광역시";
			break;
		case "경상북도":
			arrString[7]="경상북도";
			break;	
		case "대구광역시":
			arrString[8]="대구광역시";
			break;
		case "울산광역시":
			arrString[9]="울산광역시";
			break;
		case "경상남도":
			arrString[10]="경상남도";
			break;
		case "부산광역시":
			arrString[11]="부산광역시";
			break;
		case "전라북도":
			arrString[12]="전라북도";
			break;
		case "전라남도":
			arrString[13]="전라남도";
			break;
		case "광주광역시":
			arrString[14]="광주광역시";
			break;
		case "제주도":
			arrString[15]="제주도";
			break;
		}

		
		for(var i=0; i<arrId.length; i++){
			if(obj===arrString[i]){
				arrId[i].style.display = "";
				arrId[i].setAttribute( 'name', 'memberCity' );
			}else{
				arrId[i].style.display = "none";
				arrId[i].setAttribute( 'name', '');
			}
		}
	}