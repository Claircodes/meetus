package com.meet.together.common.utils;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {

	
	public void sessionCreated(HttpSessionEvent event) {
		//log.info("Session ID => "+event.getSession().getId() + ", start time =>" + (new Date()).toString());
	}

	public void sessionDestroyed(HttpSessionEvent event) {
		//log.info("Session ID => "+event.getSession().getId() + ", end time =>" + (new Date()).toString());
	}

}
