package com.lol.hgl.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lol.hgl.dto.fwlDto;
import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.fwlbcmDto;


@Repository
public class FWLDaoImple implements FWLDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String nameSpace = "fwl.";

	public List<fwlDto> fwlList(int memberNo) {
		List<fwlDto> list = new ArrayList<fwlDto>();
		try {
			list = sqlSession.selectList(nameSpace+"fwlList", memberNo);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return list;
	}


	@Override
	public int fwlInsert(fwlDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(nameSpace+"fwlInsert", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}


	@Override
	public int FWLSuccess(int fwlNo) {
		int res = 0;
		try {
			res = sqlSession.update(nameSpace+"fwlFWLSuccess", fwlNo);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public int FWLDelete(int fwlNo) {
		int res = 0;
		try {
			res = sqlSession.insert(nameSpace+"FWLDelete", fwlNo);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}


	@Override
	public int FWLBInsert(fwlbDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(nameSpace+"FWLBInsert", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}


	@Override
	public fwlbDto FWLBDetail(String memberNickName, int fwlbNo) {
		fwlbDto res = new fwlbDto();
		fwlbDto dto = new fwlbDto(memberNickName, fwlbNo);
		try {
			res = sqlSession.selectOne(nameSpace+"FWLBDetail", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}


	@Override
	public List<fwlbcmDto> fwlbcmList(int fwlbNO) {
		List<fwlbcmDto> list = new ArrayList<fwlbcmDto>();
		try {
			list = sqlSession.selectList(nameSpace+"fwlbcmList", fwlbNO);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return list;
	}


	@Override
	public int FWLSuccessCancel(int fwlNo) {
		int res = 0;
		try {
			res = sqlSession.update(nameSpace+"FWLSuccessCancel", fwlNo);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public int FWLBListCount() {
		int res = 0;
		try {
			res = sqlSession.selectOne(nameSpace+"FWLBListCount");			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public List<fwlbDto> fwlbAllList() {
		List<fwlbDto> list = new ArrayList<>();
		try {
			list = sqlSession.selectList(nameSpace+"fwlbAllList");			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	

	@Override
	public int insertFWLBRowNum(int rowNum, int fwlbNo) {
		int res=0;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("rowNum", rowNum);
		map.put("fwlbNo", fwlbNo);
		try {
			res = sqlSession.update(nameSpace+"insertFWLBRowNum", map);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}



	@Override
	public List<fwlbDto> FwlbList(int startPost, int endPost) {
		List<fwlbDto> list = new ArrayList<>();
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startPost", startPost);
		map.put("endPost", endPost);
		try {
			list = sqlSession.selectList(nameSpace+"FwlbList", map);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public int FWLBListSearchCount(String searchNickName) {
		int res = 0;
		searchNickName = "%"+searchNickName+"%";
		try {
			res = sqlSession.selectOne(nameSpace+"FWLBListSearchCount", searchNickName);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public List<fwlbDto> fwlbSearchAllList(String searchNickName) {
		List<fwlbDto> list = new ArrayList<>();
		searchNickName = "%"+searchNickName+"%";
		try {
			list = sqlSession.selectList(nameSpace+"fwlbSearchAllList", searchNickName);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<fwlbDto> FwlbListSearch(int startPost, int endPost, String searchNickName) {
		List<fwlbDto> list = new ArrayList<>();
		Map<String, String> map = new HashMap<String, String>();
		searchNickName = "%"+searchNickName+"%";
		map.put("startPost", String.valueOf(startPost));
		map.put("endPost", String.valueOf(endPost));
		map.put("searchNickName", searchNickName);
		try {
			list = sqlSession.selectList(nameSpace+"FwlbListSearch", map);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int FWLBCMInsert(fwlbcmDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(nameSpace+"FWLBCMInsert", dto);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public int FWLBCMDelete(int fwlbcmNo) {
		int res = 0;
		try {
			res = sqlSession.delete(nameSpace+"FWLBCMDelete", fwlbcmNo);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public int FWLBUpdateReadCount(int fwlbNo) {
		int res = 0;
		try {
			res = sqlSession.update(nameSpace+"FWLBUpdateReadCount", fwlbNo);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public int FWLBDelete(int fwlbNo) {
		int res = 0;
		try {
			res = sqlSession.delete(nameSpace+"FWLBDelete", fwlbNo);			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	


	




	
}
