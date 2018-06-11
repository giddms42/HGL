package com.lol.hgl.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.kindstoreDto;

@Repository
public class kindstoreDaoImple implements kindstoreDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "kindstore.";
	
	@Override
	public kindstoreDto selectOne(int kindNum) {
		kindstoreDto res = new kindstoreDto();
		try {
			res = sqlSession.selectOne(namespace+"selectOne",kindNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public List<kindstoreDto> selectSearchAll(int startPost, int endPost, String kindDo, String kindCity) {
		List<kindstoreDto> list = new ArrayList<kindstoreDto>();
		Map<String, String> map = new HashMap<String, String>();
		if(kindDo.equals("세종특별자치시")) {
			kindDo = "%"+kindDo+"%";
			System.out.println("다오의 세종특별자치시"+kindDo);
			map.put("startPost", String.valueOf(startPost));
			map.put("endPost", String.valueOf(endPost));
			map.put("kindDo", kindDo);
			try {
				list = sqlSession.selectList(namespace+"selectSearchOne",map);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}else {
			kindDo = "%"+kindDo+"%";
			kindCity = "%"+kindCity+"%";
			System.out.println(kindDo);
			System.out.println(kindCity);
			map.put("startPost", String.valueOf(startPost));
			map.put("endPost", String.valueOf(endPost));
			map.put("kindDo", kindDo);
			map.put("kindCity", kindCity);
			try {
				list = sqlSession.selectList(namespace+"selectSearchAll",map);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
			
		}
	}

	@Override
	public int kindstoreListSerchCount(String kinddo, String kindcity) {
		int res = 0;
		if(kinddo.equals("세종특별자치시")) {
			kinddo = "%"+kinddo+"%";
			try {
				res = sqlSession.selectOne(namespace+"kindstoreListSerchCountOne",kinddo);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return res;
		}else { 
			Map<String, String> map = new HashMap<String, String>();
			kinddo = "%"+kinddo+"%";
			kindcity = "%"+kindcity+"%";
			map.put("kindDo", kinddo);
			map.put("kindCity", kindcity);
			try {
				res = sqlSession.selectOne(namespace+"kindstoreListSerchCountAll",map);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return res;
			
		}
	}
	
}
