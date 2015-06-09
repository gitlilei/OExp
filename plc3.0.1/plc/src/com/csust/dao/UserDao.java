package com.csust.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.csust.entity.User;
import com.csust.impl.DaoImpl;
import com.csust.utils.dbutils.JdbcUtils;
/**
 * 此类的作用主要是用户user在数据库的操作
 * dao模式
 * @author chenzhijun
 *
 */
public class UserDao implements DaoImpl{
	private User user;
    private Connection connection;
    private PreparedStatement pstmt;
    private ResultSet rs;

	public Object add(Object object) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object delete(Object object) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object update(Object object) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object search(Object object) {
		user=(User)object;
		String username = null;
		String password = null;
		String sql="SELECT * FROM plc_userinfo WHERE userid='"+user.getId()+"' AND userpwd='"+user.getPassword()+"';";
		try {
			connection=JdbcUtils.getConnection();//获取连接
			pstmt=connection.prepareStatement(sql);
			rs=pstmt.executeQuery();//执行查询操作,返回ResultSet集合
			while(rs.next()){
				username=rs.getString("userid");//获取数据库里面的用户名
				password=rs.getString("userpwd");//获取数据库里面的密码
			}
			/*判断输入的账户密码和数据库的是否匹配 */
			if(user.getId().equals(username)&&user.getPassword().equals(password)){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtils.releaseResources(rs, pstmt, connection);//执行关闭
		}
		
		return false;
	}

	public Object judgeUser(String username) {
		String sql="SELECT * FROM plc_student WHERE std_userid='"+username+"';";
		try {
			connection=JdbcUtils.getConnection();
			pstmt =connection.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if(!rs.next()){
				return "admin";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			JdbcUtils.releaseResources(rs, pstmt, connection);
		}
		return "student";
		
	}
	

	
}
