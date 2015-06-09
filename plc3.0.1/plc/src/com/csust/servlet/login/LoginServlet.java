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
		String username = request.getParameter("username");//获取输入的用户名
		String password = request.getParameter("password");//获取输入的密码
//String loginUser = (String) request.getSession().getAttribute("user");//获取是用学生登陆还是用管理员登陆
		User user=new User(username,password);//创建登陆用户
		UserDao userDao=new UserDao();
		request.getSession().setAttribute("userName", username);
		
		/*判断登陆用户 账户密码是否匹配*/
		if((Boolean) userDao.search(user)){
			//登陆完成,继续做登陆前的事;
			request.getRequestDispatcher("/JudgeUserServlet").forward(request, response);
		}else{
			//登陆失败
			request.setAttribute("error", "账户密码验证不通过!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}

}
