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
System.out.println();
System.out.println("得到nofilter配置的初值:"+noFilter);
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		String uri=req.getRequestURI();
System.out.println("得到uri "+uri);
		if(noFilter!=null){
			String[] pass=noFilter.split(";");
System.out.print("过滤的url:  ");
			for(int i=0;i<pass.length;i++){
				if(pass[i]==null||"".equals(pass[i])) continue;
System.out.print(pass[i]+" ");
				if(uri.indexOf(pass[i])!=-1){
					chain.doFilter(request, response);
					return;
				}
			}
		}
/*		if(uri.endsWith(".js")||uri.endsWith(".css")){
			chain.doFilter(request, response);//如果请求的js/css页面uri可以放行.
			//return;
			
		}
		*/
		
		String userName = (String) req.getSession().getAttribute("userName");
System.out.print("userName: "+userName + " req.getContexPath(): "+req.getContextPath());
		if(userName==null&&!uri.endsWith(".js")&&!uri.endsWith(".css")){//如果请求的文件userName为空,请求的不是js/css文件   true执行跳转;
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
