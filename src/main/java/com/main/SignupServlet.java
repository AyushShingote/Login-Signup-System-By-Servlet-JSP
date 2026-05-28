package com.main;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/pattern2")
public class SignupServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String user = req.getParameter("username");
		String email = req.getParameter("email");
		String pass = req.getParameter("password");

		PrintWriter out = resp.getWriter();

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/loginproject",
					"root",
					"@Yush2006");

			PreparedStatement ps = con.prepareStatement(
					"insert into users(username,email,password) values(?,?,?)");

			ps.setString(1, user);
			ps.setString(2, email);
			ps.setString(3, pass);

			int i = ps.executeUpdate();

			if(i > 0) {

			    out.println("<html>");
			    out.println("<body style='font-family:Arial; text-align:center; background-color:lightgreen;'>");

			    out.println("<h1 style='color:green;'>Signup Successful</h1>");
			    out.println("<h2>Welcome User</h2>");

			    out.println("</body>");
			    out.println("</html>");
			}
			else {

			    out.println("<html>");
			    out.println("<body style='font-family:Arial; text-align:center; background-color:#ffcccc;'>");

			    out.println("<h1 style='color:red;'>Signup Failed</h1>");

			    out.println("</body>");
			    out.println("</html>");
			}

		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
