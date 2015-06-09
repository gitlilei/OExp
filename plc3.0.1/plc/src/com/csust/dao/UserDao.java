package com.csust.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.csust.entity.User;
import com.csust.impl.DaoImpl;
import com.csust.utils.dbutils.JdbcUtils;
/**
 * �����������Ҫ���û�user�����ݿ�Ĳ���
 * daoģʽ
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
			connection=JdbcUtils.getConnection();//��ȡ����
			pstmt=connection.prepareStatement(sql);
			rs=pstmt.executeQuery();//ִ�в�ѯ����,����ResultSet����
			while(rs.next()){
				username=rs.getString("userid");//��ȡ���ݿ�������û���
				password=rs.getString("userpwd");//��ȡ���ݿ����������
			}
			/*�ж�������˻���������ݿ���Ƿ�ƥ�� */
			if(user.getId().equals(username)&&user.getPassword().equals(password)){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JdbcUtils.releaseResources(rs, pstmt, connection);//ִ�йر�
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
