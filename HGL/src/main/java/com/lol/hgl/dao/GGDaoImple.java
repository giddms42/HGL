package com.lol.hgl.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.ggcmDto;

@Repository
public class GGDaoImple implements GGDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "gg.";

	@Override
	public int ggListCount() {
		int res = 0;
		try {
			res = sqlSession.selectOne(namespace + "ggListCount");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public List<Integer> ggListRowNum(int startPost, int endPost) {
		List<Integer> res = new ArrayList<Integer>();
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startPost", startPost);
		map.put("endPost", endPost);
		   try {
			   res = sqlSession.selectList(namespace+"ggListRowNum", map);
		      } catch (Exception e) {
		         e.printStackTrace();
		      }
		      return res;
	}
	
	
	@Override
	public List<ggDto> selectAll(int startPost, int endPost) {
		List<ggDto> res = new ArrayList<ggDto>();
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startPost", startPost);
		map.put("endPost", endPost);
		   try {
			   res = sqlSession.selectList(namespace+"selectAll", map);
		      } catch (Exception e) {
		         e.printStackTrace();
		      }
		      return res;
	}

	@Override
	public ggDto selectOne(int seq) {
		ggDto res = new ggDto();
		try {
			res = sqlSession.selectOne(namespace+"selectOne", seq);
			}catch(Exception e ) {
				e.printStackTrace();
			}		
		return res;
	}

	@Override
	public int insert(ggDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(namespace+"insert", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
		
	}

	@Override
	public int delete(int seq) {
		int res = 0;
		try {
			res = sqlSession.delete(namespace+"delete", seq);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public int update(ggDto dto) {
		System.out.println(dto.getGgCont());
		System.out.println(dto.getGgTitle());
		System.out.println(dto.getGgNo());
		int res = 0;
		try {
			res = sqlSession.update(namespace+"update", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		System.out.println(res);
		return res;
	}

	@Override
	public int repleyInsert(ggcmDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(namespace+"repleyInsert", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public int repleyDelete(int seq) {
		int res = 0;
		try {
			res = sqlSession.delete(namespace+"repleyDelete", seq);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public int repleyUpdate(ggcmDto dto) {
		int res = 0;
		try {
			res = sqlSession.update(namespace+"repleyUpdate", dto);
			}catch(Exception e ) {
				e.printStackTrace();
			}	
		return res;
	}

	@Override
	public List<ggcmDto> repleySelectOne(int seq) {
		List<ggcmDto> res = new ArrayList<ggcmDto>();
		try {
			res = sqlSession.selectList(namespace+"repleySelectList", seq);
			}catch(Exception e ) {
				e.printStackTrace();
			}		
		return res;
	}

	@Override
	public int updateReadCount(int ggNo) {
		int res = 0;
		try {
			res = sqlSession.update(namespace + "updateReadCount", ggNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int ggListSerchCount(String topic, String keyword) {
		int res = 0;
		keyword = "%"+keyword+"%";
		Map<String, String> map = new HashMap<String, String>();
		map.put("topic", topic);
		map.put("keyword", keyword);
		try {
			res = sqlSession.selectOne(namespace + "ggListSerchCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public List<ggDto> selectSearchAll(int startPost, int endPost, String topic, String keyword) {
		List<ggDto> list = new ArrayList<ggDto>();
		keyword = "%"+keyword+"%";
		Map<String, String> map = new HashMap<String, String>();
		map.put("startPost", String.valueOf(startPost));
		map.put("endPost", String.valueOf(endPost));
		map.put("topic", topic);
		map.put("keyword", keyword);
		try {
			list = sqlSession.selectList(namespace+"selectSearchAll", map);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<Integer> ggListSearchRowNum(int startPost, int endPost, String topic, String keyword) {
		List<Integer> list = new ArrayList<Integer>();
		keyword = "%"+keyword+"%";
		Map<String, String> map = new HashMap<String, String>();
		map.put("startPost", String.valueOf(startPost));
		map.put("endPost", String.valueOf(endPost));
		map.put("topic", topic);
		map.put("keyword", keyword);
		try {
			list = sqlSession.selectList(namespace+"ggListSearchRowNum", map);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return list;
	}



}
