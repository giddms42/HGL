/*package com.lol.hgl.util;

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

	 private static final String filePath = "C:\\Users\\Hankyung_EDU\\git\\HGL\\HGL\\src\\main\\webapp\\image\\";
     
	    public ggImgDto parseInsertFileInfo(HttpServletRequest request) throws Exception{
	        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
	        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
	       
	        MultipartFile multipartFile = null;
	        ggImgDto dto = new ggImgDto();
	        //String originalFileName = null;
	        String originalFileExtension = null; // 확장자
	       // String storedFileName = null;
	         
	        //List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
	       // Map<String, Object> listMap = null;
	         
	         
	        File file = new File(filePath);
	        if(file.exists() == false){
	            file.mkdirs();
	        }
	         
	        while(iterator.hasNext()){
	            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
	            if(multipartFile.isEmpty() == false){
	            	dto.setGgOriginalName(multipartFile.getOriginalFilename());
	                //originalFileName = multipartFile.getOriginalFilename();               
	            	originalFileExtension = dto.getGgOriginalName().substring(dto.getGgOriginalName().lastIndexOf("."));
	                dto.setGgStoreName(CommonUtil.getRandomString() + originalFileExtension);
	            	//storedFileName = CommonUtil.getRandomString() + originalFileExtension;
	                file = new File(filePath+dto.getGgStoreName()); 
	                //file = new File(filePath + storedFileName);
	                multipartFile.transferTo(file);
	                dto.setGgImgSize((multipartFile.getSize()));
	                listMap = new HashMap<String,Object>();
	                listMap.put("BOARD_IDX", ggNo);
	                listMap.put("ORIGINAL_FILE_NAME", originalFileName);
	                listMap.put("STORED_FILE_NAME", storedFileName);
	                listMap.put("FILE_SIZE", multipartFile.getSize());
	                list.add(listMap);
	            }
	        }
	        return dto;
	    }
	}

	

*/