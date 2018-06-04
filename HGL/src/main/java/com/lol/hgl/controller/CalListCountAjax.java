package com.lol.hgl.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lol.hgl.dao.CalDao;
import com.lol.hgl.dao.CalDaoImple;

import net.sf.json.JSONObject;

@WebServlet("/CalListCountAjax.do")
public class CalListCountAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CalListCountAjax() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
		
	}

	/*
	 * commons-beanutils
	 * commons-collections
	 * commons-lang
	 * commons-logging
	 * ezmorph
	 * json-lib
	 * 
	 * json 사용하기 위한 jar들
	 * json-lib (net.sf.json)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/json; charset=UTF-8");
		
		String id = request.getParameter("id");
		String yyyyMMdd = request.getParameter("yyyyMMdd");
		
		CalDao dao = new CalDaoImple();
		
		int count = dao.getCalViewCount(id, yyyyMMdd);
		System.out.println("일정 갯수 : " + count);

		Map<String, Integer>map=new HashMap<String,Integer>();
		map.put("calCount", count);
		
		//json객체생성
		JSONObject obj=JSONObject.fromObject(map);
		
		//브라우저에 출력할 IO객체생성
		PrintWriter out=response.getWriter();
		
		//json객체에 구현된 write()메서드가 out(PrintWriter)을 이용해서 생성된 객체를 브라우저로 출력
		obj.write(out);
	}
}




