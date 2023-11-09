package TeacherRelated;

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

@WebServlet("/UserList")
public class UserList extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");

            PreparedStatement pst1 = con.prepareStatement("select * from userProfile where Role = ?");
            pst1.setString(1, "Alumni");
            ResultSet rs1 = pst1.executeQuery();

            PreparedStatement pst2 = con.prepareStatement("select * from userProfile where Role = ?");
            pst2.setString(1, "Student");
            ResultSet rs2 = pst2.executeQuery();

            request.setAttribute("resultSet1", rs1);
            request.setAttribute("resultSet2", rs2);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-UTILS/Users/Roles/Teacher/User.jsp");
            dispatcher.forward(request, response);

            rs1.close();
            rs2.close();
            pst1.close();
            pst2.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
