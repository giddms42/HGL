package com.lol.hgl.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.lol.hgl.dao.MemberDao;
import com.lol.hgl.dto.memberDto;

@Component("TimerLogic")
public class TimerLogic {
	
	@Autowired
	private MemberDao dao;
	
	public void mangeTime(List<memberDto> mangeList) {
		Timer timer = new Timer();
		TimerTask timerTask = new TimerTask() {

			@Override
			public void run() {
				//1. 현재 날짜 갖고오기 
				Date now = new Date();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
				System.out.println("제제해제 리스트 검토 시작"+sdf.format(now));
				//2. 리스트의 제제날짜와 현재 날짜를 비교
				for(int i=0; i<mangeList.size(); i++) {
					Date tmp = mangeList.get(i).getMemberProhibitTime();
				    if(now.after(tmp)) { // 제제날짜가 현재 날짜보다 이후라면 
				    	dao.updateMangeChk(mangeList.get(i).getMemberNickname());
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
				for(int i=0; i<smsList.size(); i++) {
					
				}
			}
			
		};
		timer.schedule(timerTask, 1000, 1000 * 60 * 60 * 24 * 15);  // 15일에 한번
	}


}
