package com.lol.hgl.bizz;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.CalDao;
import com.lol.hgl.dao.FamDao;
import com.lol.hgl.dao.MemberDao;
import com.lol.hgl.dto.calDto;
import com.lol.hgl.dto.famDto;
import com.lol.hgl.dto.healthDto;
import com.lol.hgl.dto.memberDto;
import com.lol.hgl.util.CommonUtil;

@Service
public class FamBizzImple implements FamBizz {
	
	@Autowired
	private FamDao famDao;
	
	@Autowired
	private CalDao calDao;
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private CommonUtil commonUtil;

	@Override
	public List<famDto> allFamList(int memberNo) {
		List<famDto> list = famDao.allFamList(memberNo);
		return list;
	}

	@Override
	public int insertFam(famDto famDto, String disease) {
		if(disease == "질병없음") {
			famDto.setFamDisease1("질병없음");
			famDto.setFamDisease2("질병없음");
			famDto.setFamDisease3("질병없음");		
		}else {
			String[] tmp = disease.split(",");		
			if(tmp.length==3) {
				famDto.setFamDisease1(tmp[0]);
				famDto.setFamDisease2(tmp[1]);
				famDto.setFamDisease3(tmp[2]);			
			}else if(tmp.length==2) {
				famDto.setFamDisease1(tmp[0]);
				famDto.setFamDisease2(tmp[1]);
				famDto.setFamDisease3("질병없음");
			}else if(tmp.length==1){
				famDto.setFamDisease1(tmp[0]);
				famDto.setFamDisease2("질병없음");
				famDto.setFamDisease3("질병없음");
			}
			
		}
		
		if(famDto.getFamLunar()==null) {
			famDto.setFamLunar("양력");
		}
		
		int res = famDao.insertFam(famDto);		
		return res;
	}

	@Override
	public famDto famDetail(int famNo) {
		famDto res = famDao.famDetail(famNo);
		return res;
	}

	@Override
	public int famDelete(int famNo) {
		int res = famDao.famDelete(famNo);
		return res;
	}

	@Override
	public int FamHealthInsert(healthDto healthdto) {
		return famDao.FamHealthInsert(healthdto);
	}

	@Override
	public healthDto healthDetail(int famNo) {
		return famDao.healthDetail(famNo);
	}

	@Override
	public List<healthDto>heatlList(int famNo) {
		List<healthDto> list = famDao.heatlList(famNo);
		healthDto tmp = new healthDto();
		tmp.setHealthShrbp(0);
		tmp.setHealthRelbp(0);
		tmp.setHealthWeight(0);
		for(int i=0; i<5; i++) {
			if(i>=list.size()){
				list.add(0,tmp);
			}
		}

		return list;
	}

	@Override
	public int FamDiseaseUpdate(famDto famDto, String disease) {
		if(disease == "질병없음") {
			famDto.setFamDisease1("질병없음");
			famDto.setFamDisease2("질병없음");
			famDto.setFamDisease3("질병없음");		
		}else {
			String[] tmp = disease.split(",");		
			if(tmp.length==3) {
				famDto.setFamDisease1(tmp[0]);
				famDto.setFamDisease2(tmp[1]);
				famDto.setFamDisease3(tmp[2]);			
			}else if(tmp.length==2) {
				famDto.setFamDisease1(tmp[0]);
				famDto.setFamDisease2(tmp[1]);
				famDto.setFamDisease3("질병없음");
			}else if(tmp.length==1){
				famDto.setFamDisease1(tmp[0]);
				famDto.setFamDisease2("질병없음");
				famDto.setFamDisease3("질병없음");
			}
			
		}
		
		int res = famDao.FamDiseaseUpdate(famDto);		
		return res;
	}

	@Override
	public int insertFamBirth(famDto famDto, String memberId, String memberNickname) {
		Calendar cal =Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String month = famDto.getFamBirth().substring(4, 6);
		String day = famDto.getFamBirth().substring(6, 8);
		String lunar = famDto.getFamLunar();
		calDto calDto = new calDto();
		calDto.setMemberId(memberId);
		calDto.setMemberNickname(memberNickname);
		calDto.setCalMemo("");
		memberDto memberDto = memberDao.searchMember(memberNickname);
		if(memberDto.getMemberSMS().equals("Y")) {
			calDto.setCalSMS("Y");
		}else {
			calDto.setCalSMS("N");
		}

		if(lunar.equals("양력")) {
			for(int i=0; i<10; i++) { // 10년 동안 일정 입력
				calDto.setCalTitle(famDto.getFamName() + " 님의 생신");
				String birth = String.valueOf(year)+month+day;
				calDto.setCalSch(birth);
				calDao.insert(calDto);
				year = year+1;
			}
		}else {
			for(int i=0; i<10; i++) { // 10년 동안 일정 입력
			String chinaBirth = year+month+day;
			System.out.println("음력"+chinaBirth);
			String solarlBirth = commonUtil.converLunar(chinaBirth);
			System.out.println("양력"+solarlBirth);
			calDto.setCalTitle("(음)"+famDto.getFamName() + " 님의 생신");
			calDto.setCalSch(solarlBirth);
			calDao.insert(calDto);
			year = year+1;
			}
		}
		return 0;
	}

}
