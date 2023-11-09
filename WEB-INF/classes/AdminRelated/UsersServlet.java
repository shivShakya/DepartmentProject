package AdminRelated;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
@WebServlet("/UserServlet")
public class UsersServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
           try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from userProfile");

                request.setAttribute("resultSet", rs);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-UTILS/Users/Admin/userData.jsp");
                dispatcher.forward(request, response);
                rs.close();
                st.close();
                con.close();
          } catch (Exception e) {
                 e.printStackTrace();
          }

      }
}

