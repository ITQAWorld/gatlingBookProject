package com.gatlingbook.dao;

import com.gatlingbook.model.User;

public interface IUser {

	User getUserbyUsername(String username);

	void registerUser(User user);
}
