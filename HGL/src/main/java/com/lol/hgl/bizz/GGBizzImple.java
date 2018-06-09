package com.lol.hgl.bizz;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import com.lol.hgl.util.FileUtil;
import com.lol.hgl.dao.GGDao;
import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.ggImgDto;
import com.lol.hgl.dto.ggcmDto;

@Service
public class GGBizzImple implements GGBizz {

	@Autowired
	private GGDao dao;
	
	 @Autowired
	  private FileUtil fileUtils;

	
	@Override
	public int ggListCount() {
		return dao.ggListCount();
	}
	
	@Override
	public List<ggDto> selectAll(int startPost, int endPost) {
		List<ggDto> res = dao.selectAll(startPost, endPost);
		List<Integer> rowNum = dao.ggListRowNum(startPost, endPost);
		for(int i=0; i<rowNum.size(); i++) {
			res.get(i).setGgRowNum(rowNum.get(i));
		}
		return res;
	}
	
	@Override
	public int ggListSerchCount(String topic, String keyword) {
		return dao.ggListSerchCount(topic, keyword);
	}

	@Override
	public List<ggDto> selectSearchAll(int startPost, int endPost, String topic, String keyword) {
		List<ggDto> list = dao.selectSearchAll(startPost, endPost, topic, keyword);
		List<Integer> rowNum = dao.ggListSearchRowNum(startPost, endPost, topic, keyword);
		for(int i=0; i<list.size(); i++) {
			list.get(i).setGgRowNum(rowNum.get(i));
		}
		return list;
	}

	

	@Override
	public ggDto selectOne(int seq) {
		return dao.selectOne(seq);
	}

	@Override
	public int insert(ggDto dto, HttpServletRequest request) throws Exception {
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		 Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		 MultipartFile multipartFile = null;
		    while(iterator.hasNext()){
		        multipartFile = multipartHttpServletRequest.getFile(iterator.next());
		        if(multipartFile.isEmpty() == false){
		            System.out.println("------------- file start -------------");
		            System.out.println("name : "+multipartFile.getName());
		            System.out.println("filename : "+multipartFile.getOriginalFilename());
		            System.out.println("size : "+multipartFile.getSize());
		            System.out.println("-------------- file end --------------\n");
		            
		            List<ggImgDto> list = fileUtils.parseInsertFileInfo(request);
		            int ggNo = dao.newGgNo();
		            for(int i=0; i<list.size(); i++) {
		            	list.get(i).setGgNo(ggNo);
		            	list.get(i).setGgCreatUser(dto.getGgWriter());
		            	dao.insertGgImage(list.get(i));
		            }
	
		        }
		    }
	    
	
	    		
		return dao.insert(dto);
	}

	@Override
	public int delete(int seq) {
		return dao.delete(seq);
	}

	@Override
	public int update(ggDto dto) {
		return dao.update(dto);
	}

	@Override
	public int repleyInsert(ggcmDto dto) {
		return dao.repleyInsert(dto);
	}

	@Override
	public int repleyDelete(int seq) {
		return dao.repleyDelete(seq);
	}

	@Override
	public int repleyUpdate(ggcmDto dto) {
		return dao.repleyUpdate(dto);
	}

	@Override
	public List<ggcmDto> repleySelectOne(int seq) {
		return dao.repleySelectOne(seq);
	}

	@Override
	public int updateReadCount(int ggNo) {
		return dao.updateReadCount(ggNo);
	}

	

}
