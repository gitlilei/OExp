package com.csust.servlet.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csust.dao.UserDao;
import com.csust.entity.User;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");//��ȡ������û���
		String password = request.getParameter("password");//��ȡ���������
//String loginUser = (String) request.getSession().getAttribute("user");//��ȡ����ѧ����½�����ù���Ա��½
		User user=new User(username,password);//������½�û�
		UserDao userDao=new UserDao();
		request.getSession().setAttribute("userName", username);
		
		/*�жϵ�½�û� �˻������Ƿ�ƥ��*/
		if((Boolean) userDao.search(user)){
			//��½���,��������½ǰ����;
			request.getRequestDispatcher("/JudgeUserServlet").forward(request, response);
		}else{
			//��½ʧ��
			request.setAttribute("error", "�˻�������֤��ͨ��!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}

}
