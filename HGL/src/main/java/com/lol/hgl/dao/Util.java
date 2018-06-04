package com.lol.hgl.dao;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import com.lol.hgl.dto.calDto;

public class Util {

	private String toDates;
	
	//한자리수를 두자리수로 반환
	public static String isTwo(String msg) {
		return msg.length()<2?"0"+msg:msg;
	}
	
	//문자열을 날짜형식으로 표현
	public void setToDates(String mDate) {
		//yyyy-MM-dd hh:mm:00
		String m = mDate.substring(0,4) + "-"
				+ mDate.substring(4,6) + "-"
				+ mDate.substring(6,8) + " "
				+ mDate.substring(8,10) + ":"
				+ mDate.substring(10) + ":00";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일 HH시mm분");
		Timestamp tm = Timestamp.valueOf(m);
		toDates = sdf.format(tm);
	}
	
	public String getToDates() {
		return toDates;
	}
	
	//달력의 토요일,일요일 색상 설정
	public static String fontColor(int date, int dayOfWeek) {
		String color = "";
		
		if((dayOfWeek-1+date)%7 == 0) {
			color = "blue";
		}else if((dayOfWeek-1+date)%7 == 1) {
			color = "red";
		}else {
			color = "black";
		}
		
		return color;
	}

	//달력에 일정 일부를 출력하는 기능
	public static String getCalView(int i,List<calDto> clist){
		String d = isTwo(i+"");// 6일 --> "06"
		String calList = "";//"<p>title</p><p>title</p><p>title</p>"
		for(calDto dto:clist){
			if(dto.getCalSch().substring(6, 8).equals(d)){
			  calList += "<p><a href='CalController.do?command=calDetail&seq="+dto.getCalNo()+"'>"
					   + (dto.getCalTitle().length()>6?dto.getCalTitle().substring(0,5)+"..":dto.getCalTitle())
					   + "</a></p>";
			}
		}
		return calList;
	}
}














