package StudentRelated;

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

@WebServlet("/ProjectUpload")
public class ProjectUpload extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        response.setContentType("text/html");

        String photoPath = (String) session.getAttribute("photoPath");
        String title = request.getParameter("title");
        String github = request.getParameter("github");
        String sector = request.getParameter("sector");
        String description = request.getParameter("desc");
        String file = request.getParameter("file");
        String demo = request.getParameter("demo");
        Integer userId = Integer.parseInt(request.getParameter("userId"));


        PrintWriter pw = response.getWriter();
        pw.println("<html><body>");
             pw.println("<h2> hi "+ title +"</h2>");
             pw.println("<h2> hi "+ photoPath +"</h2>");

             try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
                
                String insertQuery = "INSERT INTO projectSection ( Title, Github_link, Sector, Description, File_path, Demo_link, Image, Apporved ,Student_id) VALUES (?, ?, ?, ?, ?, ?, ?, ? , ?)";
                PreparedStatement pst = con.prepareStatement(insertQuery);
            

               
                pst.setString(1, title);
                pst.setString(2, github);
                pst.setString(3, sector);
                pst.setString(4, description);
                pst.setString(5, file);
                pst.setString(6, demo);
                pst.setString(7, photoPath);
                pst.setInt(8, 1);
                pst.setInt(9, userId);
            
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
