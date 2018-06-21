package com.lol.hgl.bizz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.FWLDao;
import com.lol.hgl.dto.fwlDto;
import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.fwlbcmDto;

@Service
public class FWLBIZZImple implements FWLBizz {

	@Autowired FWLDao dao;
	
	@Override
	public List<fwlDto> fwlList(int memberNo) {
		return dao.fwlList(memberNo);
	}

	@Override
	public int fwlInsert(String fwlItem, int memberNo) {
		fwlDto dto = new fwlDto(memberNo, fwlItem);
		return dao.fwlInsert(dto);
	}

	@Override
	public int FWLSuccess(int fwlNo) {
		return dao.FWLSuccess(fwlNo);
	}

	@Override
	public int FWLDelete(int fwlNo) {
		return dao.FWLDelete(fwlNo);
	}

	@Override
	public int FWLShare(String memberNickName) {
		int res = 0;
		String title = memberNickName+" 님의 위시리스트";
		fwlbDto dto = new fwlbDto(memberNickName, title);
		dao.FWLBInsert(dto);
		return res;
	}

	@Override
	public fwlbDto FWLBDetail(String memberNickName, int fwlbNo) {
		return dao.FWLBDetail(memberNickName, fwlbNo);
	}

	@Override
	public List<fwlbcmDto> fwlbcmList(int fwlbNO) {
		return dao.fwlbcmList(fwlbNO);
	}

	@Override
	public int FWLSuccessCancel(int fwlNo) {
		return dao.FWLSuccessCancel(fwlNo);
	}

	@Override
	public int FWLBListCount() {
		return dao.FWLBListCount();
	}
	
	@Override
	public void insertFWLBRowNum() {
		List<fwlbDto> list = dao.fwlbAllList(); //1붵 시작 
		int rowNum = 1;
		for(int i=0; i<list.size(); i++) {
			int fwlbNo = list.get(i).getFwlbNo();
			dao.insertFWLBRowNum(rowNum, fwlbNo);
			rowNum++;
		}
	}


	@Override
	public List<fwlbDto> FwlbList(int startPost, int endPost) {
		List<fwlbDto> list = dao.FwlbList(startPost, endPost);
		return list;
	}

	@Override
	public int FWLBListSearchCount(String searchNickName) {
		return dao.FWLBListSearchCount(searchNickName);
	}
	
	@Override
	public void insertFWLBSearchRowNum(String searchNickName) {
		List<fwlbDto> list = dao.fwlbSearchAllList(searchNickName);
		int rowNum = 1;
		for(int i=0; i<list.size(); i++) {
			int fwlbNo = list.get(i).getFwlbNo();
			dao.insertFWLBRowNum(rowNum, fwlbNo);
			rowNum++;
		}
	}
	
	@Override
	public List<fwlbDto> FwlbListSearch(int startPost, int endPost, String searchNickName) {
		List<fwlbDto> list = dao.FwlbListSearch(startPost, endPost, searchNickName);
		return list;
	}

	@Override
	public int FWLBCMInsert(fwlbcmDto dto) {
		return dao.FWLBCMInsert(dto);
	}

	@Override
	public int FWLBCMDelete(int fwlbcmNo) {
		return dao.FWLBCMDelete(fwlbcmNo);
	}

	@Override
	public int FWLBUpdateReadCount(int fwlbNo) {
		return dao.FWLBUpdateReadCount(fwlbNo);
	}

	@Override
	public int FWLBDelete(int fwlbNo) {
		return dao.FWLBDelete(fwlbNo);
	}

	
		
	



}
