package com.meet.together.user.service;

import java.util.List;

import com.meet.together.user.dto.UserInfo;

public interface UserService {
	public List<UserInfo> siginUser(UserInfo ui);
}
