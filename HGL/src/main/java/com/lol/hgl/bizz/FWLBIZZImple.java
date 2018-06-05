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
	public fwlbDto FWLBDetail(String memberNickName) {
		return dao.FWLBDetail(memberNickName);
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
	public List<fwlbDto> FwlbList(int startPost, int endPost) {
		return dao.FwlbList(startPost, endPost);
	}

}
