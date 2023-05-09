package test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ShoppingCartServlet
 */
@WebServlet("/shoppingCart") //URLを/shoppingCartに設定
public class ShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //doGet(methodがGETの時の動作(今回の場合はaリンクで更新、?resetで削除)に用いられている)
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Map<String(キー), String[](配列の要素)> parameterMap を宣言(request.getParameterMap()で要素を取得する)
		Map<String, String[]> parameterMap = request.getParameterMap();
		if (parameterMap.containsKey("reset") == true) { //parameterMap.containsKey("reset")でtrue(resetを取得)のとき、if文の中身を実行
			//流れはHttpSession session = request.getSession でdoPostで作成、保存されているsessionの値を取得、
			//その後、session.invalidate();にてsessionを無効にしている
			HttpSession session = request.getSession(); //セッションを取得する
			session.invalidate(); //セッションを無効にする
		}
		//request,getRequestDispatcherでURLのjspファイルにrequestデータを送信する
		request.getRequestDispatcher("exam0509/shoppingCart.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//doPost(methodがPOSTの時の動作(今回の場合、注文するを押したとき)に用いられている)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8"); //文字コードをUTF-8に指定
		HttpSession session = request.getSession(); //セッションを取得する
		List<String> orders = (List<String>) session.getAttribute("orders"); //セッションから値を取得する
		
		//カゴの中のアイテム(orders(List<String>orders))が空のときに新しくArrayListのordersを作成する
		if (orders == null) {
			orders = new ArrayList<String>();
		}
		
		//newOrder(input)に入力された内容をrequest.getPrameter("newOrder");で取得する
		String newOrder = request.getParameter("newOrder");
		//newOrderがisEmpty() == false (newOrderの文字長がfalse(0でない)の場合、Listのordersに追加する
		if (newOrder.isEmpty() == false) {
			orders.add(newOrder);
		}
		session.setAttribute("orders", orders); //セッションに値をセットする
		//request,getRequestDispatcherでURLのjspファイルにrequestデータを送信する
		request.getRequestDispatcher("exam0509/shoppingCart.jsp").forward(request, response);
	}
	
	

}
