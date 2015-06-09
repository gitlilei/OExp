package com.csust.servlet.error;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ErrorDo
 */
public class ErrorDo extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ErrorDo() {
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
		Integer status_code=(Integer)request.getAttribute("javax.servlet.error.status_code");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int num=status_code.intValue();
System.out.println(num);
		out.println("<html><head><title>error page</title></head>");
		out.println("<body>");
		switch(num){
			case 401:
				break;
			case 404:
				out.println("http error code :" + status_code);
				break;
		}
		out.println(" <br/> 报错页面可以自己修改提示信息");
		out.println("</body></html>");
		out.close();
	}

}
