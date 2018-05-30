package com.lol.hgl.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogFilter implements Filter{

	private Logger logger = LoggerFactory.getLogger(LogFilter.class);
	
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		logger.info("LogFilter init()");
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		String RemoteAddr = StringUtils.defaultString(req.getRemoteAddr());
		String url = StringUtils.defaultString(req.getRequestURI().toString());
		String uri = StringUtils.defaultString(req.getRequestURI()); 
		String queryString = StringUtils.defaultString(req.getQueryString()); //경로 뒤에 요청 URL에 포함 된 쿼리 문자열을 반환합니다.
		
		
		
		String referer = StringUtils.defaultString(req.getHeader("referer"));
		String agent = StringUtils.defaultString(req.getHeader("User-Agent"));

		System.out.println("**RemoteAddr : " + RemoteAddr);
		System.out.println("** url : " + url);
		System.out.println("** queryString :" + queryString);
		System.out.println("** referer : " + referer);
		System.out.println("** agent : " + agent);

		StringBuffer result = new StringBuffer();
		result.append(":")
		.append(RemoteAddr)
		.append(url)
		.append(uri)
		.append(queryString)
		.append(":")
		.append(referer)
		.append(agent);
		
		logger.info("[LogFilter]" + result.toString());
		chain.doFilter(req, response);
	}
	

	@Override
	public void destroy() {
		logger.info("LogFilter destory()");
		
	}

}
