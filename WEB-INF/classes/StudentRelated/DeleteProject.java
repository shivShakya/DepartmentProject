package StudentRelated;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/deleteProject")
public class DeleteProject extends HttpServlet {
      public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException{
                  
        int id = Integer.parseInt(req.getParameter("ids"));

        PrintWriter pw=res.getWriter();
        pw.println("<html><body><center>");        
        try{
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");

                  PreparedStatement pst = con.prepareStatement("delete from projectSection where Project_id = ?");
                  pst.setInt(1, id);
                  pst.executeUpdate(); 
                  pw.println("<h3>Story  with " + id + "has been deleted ! Please refresh the page to see the changes !"+ "</h3>");   
      

       }catch(Exception e){
                  e.printStackTrace();
       }
       pw.println("</center></body></html>");  
      pw.close();
           
      }
}
