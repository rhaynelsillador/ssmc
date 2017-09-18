package net.ssmc.dao;

import java.util.List;

import net.ssmc.model.ContactUsReply;

public interface ContactUsReplyDao {

	List<ContactUsReply> findAll(long id);
	
}
