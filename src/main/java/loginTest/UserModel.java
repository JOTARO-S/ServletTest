package loginTest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.sql.DataSource;

import entity.UserEntity;

public class UserModel {
	
	//name と emailからアカウントを取得する
	public UserEntity getUserAccaunt(String name, String email) throws ServletException {
		Connection con = null;
		PreparedStatement ps = null;
		String sql = null;
		ResultSet rs = null;
		UserEntity user = null;

		try {
			//データベースの接続を確立
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/test");
			con = ds.getConnection();
			sql = "SELECT * FROM user WHERE name = ? AND email = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, email);
			rs = ps.executeQuery();
			//結果セットの内容を順に出力
			while (rs.next()) {
				
				user = new UserEntity();
				
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (con != null) con.close();
				if (ps != null) ps.close();
				if (rs != null) rs.close();
			} catch (Exception e) { }
		}
		return user;
	}
}
