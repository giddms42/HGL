package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.calDto;

public interface CalDao {
	

	//일정추가
	public int insert(calDto dto);
	//일정 상세조회
	public calDto selectOne(int seq);
	//일정 수정
	public int update(calDto dto);
	//일정 삭제
	public int delete(int seq);
	//달력에 일정을 표현하기
	public List<calDto> selectAll(String memberId, String yyyyMM);
	//일정개수를 구하는 기능
	public int getCalViewCount(String memberId, String yyyyMMdd);
	//달력에 일정출력
	public calDto getCalBoard(int seq);
	//생일 리스트 출력
	public List<calDto> birthList();
	//CALSMS 여부를 N으로 변경
	public int updateCALSMS(int calNo);
	//문자알림이 Y인 리스트 
	public List<calDto> calList();
}
