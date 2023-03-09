package och17;

import java.io.IOException;


import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//web.xml에서 필터 커걸어 web.xml과 여기 필터 합해서 2개 걸림
@WebFilter("/sub2/*")
public class LoginCheck implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
//		Session 도출 방법
		// HttpServletRequest - HTTP 요청 정보를 담은 객체
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpServletResponse httpServletResponse = (HttpServletResponse) response;
		HttpSession session = httpServletRequest.getSession();
		System.out.println("LoginCheck doFilter...");
		if(session == null || session.equals("")) {
			httpServletResponse.sendRedirect("../login.jsp");
		}
		String id = (String) session.getAttribute("id");
		if(id==null || id.equals("")) {
			httpServletResponse.sendRedirect("../login.jsp");
		}
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

}
