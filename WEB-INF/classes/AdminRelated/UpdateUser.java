package AdminRelated;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int userId = Integer.parseInt(request.getParameter("userIdEdit"));

        String firstName = request.getParameter("u-f-name");
        String middleName = request.getParameter("u-m-name");
        String lastName = request.getParameter("u-l-name");
        String address = request.getParameter("u-ad");
        String semester = request.getParameter("u-sem");
        String email = request.getParameter("u-em");
        String phone = request.getParameter("u-phn");
        String passingYear = request.getParameter("u-yr");
        String position = request.getParameter("u-pos");
        String course = request.getParameter("u-crs");
        String company = request.getParameter("u-comp");
        String linkedIn = request.getParameter("u-link");
        String sector = request.getParameter("u-sect");
        String image = request.getParameter("u-img");
        String role = request.getParameter("u-role");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
            PreparedStatement stmt = con.prepareStatement("UPDATE users SET FirstName=?, MiddleName=?, LastName=?, Address=?, Semester=?, Email=?, Phone=?, PassingYear=?, Position=?, Course=?, Company=?, Linkdin=?, Sector=?, Image=?, Role=? WHERE id=?");

            stmt.setString(1, firstName);
            stmt.setString(2, middleName);
            stmt.setString(3, lastName);
            stmt.setString(4, address);
            stmt.setString(5, semester);
            stmt.setString(6, email);
            stmt.setString(7, phone);
            stmt.setString(8, passingYear);
            stmt.setString(9, position);
            stmt.setString(10, course);
            stmt.setString(11, company);
            stmt.setString(12, linkedIn);
            stmt.setString(13, sector);
            stmt.setString(14, image);
            stmt.setString(15, role);
            stmt.setInt(16, userId);

            int rowsUpdated = stmt.executeUpdate();

            PrintWriter pw = response.getWriter();
            pw.println("<html><body><center>");
            if (rowsUpdated > 0) {
                pw.println("<h3>User with ID " + userId + " has been updated! Please refresh the page to see the changes.</h3>");
            } else {
                pw.println("<h3>Update failed for user with ID " + userId + ".</h3>");
            }
            pw.println("</center></body></html>");
            pw.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}