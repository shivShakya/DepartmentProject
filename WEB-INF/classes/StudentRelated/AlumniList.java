package StudentRelated;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
@WebServlet("/AlumniList")
public class AlumniList extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
           try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
                PreparedStatement pst = con.prepareStatement("select * from userProfile where Role = ?");
                pst.setString(1, "Alumni");
                ResultSet rs = pst.executeQuery();
                request.setAttribute("resultSet", rs);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-UTILS/Users/Roles/Student/Alumni.jsp");
                dispatcher.forward(request, response);
                
                rs.close();
                pst.close();
                con.close();
          } catch (Exception e) {
                 e.printStackTrace();
          }

      }
}

