package com.gatlingbook.dao;


import com.gatlingbook.model.PostJob;
import com.gatlingbook.model.User;

import java.util.List;

public interface IPostJob {
	List<PostJob> getUserTimelineMessages(User user);
	
	List<PostJob> getUserFullTimelineMessages(User user);
	
	List<PostJob> getPublicTimelineMessages();

	void insertMessage(PostJob m);
}
