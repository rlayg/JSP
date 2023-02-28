package och01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Add3
 */
@WebServlet("/Add3")
public class Add3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 목표 : 1부터 누적값 전달
		int num = Integer.parseInt(request.getParameter("num"));
		String loc = request.getParameter("loc");
		System.out.println("Add3 num -> " + num);
		int sum = 0;
		for (int i = 1; i <= num; i++) {
			sum += i;
		}
		//syso는 개발자가 보는거야 사용자는 안보여 PrintWriter이 사용자가 보는거
		System.out.println("Add3 sum -> " + sum);
		
		request.setCharacterEncoding("utf-8");
		//글자 안깨지게 해주는거
		response.setContentType("text/html;charset=utf-8");
		// 공식 --> 사용자 Browser에 보여주는 객체
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.printf("<h1>1부터 %d까지 합계</h1>", num);
		//브라우에 나오는거 확인용 확인햇으면 주석처리 해도 돼
		out.printf("<h4>LOC --> %s</h4>", loc);
		out.println(sum);
		out.println("</body></html>");
		out.close();
	}
	//	syso는 개발자가 보는용 browser out이 일반인이 보는거

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
