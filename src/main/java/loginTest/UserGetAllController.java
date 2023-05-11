package loginTest;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.UserEntity;

/**
 * Servlet implementation class UserGetAllController
 */
@WebServlet("/result")
public class UserGetAllController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserGetAllController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Object id = session.getAttribute("currentId");
		Object name = session.getAttribute("currentName");
		Object email = session.getAttribute("currentEmail");
		if (id != null) {
			request.setAttribute("loginMessage","ログイン中 / " + "id:" + id + " / 名前:" + name + " / メール:" + email);
		}
		UserModel um = new UserModel();
		List<UserEntity> data = um.getUserAll();
		request.setAttribute("data", data);
		request.getRequestDispatcher("test/result.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
