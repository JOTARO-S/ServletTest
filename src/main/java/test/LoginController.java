package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login2")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGetなのでloginにアクセスしたらforward(URLはそのまま)でexam0510/form.jspを表示させる
		request.getRequestDispatcher("exam0510/form.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doPostなのでloginに対してPOSTされた時にsendRedirect(リダイレクトされるためURLは変わる)でmainを表示させる
		//実際のログインの場合、ログインに成功⇒main, 失敗⇒loginに移行するようにするなど設定が必要
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		if (name.isEmpty() == false && email.isEmpty() == false) {
			response.sendRedirect("main2" + "?name=" + name + "&email=" + email);
		} else {
			request.setAttribute("message", "名前とメールを入力してください。");
			request.getRequestDispatcher("exam0510/form.jsp").forward(request, response);
		}
		
	}

}
