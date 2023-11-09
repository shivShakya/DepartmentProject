package AdminRelated;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ScreenServlets")
public class ScreenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        response.setContentType("text/html");

        String photoPath = (String) session.getAttribute("photoPath");
        String description = request.getParameter("desc");
        

        PrintWriter pw = response.getWriter();
        pw.println("<html><body>");
             pw.println("<h2> hi "+ description +"</h2>");
             pw.println("<h2> hi "+ photoPath +"</h2>");

             try {
                       Class.forName("com.mysql.cj.jdbc.Driver");
                       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
                       PreparedStatement pst = con.prepareStatement("UPDATE Screen SET Image = ?, Description = ? WHERE Screen_id = ?");
                       pst.setString(1, photoPath);
                       pst.setString(2, description);
                       pst.setInt(3, 1);
                       int rowsAffected = pst.executeUpdate();
                       if (rowsAffected > 0) {
                           pw.println("<h1>Successfully updated! Please check MainPage</h1>");
                           pw.println("<h2><a href='/WEB-UTILS/index.jsp'>Go back</a></h2>");
                       } else {
                           pw.println("<h1>Something went wrong during the update</h1>");
                       }
                   } catch (Exception e) {
                       pw.println("<h1>" + e.getMessage() + "</h1>");
                   } 
         pw.println("</body></html>");
    }
}
