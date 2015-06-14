package com.csust.servlet.forum;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csust.dao.ReplyDao;
import com.csust.entity.ReplyPost;

/**
 * Servlet implementation class ReplyServlet
 */
public class ReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int forumid = Integer.parseInt(request.getParameter("forumid"));
		String username = (String) request.getSession().getAttribute("userName");
		String replyContent = request.getParameter("editor1");
		String date = (new Date()).toLocaleString();
		ReplyPost replyPost  = new ReplyPost(forumid,replyContent,username,date);
		ReplyDao replyDao = new ReplyDao();
		try {
			int isInsert = replyDao.insertReply(replyPost);
			if(isInsert != -1){
				response.sendRedirect("./student/forum.jsp?f_id="+forumid);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
