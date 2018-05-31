package com.lol.hgl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lol.hgl.bizz.GGBizz;
import com.lol.hgl.dto.ggDto;



@Controller
public class GGController {
	
	@Autowired
	private GGBizz bizz;
	
	/*@RequestMapping(value = "GGListForm.do")
	   public String GGListForm() {   
	      return "GGList";
	   }*/
	
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
		
		model.addAttribute("dto",dto);
		
		return "GGDetail";
	}
	
	@RequestMapping(value="GGDelete.do",method= {RequestMethod.GET,RequestMethod.POST})
	public String GGDelete(Model model, int ggNo) {		
		bizz.delete(ggNo);
		return "redirect:GGListForm.do";
	}
	
	@RequestMapping(value="insert.do",  method = RequestMethod.POST)
	public String insert(Model model, ggDto dto) {
		int res = bizz.insert(dto);
		if (res > 0) {
			return "redirect:GGListForm.do";
		} else {
			return "redirect:GGInsertForm.do";
		}
		
	}

}
