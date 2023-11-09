package LoginRegistration;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/RoleServlet")  
public class RoleServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html"); 
        String selectedRole = request.getParameter("users");
        HttpSession session = request.getSession();
        session.setAttribute("selectedRole", selectedRole);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-UTILS/Users/login.jsp");
        dispatcher.forward(request, response);
    }
}
