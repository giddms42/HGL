package com.lol.hgl.dao;

import java.util.List;

import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.ggImgDto;
import com.lol.hgl.dto.ggcmDto;

public interface GGDao {
	
	
	public int ggListCount();
	public List<Integer> ggListRowNum(int startPost, int endPost);
	public List<ggDto> selectAll(int startPost, int endPost);
	
	public int ggListSerchCount(String topic, String keyword);
	public List<ggDto> selectSearchAll(int startPost, int endPost, String topic, String keyword);
	public List<Integer> ggListSearchRowNum(int startPost, int endPost, String topic, String keyword);
	
	public ggDto selectOne(int seq);
	public int insert(ggDto dto);
	public int delete(int seq);
	public int update(ggDto dto);
	public int updateReadCount(int ggNo);	
	public List<ggcmDto> repleySelectOne(int seq);
	public int repleyInsert(ggcmDto dto);
	public int repleyDelete(int seq);
	public int repleyUpdate(ggcmDto dto);
	public int newGgNo();
	public int insertGgImage(ggImgDto dto);
	public List<ggImgDto> imgSelectOne(int ggNo);
	public int deleteImg(int ggNo);
	

}
