package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeclareServlet
 */
@WebServlet("/DeclareServlet")
public class DeclareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//インスタンス変数iを初期化
    int i = 0;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeclareServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//コンテンツタイプの設定
    	response.setContentType("text/html; charset=UTF-8");
    	//出力のためのPrintWriterオブジェクトを取得
    	PrintWriter out = response.getWriter();
    	//変数iをインクリメントした結果を出力
    	i = i + 1;
    	out.print(i + "回目のアクセスです");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
