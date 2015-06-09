package com.csust.servlet.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csust.dao.UserDao;

/**
 * Servlet implementation class JudgeUser
 */
public class JudgeUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JudgeUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�ж���ѧ��������ʦ. ��ѧ����ת��index��ҳ, ��ʦ�Ļ���ת������Աҳ��
		String username=(String) request.getSession().getAttribute("userName");
		UserDao userDao=new UserDao();
		String userRole = (String) userDao.judgeUser(username);
		
		if(userRole.equals("student")){
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else if(userRole.equals("admin")){
			request.getRequestDispatcher("admin/a_index.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("admin/a_index.jsp").forward(request, response);
		}
	}

}
