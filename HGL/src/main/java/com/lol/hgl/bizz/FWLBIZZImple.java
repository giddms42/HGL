package com.lol.hgl.bizz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.FWLDao;
import com.lol.hgl.dto.fwlDto;

@Service
public class FWLBIZZImple implements FWLBizz {

	@Autowired FWLDao dao;
	
	@Override
	public List<fwlDto> fwlList(int memberNo) {
		return dao.fwlList(memberNo);
	}

}
