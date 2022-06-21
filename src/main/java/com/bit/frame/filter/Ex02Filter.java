package com.bit.frame.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;


@WebFilter(value="/*", initParams = {
		@WebInitParam(name="encoding", value="utf-8")
})
public class Ex02Filter implements Filter{
	String encoding = "utf-8";

	//init 시점에서 XML 에서 정의 된 파라미터를 받을 수 있다. 
	@Override
	public void init(FilterConfig config) throws ServletException {
		System.out.println("Ex02Filter init");
		encoding = config.getInitParameter("encoding");
	}

	//연결된 마지막 필터에서 chain.doFilter(request, response); 를 할 때 서블릿으로 넘어간다. 
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("before Ex02Filter doFilter");
		HttpServletRequest req = (HttpServletRequest)request;
		if(!"GET".equals(req.getMethod()))request.setCharacterEncoding(encoding);
		chain.doFilter(request, response);
		System.out.println("end Ex02Filter doFilter");
	}

	@Override
	public void destroy() {
		System.out.println("Ex02Filter destroy");
		
	}

}
