/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dao.DAO;
import Entity.Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "SignupControl", urlPatterns = {"/SignupControl"})
public class SignupControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //getParament by name in the Signup.jsp
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String repass = request.getParameter("repassword");
       
        String mess = "";
        //Check is re-password
        if (!pass.equals(repass)) {
            mess = "Re-password is not equal to password...";
        } else {
            DAO dao = new DAO();
            
            //Check is check user is Exsit or not
            Account a = dao.checkAccount(user);
            if (a != null) {
                mess = "User is existing!!!";
            } else {
                mess = "Sign Up Account successful...";
                dao.signup(user, pass);
            }
        }
        //setAttribute and go to Signup.jsp
        request.setAttribute("mess", mess);
        request.getRequestDispatcher("Signup.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
