package com.lol.hgl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lol.hgl.bizz.GGBizz;
import com.lol.hgl.dto.ggDto;
import com.lol.hgl.dto.ggcmDto;



@Controller
public class GGController {
	
	@Autowired
	private GGBizz bizz;
	
	@RequestMapping(value = "FChart.do")
	   public String FChart() {   
	      return "FChart";
	   }
	
	@RequestMapping(value = "ys.do")
	   public String ys() {   
	      return "ys";
	   }
	
	@RequestMapping(value = "GGInsertForm.do")
	   public String GGInsertForm() {   
	      return "GGInsert";
	   }
	
	@RequestMapping(value = "GGUpdateForm.do")
	   public String GGUpdateForm() {   
	      return "GGUpdate";
	   }
	
	@RequestMapping(value = "GGListForm.do")
	public String GGListForm(Model model) {
		List<ggDto> list = bizz.selectAll();
		model.addAttribute("list", list);
		return "GGList";
	}
	
	@RequestMapping(value="GGDetailForm.do",method= {RequestMethod.GET,RequestMethod.POST})
	public String GGDetailForm(Model model, int ggNo) {
		
		ggDto dto = bizz.selectOne(ggNo);
		List<ggcmDto> dto2 = bizz.repleySelectOne(ggNo);
		
		model.addAttribute("dto",dto);
		model.addAttribute("dto2",dto2);
		
		return "GGDetail";
	}
	
	@RequestMapping(value="GGDelete.do",method= {RequestMethod.GET,RequestMethod.POST})
	public String GGDelete(Model model, int ggNo) {		
		bizz.delete(ggNo);
		return "redirect:GGListForm.do";
	}
	
	@RequestMapping(value="insert.do",  method = {RequestMethod.GET,RequestMethod.POST})
	public String insert(Model model, ggDto dto) {
		int res = bizz.insert(dto);
		if (res > 0) {
			return "redirect:GGListForm.do";
		} else {
			return "redirect:GGInsertForm.do";
		}	
	}
	
	@RequestMapping(value = "GGUpdateForm.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String GGUpdateForm(Model model, int ggNo) {
		ggDto dto = bizz.selectOne(ggNo);
		model.addAttribute("dto", dto);
		return "GGUpdate";
	}
	
	@RequestMapping(value = "update.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String update(Model model, ggDto dto) {
		int res = bizz.update(dto);
		if (res > 0) {
			return "redirect:GGDetailForm.do?ggNo="+dto.getGgNo();
		} else {
			return "redirect:updateForm.do?ggNo=" + dto.getGgNo();
		}
	}
	
	@RequestMapping(value = "GGRepleyInsert.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String GGRepleyInsert(Model model, ggcmDto dto) {
		System.out.println(dto.getGgNo());
		System.out.println(dto.getGgcmWriter());
		System.out.println(dto.getGgcmCont());
		System.out.println("으아아아 : " + dto.getGgcmDate());
		int res = bizz.repleyInsert(dto);
		
		return "redirect:GGDetailForm.do?ggNo="+dto.getGgNo();
	}
	
	@RequestMapping(value = "GGRepleyDelete.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String GGRepleyDelete(Model model, ggcmDto dto) {
		int res = bizz.repleyDelete(dto.getGgcmNo());
		System.out.println("들어봐요허어~ : "+res);
		if (res > 0) {
			return "redirect:GGDetailForm.do?ggNo="+dto.getGgNo();
		} else {
			return "redirect:GGDetailForm.do?ggNo=" + dto.getGgNo();
		}
	}

}
