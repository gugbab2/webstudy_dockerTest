package com.bit.frame.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

//리스너는 url 등록이 필요가 없고, 서버가 올라가고 내려갈 때 실행
//리스터에 종류에 따라 호출 시점이 다르다. 

@WebListener
public class My1Listener implements ServletContextListener{

	//서버 실행할 때 (init 보다 앞에)
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("1contextInitialized");
	}

	//서버 꺼질 때 (destroy 보다 뒤에)
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("1contextDestroyed");
	}
}
