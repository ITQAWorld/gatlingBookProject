package com.gatlingbook.service;

import com.gatlingbook.dao.IPostJob;
import com.gatlingbook.dao.IUser;
import com.gatlingbook.model.LoginResult;
import com.gatlingbook.model.PostJob;
import com.gatlingbook.model.User;
import com.gatlingbook.util.Password;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplyForJobService {
	
	@Autowired
	private IUser IUser;
	
	@Autowired
	private IPostJob IPostJob;

	public List<PostJob> getUserFullTimelineMessages(User user) {
		return IPostJob.getUserFullTimelineMessages(user);
	}

	public List<PostJob> getUserTimelineMessages(User user) {
		return IPostJob.getUserTimelineMessages(user);
	}

	public List<PostJob> getPublicTimelineMessages() {
		return IPostJob.getPublicTimelineMessages();
	}
	
	public User getUserbyUsername(String username) {
		return IUser.getUserbyUsername(username);
	}



	public LoginResult checkUser(User user) {
		LoginResult result = new LoginResult();
		User userFound = IUser.getUserbyUsername(user.getUsername());
		if(userFound == null) {
			result.setError("Invalid username");
		} else if(!Password.verifyPassword(user.getPassword(), userFound.getPassword())) {
			result.setError("Invalid password");
		} else {
			result.setUser(userFound);
		}
		
		return result;
	}
	
	public void registerUser(User user) {
		user.setPassword(Password.hashPassword(user.getPassword()));
		IUser.registerUser(user);
	}

	public void setIUser(IUser IUser) {
		this.IUser = IUser;
	}

	public void setIPostJob(IPostJob IPostJob) {
		this.IPostJob = IPostJob;
	}
}
