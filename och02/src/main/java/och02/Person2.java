package och02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Person2
 */
@WebServlet("/Person2")
public class Person2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Person2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		//복수값, 배열로 오면 앞에 String[] 이런식으로 하고 getParameterValues 로 받는다
		String[] notice = request.getParameterValues("notice");
		String job = request.getParameter("job");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><body>");
		out.print("<h1>개인정보</h1>");
		out.println("이름 : " + name + "<p>아이디 : " + id + "<p>");
		out.println("암호 : " + password + "<p>성별: " + id + "<p>");
		out.println("수신메일 : ");
		if(notice != null) {
			for(int i = 0; i < notice.length; i++) {
				out.println(notice[i] + " ");
			}
		} else {
			out.println("없음");
		}
		out.printf("<p>직업 : %s<p>", job);
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
