package test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class InsertProcess
 */
@WebServlet("/InsertProcess2")
public class InsertProcess2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertProcess2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		Connection con = null;
		PreparedStatement ps = null;
		String sql = null;

		try {
			//データベースの接続を確立
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/test");
			con = ds.getConnection();
			//setAutoCommitをfalseにする(デフォルトはtrue)falseだとSQL命令を1つ発行するたびに自動的にコミットされない
			con.setAutoCommit(false);
			sql = "INSERT INTO address (id, name, address, tel, email) VALUES (1001, ?, ?, ?, ?)";
			//INSERT命令の準備
			ps = con.prepareStatement(sql);
			
			//INSERT命令にポストデータの内容をセット
			ps.setString(1, request.getParameter("name"));
			ps.setString(2, request.getParameter("address"));
			ps.setString(3, request.getParameter("tel"));
			ps.setString(4, request.getParameter("email"));
			//INSERT命令を実行
			ps.executeUpdate();
			
			//INSERT命令にポストデータの内容をセット
			ps.setString(1, request.getParameter("name"));
			ps.setString(2, request.getParameter("address"));
			ps.setString(3, request.getParameter("tel"));
			ps.setString(4, request.getParameter("email"));
			//INSERT命令を実行
			ps.executeUpdate();
			
			con.commit(); //全ての処理が終了後、commitされる
			
		} catch(Exception e) { //Exception は全てのエラー
			try {
				con.rollback(); //Exceptionエラーが発生した場合はrollbackされる
				throw new ServletException(e); 
			} catch (SQLException sqle) { //rollback自体エラーが発生する可能性があるのでcatchも作成する
				
			}
		} finally {
			try {
				if (con != null) con.close();
				if (ps != null) ps.close();
			} catch (Exception e) { }
		}	
		response.sendRedirect("exam0509/insert_from.jsp");	
	}
}
