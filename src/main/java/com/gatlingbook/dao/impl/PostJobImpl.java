package com.gatlingbook.dao.impl;

import com.gatlingbook.dao.IPostJob;
import com.gatlingbook.model.PostJob;
import com.gatlingbook.model.User;
import com.gatlingbook.util.Gravatar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class PostJobImpl implements IPostJob {
	
	private static final String GRAVATAR_DEFAULT_IMAGE_TYPE = "retro";
	private static final int GRAVATAR_SIZE = 48;
	private NamedParameterJdbcTemplate template;

	@Autowired
	public PostJobImpl(DataSource ds) {
		template = new NamedParameterJdbcTemplate(ds);
	}

	@Override
	public List<PostJob> getUserTimelineMessages(User user) {
		Map<String, Object> params = new HashMap<String, Object>();
        params.put("id", user.getId());

		String sql = "select message.*, user.* from message, user where " +
				"user.user_id = message.author_id and user.user_id = :id " +
				"order by message.pub_date desc";
		List<PostJob> result = template.query(sql, params, messageMapper);

		return result;
	}

	@Override
	public List<PostJob> getUserFullTimelineMessages(User user) {
		Map<String, Object> params = new HashMap<String, Object>();
        params.put("id", user.getId());
        
		String sql = "select message.*, user.* from message, user " +
				"where message.author_id = user.user_id and ( " +
				"user.user_id = :id or " +
				"user.user_id in (select application_id from application " +
                                    "where application_id = :id))" +
                "order by message.pub_date desc";
		List<PostJob> result = template.query(sql, params, messageMapper);
		
		return result;
	}

	@Override
	public List<PostJob> getPublicTimelineMessages() {
		Map<String, Object> params = new HashMap<String, Object>();
        
		String sql = "select message.*, user.* from message, user " +
				"where message.author_id = user.user_id " +
				"order by message.pub_date desc";
		List<PostJob> result = template.query(sql, params, messageMapper);
		
		return result;
	}

	@Override
	public void insertMessage(PostJob m) {
		Map<String, Object> params = new HashMap<String, Object>();
        params.put("userId", m.getUserId());
		params.put("jobs",m.getJobs());
		params.put("text", m.getText());
        params.put("pubDate", m.getPubDate());

        String sql = "insert into message (author_id,job,text, pub_date) values (:userId,:job ,:text, :pubDate)";
		template.update(sql, params);
	}
	
	private RowMapper<PostJob> messageMapper = (rs, rowNum) -> {
		PostJob m = new PostJob();
		m.setId(rs.getInt("message_id"));
		m.setUserId(rs.getInt("author_id"));
		m.setUsername(rs.getString("username"));
		m.setText(rs.getString("text"));
		m.setText(rs.getString("job"));
		m.setPubDate(rs.getTimestamp("pub_date"));
		m.setGravatar(Gravatar.gravatarURL(rs.getString("email"), GRAVATAR_DEFAULT_IMAGE_TYPE, GRAVATAR_SIZE));
		
		return m;
	};

}
