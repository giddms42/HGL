package com.lol.hgl.bizz;

import java.util.List;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.CalDao;
import com.lol.hgl.dao.FWLDao;
import com.lol.hgl.dao.MemberDao;
import com.lol.hgl.dto.calDto;
import com.lol.hgl.dto.memberDto;
import com.lol.hgl.util.TimerLogic;

@Service
public class MemberBizzImple implements MemberBizz {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private TimerLogic timerLogic;
	
	@Autowired
	private CalDao calDao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private FWLDao fwlDao;
	
	//ID중복 체크 및 정규식 검사 
	@Override
	public String IDChk(String id) {
		//id: 영소문자, 숫자 포함.  글자수 6-12
		boolean flag = Pattern.matches("([a-z/0-9]{6,12})",id);
		String use = "f";
		if(flag) {
			System.out.println("아이디 정규식 요건 충족");
			String res = memberDao.IDChk(id);		
			if (res == null) {
				System.out.println("아이디 중복 없음");
				use = "t"; 
			}else {
				System.out.println("아이디 중복 있음");
			}
		}else {
			System.out.println("아이디 정규식 요건 불충족");
		}
		System.out.println("id 사용 가능 여부 : " + use);
		return use;
	}     
	
	//비밀번호 정규식 검사
	@Override
	public String pwChk(String pw) {
		//비밀번호: 영소문자, 숫자 포함  6~12글자
		boolean flag = Pattern.matches("([a-z/0-9]{8,12})",pw);
		String use = "f";
		if(flag) {
			use = "t";
		}else {
			use="f";
		}
		System.out.println("비밀번호 사용 가능 여부 : " + use);
		return use;
	}

	//닉네임 중복 검사
	@Override
	public String nickNameChk(String nickName) {
		String res = memberDao.nickNameChk(nickName);
		String use = "f";
		if (res == null) {
			use = "t"; 
		}
		System.out.println("nickName 사용 가능 여부 : " + use);
		return use;
	}

	//이메일 중복 검사
	@Override
	public String emailChk(String email) {
		String res = memberDao.emailChk(email);
		String use = "f";
		if (res == null) {
			use = "t"; 
		}
		System.out.println("email 사용 가능 여부 : " + use);
		return use;
	}

	//회원 가입
	@Override
	public int signUp(memberDto dto) {
		if(dto.getMemberSMS() == null) {
			dto.setMemberSMS("N");
		}
		String encryptPassword = passwordEncoder.encode(dto.getMemberPw());
		dto.setMemberPw(encryptPassword);
		int res = memberDao.signUp(dto);
		return res;
	}

	//아이디 찾기
	@Override
	public String IDSearch(String email) {
		String res = memberDao.IDSearch(email);      
	      if (res == null) {
	         res = "아이디가 존재하지 않습니다.";
	      }
	      System.out.println("ID 찾기 성공 여부 : " + res);
	      return res;
	}

	//기존 회원 인증
	@Override
	public String memberCertification(String email, String id) {
		String res = memberDao.memberCertification(email, id);
		if (res == null) {
			res = "f";
		}else {
			res = "t";
		}
		System.out.println("회원 여부 : " + res);
		return res;
		}
	
	//새로운 비밀번호으로 변경
	@Override
	public int pwChange(memberDto dto) {		
		int res = 0;
		String encryptPassword = passwordEncoder.encode(dto.getMemberPw());
		dto.setMemberPw(encryptPassword);
		res = memberDao.pwChange(dto);
		return res;
	}

	//로그인 확인 
	@Override
	public String LoginChk(String id, String rawPassword) {
		String res = "";	
		//1.저장된 비밀번호 갖고오기.
		String encodedPassword = memberDao.LoginChk(id);
		if(encodedPassword == null) {
			return "f";
		}
		//2.입력한 비밀번호랑 비교하기
		if(passwordEncoder.matches(rawPassword, encodedPassword)){
			System.out.println("계정정보 일치");
			res = "t";
			}else{
			System.out.println("계정정보 불일치");
			res = "f";	
					}
		return res;
	}
	
	@Override
	public memberDto Login(String memberId) {
		memberDto dto = memberDao.Login(memberId);	
		return dto;
	}
	
	
	@Override
	public memberDto detailLogin(int memberNo) {
		memberDto dto = memberDao.detailLogin(memberNo);	
		return dto;
	}

	@Override
	public int updateMemberInfo(memberDto dto) {
		if(dto.getMemberSMS() == null) {
			dto.setMemberSMS("N");
		}
		int res = memberDao.updateMemberInfo(dto);
		
		return res;
	}

	@Override
	public int getOut(int memberNo) {
		memberDto memberDto = memberDao.detailLogin(memberNo);
		String name = memberDto.getMemberNickname();
		fwlDao.FWLBDeleteAll(name);
		int res = memberDao.getOut(memberNo);
		return res;
	}

	@Override
	public memberDto searchMember(String memberNickName) {
		return memberDao.searchMember(memberNickName);
	}

	@Override
	public int logOutTime(String memberId) {
		return memberDao.logOutTime(memberId);
	}

	@Override
	public void mangeCancel() {
		List<memberDto> mangeList = memberDao.MangeList();
		timerLogic.mangeTime(mangeList);
	}

	@Override
	public void safetySMS() {
		List<memberDto> smsList = memberDao.smsList();
		timerLogic.safetySMSTime(smsList);
	}

	@Override
	public void birthSMS() {
		List<calDto> birthList = calDao.birthList();
		timerLogic.birthSMSTime(birthList);
		
	}

	@Override
	public void calSMS() {
		List<calDto> calList = calDao.calList();
		timerLogic.calSMSTime(calList);
		
	}


	
	
}
