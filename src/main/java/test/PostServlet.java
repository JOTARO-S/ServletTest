package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PostServlet
 */
@WebServlet("/exam0508/PostServlet") //URLをexam0508/PostSevletにするとjspファイルのactionに記載されているURLの../PostServletの../が不要となる
public class PostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		//出力のためのPrintWriterオブジェクトを取得
		PrintWriter out = response.getWriter();
		//一連のコンテンツを出力
		out.println("<!DOCTYPE html><html><head><meta charset='UTF-8' />");
		out.println("<title>ポストデータ</title>");
		out.println("</head><body>");
		//選択ボックスanimalの値を取得
		String animal = request.getParameter("animal");
		//選択ボックスの値に応じてメッセージを変化
		if (animal.equals("ham")) {
			out.println("<p>つぶらな瞳がかわいい。</p>");
		} else if (animal.equals("dog")) {
			out.println("<p>ペットです。</p>");
		} else if (animal.equals("cat")) {
			out.println("<p>気ままです。</p>");
		} else {
			out.println("<p>不明。</p>");
		}
		out.println("</body></html>");
	}

}
