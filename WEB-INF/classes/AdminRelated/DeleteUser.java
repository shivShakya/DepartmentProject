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

@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet{
      public void doPost(HttpServletRequest req , HttpServletResponse res)throws IOException , ServletException{
               
              int userId = Integer.parseInt(req.getParameter("userIdDelete"));

             try{

                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
                  PreparedStatement pst = con.prepareStatement("delete from userProfile where id = ?");
                  pst.setInt(1, userId);
                  pst.executeUpdate();

                  PrintWriter pw=res.getWriter();
                  pw.println("<html><body><center>");         
                   pw.println("<h3>User with " + userId + "has been deleted ! Please refresh the page to see the changes !"+ "</h3>");
                   pw.println("</center></body></html>");  
                   pw.close();


             }catch(Exception e){
                  e.printStackTrace();
             }

      }
}
