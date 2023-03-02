package och06;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Greet
 */
@WebServlet("/Greet")
public class Greet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      PrintWriter log; //맴버변수 만들어줌 log객체 만들어줌 
      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Greet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// Servlet 이 태어날 때 
		try {
			System.out.println("Init Start... (Servlet 이 태어날 때 )");
			//PrintWriter 객체인데 FileWriter로 쓰면 파일에 저장하는 객체를 열어주는애로 사용됨
			log = new PrintWriter(new FileWriter("c:/log/log.txt", true)); //c드라이브에 log폴더 만들어야함
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("예외발생");
		}
		
	}

	/**
	 * Servlet 유언장
	 */
	public void destroy() {
		System.out.println("destroy start...");
		log.flush();	//buffer에 있는 모든걸 토해내라,  db로 치면 커밋과 비슷해 같진 않아
		if(log != null) {
			log.close();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet Start...");
		String name = request.getParameter("name");
		String msg = name + "님 반가워\r\n";
		GregorianCalendar gc = new GregorianCalendar();
		String date = String.format("%TF %TT\r\n", gc, gc);
		// File 출력 --> date + msg
		log.print(date + msg);
		response.setContentType("text/html;charset=utf-8");
		//PrintWriter 여기서는 화면에 출력하는 애로 쓰임
		PrintWriter out = response.getWriter();
		//화면 출력 --> msg
		out.println("<html><body><h2>인사</h2>" + msg);
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
