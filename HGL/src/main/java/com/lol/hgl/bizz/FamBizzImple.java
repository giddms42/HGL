package com.lol.hgl.bizz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lol.hgl.dao.FamDaoImple;
import com.lol.hgl.dto.famDto;
import com.lol.hgl.dto.healthDto;

@Service
public class FamBizzImple implements FamBizz {
	
	@Autowired
	FamDaoImple dao;

	@Override
	public List<famDto> allFamList(int memberNo) {
		List<famDto> list = dao.allFamList(memberNo);
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
		
		int res = dao.insertFam(famDto);		
		return res;
	}

	@Override
	public famDto famDetail(int famNo) {
		famDto res = dao.famDetail(famNo);
		return res;
	}

	@Override
	public int famDelete(int famNo) {
		int res = dao.famDelete(famNo);
		return res;
	}

	@Override
	public int FamHealthInsert(healthDto healthdto) {
		return dao.FamHealthInsert(healthdto);
	}

	@Override
	public healthDto healthDetail(int famNo) {
		return dao.healthDetail(famNo);
	}



}
