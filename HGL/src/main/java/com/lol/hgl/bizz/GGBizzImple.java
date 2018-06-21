package com.lol.hgl.bizz;


import java.util.ArrayList;
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
	public void inserGGListRowNum() {
		List<ggDto> list = dao.ggAllList();
		int rowNum = 1;
		for(int i=0; i<list.size(); i++) {
			int ggNo = list.get(i).getGgNo();
			dao.insertGGRowNum(rowNum, ggNo);
			rowNum++;
		}
	}
	
	@Override
	public List<ggDto> selectAll(int startPost, int endPost) {
		List<ggDto> res = dao.selectAll(startPost, endPost);
		return res;
	}
	
	@Override
	public int ggListSerchCount(String topic, String keyword) {
		return dao.ggListSerchCount(topic, keyword);
	}

	@Override
	public void insertGGSearchRowNum(String topic, String keyword) {
		List<ggDto> list = dao.ggSearchAllList(topic, keyword);
		int rowNum = 1;
		for(int i=0; i<list.size(); i++) {
			int ggNo = list.get(i).getGgNo();
			System.out.println(ggNo);
			dao.insertGGRowNum(rowNum, ggNo);
			rowNum++;
		}
		
	}
	
	@Override
	public List<ggDto> selectSearchAll(int startPost, int endPost, String topic, String keyword) {
		List<ggDto> list = dao.selectSearchAll(startPost, endPost, topic, keyword);
		return list;
	}

	

	@Override
	public ggDto selectOne(int seq) {
		return dao.selectOne(seq);
	}

	@Override
	public int insert(ggDto dto, HttpServletRequest request) throws Exception {
		int res = dao.insert(dto);
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
		            
		            ggImgDto imgDto = fileUtils.parseInsertFileInfo(multipartFile);
		            int ggNo = dao.newGgNo();
		            imgDto.setGgNo(ggNo);
		            imgDto.setGgImgCreatUser(dto.getGgWriter());
		            dao.insertGgImage(imgDto);
		        }
		    }
		return res;
	}

	@Override
	public int delete(int ggNo) {
		List<ggImgDto> list = dao.imgSelectList(ggNo);
		fileUtils.deleteFile(list);
		dao.deleteImg(ggNo);
		int res = dao.delete(ggNo);
		return res;
	}
	@Override
	public int update(ggDto dto, HttpServletRequest request) throws Exception {
		List<ggImgDto> list = dao.imgSelectList(dto.getGgNo());
		int imgListCount = list.size();
		if(imgListCount==0) {  // 처음부터 등록한 이미지가 없다면
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
			            ggImgDto imgDto = fileUtils.parseInsertFileInfo(multipartFile);
			            imgDto.setGgNo(dto.getGgNo());
			            imgDto.setGgImgCreatUser(dto.getGgWriter());
			            dao.insertGgImage(imgDto);
			        }
			    }
		}else {//등록한 파일이 있엇다면
			dao.updeateImgDelY(dto.getGgNo());
			if(request.getParameterValues("IDX")!=null) { // 기존 파일을 유지함. 
				String[] IDX = request.getParameterValues("IDX");
				for(int i=0; i<IDX.length; i++) {
					System.out.println("기존 파일 이미지 번호:"+IDX[i]);
				}
				dao.updeateImgDelN(IDX);		
			}
			dao.deleteImgDelY();
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
			            ggImgDto imgDto = fileUtils.parseInsertFileInfo(multipartFile);
			            imgDto.setGgNo(dto.getGgNo());
			            imgDto.setGgImgCreatUser(dto.getGgWriter());
			            dao.insertGgImage(imgDto);
			        }
			    }
		}

		
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

	@Override
	public List<ggImgDto> imgSelectOne(int ggNo) {
		return dao.imgSelectList(ggNo);
	}

}
