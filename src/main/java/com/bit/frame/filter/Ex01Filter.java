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



public class Ex01Filter implements Filter {

	//서버가 켜질 때 발생한다.  
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Ex01Filter init");

	}
	
	//url 접근할 때 발생한다. 
	//서블릿과 필터가 동시에 존재하면 필터가 서블릿을 덮는다.
	//하나의 url로 여러개의 필터가 매핑되어 있을 경우 chain.doFilter(request, response); 을 통해 다음 필터로 넘길 수 있다. 
	//nodeJs의 express.use('url', function(){}, next) 의 next와 비슷한 느낌이다.
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("before Ex01Filter doFilter");
		chain.doFilter(request, response);
		System.out.println("end Ex01Filter doFilter");
	}

	@Override
	public void destroy() {
		System.out.println("Ex01Filter destroy");

	}

}
