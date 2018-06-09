package com.lol.hgl.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.lol.hgl.dto.ggImgDto;

@Component("fileUtils")
public class FileUtil {

	 private static final String filePath = "C:\\Users\\이향은\\git\\HGL\\HGL\\src\\main\\webapp\\image\\";
     
	    public List<ggImgDto> parseInsertFileInfo(HttpServletRequest request) throws Exception{
	        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
	        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();

	        MultipartFile multipartFile = null;
	        List<ggImgDto> list = new ArrayList<ggImgDto>();
	        String originalFileExtension = null; // 확장자
      
	        File file = new File(filePath);
	        if(file.exists() == false){
	            file.mkdirs();
	        }
	         
	        while(iterator.hasNext()){
	            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
	            if(multipartFile.isEmpty() == false){
	            	ggImgDto dto = new ggImgDto();
	       	
	            	dto.setGgOriginalName(multipartFile.getOriginalFilename());
	                //originalFileName = multipartFile.getOriginalFilename();               
	            	originalFileExtension = dto.getGgOriginalName().substring(dto.getGgOriginalName().lastIndexOf("."));
	                dto.setGgStoreName(CommonUtil.getRandomString() + originalFileExtension);
	            	//storedFileName = CommonUtil.getRandomString() + originalFileExtension;
	                file = new File(filePath+dto.getGgStoreName()); 
	                //file = new File(filePath + storedFileName);
	                multipartFile.transferTo(file);
	                dto.setGgImgSize((multipartFile.getSize()));
	              /*  listMap = new HashMap<String,Object>();
	                listMap.put("BOARD_IDX", ggNo);
	                listMap.put("ORIGINAL_FILE_NAME", originalFileName);
	                listMap.put("STORED_FILE_NAME", storedFileName);
	                listMap.put("FILE_SIZE", multipartFile.getSize());
	                list.add(listMap);*/
	                list.add(dto);
	            }
	        }
	        return list;
	    }
	}

	

