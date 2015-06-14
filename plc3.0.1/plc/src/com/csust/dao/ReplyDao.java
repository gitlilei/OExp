package com.csust.dao;

import java.util.ArrayList;

import com.csust.entity.Forum;
import com.csust.entity.ReplyPost;

public class ReplyDao extends BaseDao{
	/**
	 * 插入回复
	 * @param replyPost
	 * @return
	 * @throws Exception
	 */
	public int insertReply(ReplyPost replyPost)throws Exception{
		String sql = "insert into plc_forum_reply(fr_forumid,fr_reply,fr_replyuserid,fr_date)" +
				"values(?,?,?,?)";
		return update(sql, ReplyPost.class, replyPost.getFr_forumid(),replyPost.getFr_reply(),
				replyPost.getFr_replyuserid(),replyPost.getFr_date());
	}
	
	/**
	 * 根据forumid查询所有回复
	 * @param forumId
	 * @return
	 * @throws Exception
	 */
	public ArrayList<ReplyPost> queryAllReply(int forumId)throws Exception{
		String sql = "select * from plc_forum_reply where fr_forumid = ?";
		return (ArrayList<ReplyPost>) queryToList(sql, ReplyPost.class, forumId);
	}
	
	/**
	 *根据帖子id查找回复数
	 * @param forumid
	 * @return
	 * @throws Exception
	 */
	public int queryReplyCount(int forumid)throws Exception{
		String sql = "select * from plc_forum_reply where fr_forumid = ?";
		return ((ArrayList<ReplyPost>) (queryToList(sql, Forum.class, forumid))).size();
	}
}
