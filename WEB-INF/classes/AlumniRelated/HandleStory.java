package AlumniRelated;
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

@WebServlet("/handleStory")
public class HandleStory extends HttpServlet {
      public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException{
                  
        int id = Integer.parseInt(req.getParameter("storyId"));
        String story = req.getParameter("story");

        PrintWriter pw=res.getWriter();
        pw.println("<html><body><center>");        
        try{
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");


             if(story.isEmpty()){   
                  PreparedStatement pst = con.prepareStatement("delete from alumniStories where id = ?");
                  pst.setInt(1, id);
                  pst.executeUpdate(); 
                 pw.println("<h3>Story  with " + id + "has been deleted ! Please refresh the page to see the changes !"+ "</h3>");   
        }else{
                PreparedStatement pst = con.prepareStatement("UPDATE alumniStories SET story = ? WHERE id = ?");
                pst.setString(1, story);
                pst.setInt(2, id);
               pst.executeUpdate(); 
                 pw.println("<h3>Story  with " + id + "has been updated ! Please refresh the page to see the changes !"+ "</h3>");   
        }
     

       }catch(Exception e){
                  e.printStackTrace();
       }
       pw.println("</center></body></html>");  
      pw.close();
           
      }
}
