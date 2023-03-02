package och06;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Fibonazzi
 */
@WebServlet("/Fibonazzi")
public class Fibonazzi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//Integer가 표현할 수 없는 값을 표현할때 사용 인간이 표현할 수 있는 가장 큰 수
    BigInteger[] arr = new BigInteger[100];   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fibonazzi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
    // init 은 버퍼에 저장되 그리고 두고두고 쓰는거 doGet Post에 써도 사용 되지만 성능차이 심해짐
	public void init(ServletConfig config) throws ServletException {
		 System.out.println("Fibonazzi...응애");
		 arr[0] = new BigInteger("1");
		 arr[1] = new BigInteger("1");
		 for(int i = 2; i < arr.length; i++) {
			 arr[i] = arr[i-2].add(arr[i-1]);
		 }
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Fibonazzi doGet...");
		int num = Integer.parseInt(request.getParameter("num"));
		if (num > 100) {
			num = 100;
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body><h2>피보나찌수열</h2>");
		for(int i = 0; i<num; i++) {
			out.println(arr[i]+ "<br>");
		}
		out.println("</body></html>");
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
