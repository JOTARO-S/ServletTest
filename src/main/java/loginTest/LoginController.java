package loginTest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.UserEntity;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
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
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		UserEntity user = null;
		
		UserModel um = new UserModel();
		user = um.getUserAccaunt(name, email);
		
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("id", user.getId());
			session.setAttribute("name", user.getName());
			session.setAttribute("email", user.getEmail());
			response.sendRedirect("main");
		} else {
			request.setAttribute("message", "名前とメールに一致するユーザーはいません");
			request.getRequestDispatcher("exam0510/form.jsp").forward(request, response);
		}
	}
}
