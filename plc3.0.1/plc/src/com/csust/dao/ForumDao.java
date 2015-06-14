package com.csust.dao;

import java.util.ArrayList;
import java.util.List;

import com.csust.entity.Forum;

public class ForumDao extends BaseDao{
	/**
	 * 插入帖子
	 * @param forum
	 * @return
	 * @throws Exception
	 */
	public int insert(Forum forum)throws Exception{
		String sql = "insert into plc_forum(f_title,f_content,f_userid,f_publishdate,f_type)" +
				"values(?,?,?,?,?)";
		return  update(sql, Forum.class, forum.getF_title(),forum.getF_content(),
				forum.getF_userid(),forum.getF_publishdate(),forum.getF_type());
	}
	
	/**
	 * 查询所有的帖子
	 * @return
	 * @throws Exception
	 */
	public ArrayList<Forum> queryAllPost()throws Exception{
		String sql = "select * from plc_forum order by f_publishdate desc";
		return (ArrayList<Forum>) queryToList(sql, Forum.class,null );
	}
	
	/**
	 * 根据帖子id查找帖子
	 * @param f_id
	 * @return
	 * @throws Exception
	 */
	public Forum queryOnePost(int f_id)throws Exception{
		ArrayList<Forum> list = new ArrayList<Forum>();
		String sql = "select * from plc_forum where f_id = ?";
		list = (ArrayList<Forum>) queryToList(sql, Forum.class,f_id);
		return  list.get(0);
	}
	
	/**
	 * 根据uesrid查找自己所发布的帖子
	 * @param userid
	 * @return
	 * @throws Exception
	 */
	public ArrayList<Forum> queryMyPost(String userid)throws Exception{
		String sql = "select * from plc_forum where f_userid = ?";
		return (ArrayList<Forum>) queryToList(sql, Forum.class, userid);
	}
}
