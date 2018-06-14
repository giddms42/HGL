package com.lol.hgl.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lol.hgl.dto.fwlbDto;
import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.memberDto;

@Repository
public class AdminDaoImple implements AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String nameSpace = "admin.";

	@Override
	public int memberAllListCount() {
		int res = 0;
		try {
			res = sqlSession.selectOne(nameSpace+"memberAllListCount");
		}catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	@Override
	public List<memberDto> memberAllList(int startPost, int endPost) {
		List<memberDto> list = new ArrayList<memberDto>();
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startPost", startPost);
		map.put("endPost", endPost);
		try {
			list = sqlSession.selectList(nameSpace+"memberAllList", map);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public memberDto memberSelectOne(String memberNickName) {
		memberDto dto = new memberDto();
		try {
			dto=sqlSession.selectOne(nameSpace+"memberSelectOne",memberNickName);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public int ggCount(String memberNickName) {
		int res = 0;
		try {
			res = sqlSession.selectOne(nameSpace+"ggCount",memberNickName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int fwlbCount(String memberNickName) {
		int res = 0;
		try {
			res = sqlSession.selectOne(nameSpace+"fwlbCount",memberNickName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public List<ggDto> memberGGList(int startPost, int endPost, String memberNickName) {
		List<ggDto> res = new ArrayList<ggDto>();
		Map<String, String> map = new HashMap<String, String>();
		map.put("startPost", String.valueOf(startPost));
		map.put("endPost", String.valueOf(endPost));
		map.put("memberNickName", memberNickName);
		try {
			res = sqlSession.selectList(nameSpace+"memberGGList",map);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public List<fwlbDto> memberFwlbList(int startPost, int endPost, String memberNickName) {
		List<fwlbDto> res = new ArrayList<fwlbDto>();
		Map<String, String> map = new HashMap<String, String>();
		map.put("startPost", String.valueOf(startPost));
		map.put("endPost", String.valueOf(endPost));
		map.put("memberNickName", memberNickName);
		try {
			res = sqlSession.selectList(nameSpace+"memberFwlbList",map);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int ggDelete(int ggNo) {
		int res = 0;
		try {
			res = sqlSession.delete(nameSpace+"ggDelete",ggNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int fwlbDelete(int fwlbNo) {
		int res = 0;
		try {
			res = sqlSession.delete(nameSpace+"fwlbDelete",fwlbNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int prohibitCount(String memberNickName) {
		int res = 0;
		try {
			res = sqlSession.update(nameSpace+"prohibitCount",memberNickName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int prohibitChk(String memberNickName) {
		int res = 0;
		try {
			res = sqlSession.update(nameSpace+"prohibitChk",memberNickName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int prohibitMangeTime(memberDto dto) {
		int res = 0;
		try {
			res = sqlSession.update(nameSpace+"prohibitMangeTime",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}



	

}
