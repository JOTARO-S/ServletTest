package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BmiServlet
 */
@WebServlet("/BmiServlet")
public class BmiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BmiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//ポストデータの内容をdouble値として取得
		double h = Double.parseDouble(request.getParameter("height")); //そのままのパラーメーターだとString型なのでDouble型に変換
		double w = Double.parseDouble(request.getParameter("weight"));
		//BMI値を算出し、リクエスト属性bmiにセット
		double bmi = w / (h * h);
		request.setAttribute("bmi", bmi); //setAttribute(key, value); でリクエストにキーと値を渡す
		//BMI値から判定したランクをリクエスト属性rankにセット
		if (bmi < 18.5) {
			request.setAttribute("rank", "瘦せ気味"); 
		} else if (bmi < 25) {
			request.setAttribute("rank", "標準");
		} else {
			request.setAttribute("rank", "肥満気味");
		}
		//bmi_result.jspに処理を転送
		this.getServletContext().getRequestDispatcher("/exam0509/bmi_result.jsp").forward(request, response);
	}

}
