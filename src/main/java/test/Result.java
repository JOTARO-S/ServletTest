package test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class Result
 */
@WebServlet("/Result")
public class Result extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Result() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement ps = null;
		String sql = null;
		ResultSet rs = null;
		ArrayList<Address> list = new ArrayList<>();

		try {
			//データベースの接続を確立
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/test");
			con = ds.getConnection();
			// SQL
			sql = "SELECT * FROM address ORDER BY id";
			//SELECT命令の準備
			ps = con.prepareStatement(sql);
			//SELECT命令を実行
			rs = ps.executeQuery();
			//結果セットの内容を順に出力
			while (rs.next()) {
				
				Address address = new Address();
				
				address.setName(rs.getString("name"));
				address.setAddress(rs.getString("address"));
				address.setTel(rs.getString("tel"));
				address.setEmail(rs.getString("email"));
				
				list.add(address);
				
			}
		} catch(SQLException | NamingException e) {
			throw new ServletException(e);
		} finally {
			try {
				if (con != null) con.close();
				if (ps != null) ps.close();
				if (rs != null) rs.close();
			} catch (Exception e) { }
		}
		request.setAttribute("data", list);
		request.getRequestDispatcher("exam0509/result.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
