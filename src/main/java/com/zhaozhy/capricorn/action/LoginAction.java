package com.zhaozhy.capricorn.action;

import com.zhaozhy.capricorn.entity.Staffer;

public class LoginAction extends BaseAction<Staffer> {

	public String login() throws Exception {
		System.out.println("-====login====");
		return SUCCESS;
	}

	
}
