package com.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/pattern1")
public class LoginServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String user = req.getParameter("username");
		String pass = req.getParameter("password");

		PrintWriter out = resp.getWriter();

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/loginproject",
					"root",
					"@Yush2006");

			PreparedStatement ps = con.prepareStatement(
					"select * from users where username=? and password=?");

			ps.setString(1, user);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();

			if(rs.next()) {

			    out.println("<html>");
			    out.println("<body style='font-family:Arial; text-align:center;'>");

			    out.println("<h1 style='color:green;'>Login Successful</h1>");
			    out.println("<h2>Welcome User</h2>");

			    out.println("</body>");
			    out.println("</html>");
			}
			else {

			    out.println("<html>");
			    out.println("<body style='font-family:Arial; text-align:center;'>");

			    out.println("<h1 style='color:red;'>Invalid Username or Password</h1>");

			    out.println("</body>");
			    out.println("</html>");
			}

		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}