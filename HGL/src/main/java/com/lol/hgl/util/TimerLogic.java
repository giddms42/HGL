package com.lol.hgl.util;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.lol.hgl.dao.CalDao;
import com.lol.hgl.dao.MemberDao;
import com.lol.hgl.dto.calDto;
import com.lol.hgl.dto.memberDto;

@Component("TimerLogic")
public class TimerLogic {

	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private CalDao calDao;
	
	Date now = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	
	public void mangeTime(List<memberDto> mangeList) {
		Timer timer = new Timer();
		TimerTask timerTask = new TimerTask() {
			@Override
			public void run() {
				System.out.println("제제해제 리스트 검토 시작"+sdf.format(now));
				//2. 리스트의 제제날짜와 현재 날짜를 비교
				for(int i=0; i<mangeList.size(); i++) {
					Date tmp = mangeList.get(i).getMemberProhibitTime();
				    if(now.after(tmp)) { // 제제날짜가 현재 날짜보다 이후라면 
				    	memberDao.updateMangeChk(mangeList.get(i).getMemberNickname());
				    	System.out.println(mangeList.get(i).getMemberNickname() + " 제제해제 ");
				    }
				}
				System.out.println("제제해제 리스트 검토 종료");
			}
			
		};
		timer.schedule(timerTask, 1000, 1000 * 60 * 60 * 24 );  // 하루에 한번으로 고정 
	}

	public void safetySMSTime(List<memberDto> smsList) {
		Timer timer = new Timer();
		TimerTask timerTask = new TimerTask() {

			@Override
			public void run() {		
				System.out.println("안부문자 전송 시작"+sdf.format(now));
				for(int i=0; i<smsList.size(); i++) {
					String msg="가족분들에게 안부를 전해보세요^^";
					String rphone = smsList.get(i).getMemberPhone();
					try {
						SMSFormOne.sms(rphone, msg);
					} catch (NoSuchAlgorithmException | IOException e) {
						e.printStackTrace();
					}
					
				}
			System.out.println("안부문자 전송 종료");
			}
			
		};
		timer.schedule(timerTask, 1000, 1000 * 60 * 60 * 24 * 15);  // 15일에 한번
	}
	
	public void birthSMSTime(List<calDto> birthList) {
		Timer timer = new Timer();
		TimerTask timerTask = new TimerTask() {

			@Override
			public void run() {
				System.out.println("생일리스트 검토 시작"+sdf.format(now));
			
				for(int i=0; i<birthList.size(); i++) {
					String tmp = birthList.get(i).getCalSch();
			
					String year = tmp.substring(0, 4);
					String month = tmp.substring(4, 6);
					int d = Integer.parseInt(tmp.substring(6, 8))-1;
			
					String day="";
					if(d < 10) {         // 일
			            day += "0" + Integer.toString(d) ;
					}else {
			            day += Integer.toString(d) ;
					}    
					
					String schDate = year+"-"+month+"-"+day;
					SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
					Date sch = null;
					try {
						sch = transFormat.parse(schDate);
					} catch (ParseException e1) {
						e1.printStackTrace();
					}
					String nowTmp = transFormat.format(now);
					try {
						now = transFormat.parse(nowTmp);
					} catch (ParseException e1) {
						e1.printStackTrace();
					}
					if(now.compareTo(sch)==0) { //현재 날짜와 생일 하루전 날짜가 같다면
					    memberDto dto = memberDao.searchMember(birthList.get(i).getMemberNickname());
					    String rphone = dto.getMemberPhone();
					    String title = birthList.get(i).getCalTitle();
					    int index = title.indexOf("님");
					    String famName = title.substring(0, index);
					    System.out.println(famName);
					    String msg = "내일은  " + famName + " 님의 생일입니다. 축하해주세요 ^^";
					    try {
							SMSFormOne.sms(rphone, msg);
						} catch (NoSuchAlgorithmException | IOException e) {
							e.printStackTrace();
						}   
					    calDao.updateCALSMS(birthList.get(i).getCalNo());
					}
				}
			System.out.println("생일리스트 검토 끝");
			}
			
		};
		timer.schedule(timerTask, 1000, 1000 * 60 * 60 * 24);  // 하루에 한번.
	}
	
	public void calSMSTime(List<calDto> calList) {
		Timer timer = new Timer();
		TimerTask timerTask = new TimerTask() {

			@Override
			public void run() {
				System.out.println("일정 리스트 검토 시작"+sdf.format(now));
			
				for(int i=0; i<calList.size(); i++) {
					String tmp = calList.get(i).getCalSch();
			
					String year = tmp.substring(0, 4);
					String month = tmp.substring(4, 6);
					int d = Integer.parseInt(tmp.substring(6, 8))-1;
			
					String day="";
					if(d < 10) {         // 일
			            day += "0" + Integer.toString(d) ;
					}else {
			            day += Integer.toString(d) ;
					}    
					
					String schDate = year+"-"+month+"-"+day;
					SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
					Date sch = null;
					try {
						sch = transFormat.parse(schDate);
					} catch (ParseException e1) {
						e1.printStackTrace();
					}
					String nowTmp = transFormat.format(now);
					try {
						now = transFormat.parse(nowTmp);
					} catch (ParseException e1) {
						e1.printStackTrace();
					}
					if(now.compareTo(sch)==0) { //현재 날짜와 일정 하루전 날짜가 같다면
					    memberDto dto = memberDao.searchMember(calList.get(i).getMemberNickname());
					    String rphone = dto.getMemberPhone();
					    String title = calList.get(i).getCalTitle();
					    String msg = "내일은  " + title  + " 일정이 있습니다. 잊지 마세요 ~";
					    try {
							SMSFormOne.sms(rphone, msg);
						} catch (NoSuchAlgorithmException | IOException e) {
							e.printStackTrace();
						}   
					    calDao.updateCALSMS(calList.get(i).getCalNo());
					}
				}
			System.out.println("일정 리스트 검토 끝");
			}
			
		};
		timer.schedule(timerTask, 1000, 1000 * 60 * 60 * 24);  // 하루에 한번.
	}


}
