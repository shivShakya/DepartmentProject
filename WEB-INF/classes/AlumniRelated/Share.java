package AlumniRelated;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ShareStory")
public class Share extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession(false);
        response.setContentType("text/html");

        String photoPath = (String) session.getAttribute("photoPath");
        String story = request.getParameter("story");
        String userId = request.getParameter("userId");

        PrintWriter pw = response.getWriter();
        pw.println("<html><body>");
        pw.println("<h2> hi " + story + "</h2>");
        pw.println("<h2> hi " + userId + "</h2>");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
            PreparedStatement pst = con.prepareStatement("insert into alumniStories (image, story, alumniId) values (?, ?, ?)");
            pst.setString(1, photoPath);
            pst.setString(2, story);
            pst.setString(3, userId);

            int rowsAffected = pst.executeUpdate();

            if (rowsAffected > 0) {
                pw.println("<h1>Successfully uploaded! Thank you for your time</h1>");
            } else {
                pw.println("<h1>Something Went Wrong! Please try again</h1>");
            }
            pw.println("<h2><a href='/JavaProject/WEB-UTILS/Users/Roles/Alumni/Share.jsp'>Go back</a></h2>");
        } catch (Exception e) {
            e.printStackTrace();
            pw.println("<h1>An error occurred while processing your request.</h1>");
        }

        pw.println("</body></html>");
    }
}
