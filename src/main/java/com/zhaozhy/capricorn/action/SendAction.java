package com.zhaozhy.capricorn.action;

import com.opensymphony.xwork2.ActionSupport;

public class SendAction extends ActionSupport {

	public String execute() throws Exception {
		return "send";
	}
	
	public String login1(){
		return "login1";
	}
}
