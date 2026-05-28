package com.main;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/pattern")
public class Servl extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String login = req.getParameter("login");
        String signup = req.getParameter("signup");

        // If Login button clicked
        if(login != null) {

            req.getRequestDispatcher("login.jsp")
               .forward(req, resp);
        }

        // If Signup button clicked
        else if(signup != null) {

            req.getRequestDispatcher("signup.jsp")
               .forward(req, resp);
        }
    }
}