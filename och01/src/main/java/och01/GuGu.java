package och01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GuGu
 */
//	GuGu를 찾아갈때는public class GuGu가 아니라 @WebServlet("/GuGu")를 보고 찾아간다
//	class GuGu는 틀려도 돼 GuGu3이라고 해도 된데
//	WEB-INF 하위 web.xml 에 직접 서블릿 적으면 @WebServlet 주석처리 해도 된다 같은기능 
//@WebServlet("/GuGu")
public class GuGu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuGu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. Parameter -> num
		// 2. 구구단 출력
		int num = Integer.parseInt(request.getParameter("num"));
//		사실 둘 다 해주는게 좋아 들어올때 한글이 없었데 그래서 생략했데
//		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.print("<h1>구구단 " + num + "단</h1>");
		for (int i = 1; i<=9; i++) {
			out.printf("%d * %d = %d<br>", num, i, (num*i));
		}
		out.print("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
