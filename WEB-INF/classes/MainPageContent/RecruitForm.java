package MainPageContent;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;

@WebServlet("/RecruitForm")
public class RecruitForm extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        String name = request.getParameter("name");
        String company = request.getParameter("company");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        LocalDateTime dateTime = LocalDateTime.now();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
            PreparedStatement pst = con.prepareStatement("insert into recruiter (name, company, email, message , DateTime) values (?, ?, ?, ? , ?)");
            pst.setString(1, name);
            pst.setString(2, company);
            pst.setString(3, email);
            pst.setString(4, message);
            pst.setTimestamp(5, java.sql.Timestamp.valueOf(dateTime));
            int rows = pst.executeUpdate();
            if (rows > 0) {
                pw.println("<html><body>");
                pw.println("<h1>Record Inserted Successfully </h1>");
                pw.println("<h1>" + name + "</h1>");
                pw.println("Company : " + company + "<br>");
                pw.println("Email : " + email + "<br>");
                pw.println("Message : " + message + "<br>");
                pw.println("<h2>Thank you for your Details! Department will contact you soon!</h2>");
                pw.println("</body></html>");
            } else {
                pw.println("<html><body>");
                pw.println("<h1>Failed to insert the record</h1>");
                pw.println("</body></html>");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            pw.println("<html><body>");
            pw.println("<h1>Error occurred: " + e.getMessage() + "</h1>");
            pw.println("</body></html>");
        } finally {
            pw.close();
        }
    }
}

