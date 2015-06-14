package com.csust.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class LoginFilter
 */
public class LoginFilter implements Filter {
	
	private FilterConfig config;
	

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String noFilter = config.getInitParameter("nologinfilter");

		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		String uri=req.getRequestURI();
		
		if(noFilter!=null){
			String[] pass=noFilter.split(";");

			for(int i=0;i<pass.length;i++){
				if(pass[i]==null||"".equals(pass[i])) continue;

				if(uri.indexOf(pass[i])!=-1){
					chain.doFilter(request, response);
					return;
				}
			}
		}
		
		String userName = (String) req.getSession().getAttribute("userName");

		if(userName==null&&!uri.endsWith(".js")&&!uri.endsWith(".css")){//���������ļ�userNameΪ��,����Ĳ���js/css�ļ�   trueִ����ת;
			String url=req.getContextPath()+"/"+"login.jsp";
			resp.sendRedirect(url);
		}else{
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		config = fConfig;
	}

}
