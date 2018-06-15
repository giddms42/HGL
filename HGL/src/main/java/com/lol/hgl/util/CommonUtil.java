package com.lol.hgl.util;

import java.util.Calendar;
import java.util.UUID;

import org.springframework.stereotype.Component;

import com.ibm.icu.util.ChineseCalendar;

@Component("commonUtil")
public class CommonUtil {

	public static String getRandomString(){
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

	public String converLunar(String chinaBirth){
		  ChineseCalendar cc = new ChineseCalendar();
	      Calendar cal = Calendar.getInstance();
	        cc.set(ChineseCalendar.EXTENDED_YEAR, Integer.parseInt(chinaBirth.substring(0, 4)) + 2637);
	        cc.set(ChineseCalendar.MONTH, Integer.parseInt(chinaBirth.substring(4, 6)) - 1);
	        cc.set(ChineseCalendar.DAY_OF_MONTH, Integer.parseInt(chinaBirth.substring(6,8)));
	        
	        cal.setTimeInMillis(cc.getTimeInMillis());
	 
	        int y = cal.get(Calendar.YEAR);
	        int m = cal.get(Calendar.MONTH) + 1;
	        int d = cal.get(Calendar.DAY_OF_MONTH);
	 
	        String solarlDate = "" ;
	        
	        
	        solarlDate += String.valueOf(y);      // 년
	         
	        if(m < 10) {         // 월
	            solarlDate += "0" + m ;
	        }else {
	            solarlDate += String.valueOf(m) ;
	        } 
	      
	        /*
	        if((y%4==0)&&(y%100!=0)||(y%400==0)){ //윤년판별
	        	System.out.println(y+"는 윤년입니다.");
	        	d=d+1;
	        }else {
	        	System.out.println(y+"는 평년입니다.");
	        }
	        */
	        if(d < 10) {         // 월
	            solarlDate += "0" + d ;
	        }else {
	            solarlDate += String.valueOf(d) ;
	        } 
	        
	        
	        return solarlDate;

	}
}
