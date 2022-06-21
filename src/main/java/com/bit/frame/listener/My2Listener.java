package com.bit.frame.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class My2Listener implements ServletRequestListener {

	//필터 호출 이전에 호출
	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		System.out.println("2requestDestroyed");
	}

	//모든 필터 호출 이후에 호출
	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		System.out.println("2requestInitialized");
	}

}
