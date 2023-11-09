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

@WebServlet("/Approval")
public class Approval extends HttpServlet{
      public void doPost(HttpServletRequest req , HttpServletResponse res)throws IOException , ServletException{
               
        int approvalValue = Integer.parseInt(req.getParameter("approvalValue"));
        int userId = Integer.parseInt(req.getParameter("userId"));

             try{

                  Class.forName("com.mysql.cj.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");

                 PreparedStatement pst = con.prepareStatement("update projectSection SET Apporved = ? where Project_id = ?");;
                  if(approvalValue == 0){           
                             pst.setInt(1, 1);         
                  }else{
                            pst.setInt(1, 0);
                  }
                   pst.setInt(2, userId);

                 int rowsAffected =   pst.executeUpdate();


                 PrintWriter pw = res.getWriter();
                 pw.println("<html><body>");
                 if(rowsAffected > 0){
                     pw.println("<h1>Done</h1>");
                     pw.println("<h1><a href='ProjAdmin'>Go back</a></h1>");
                 }else{
                        pw.println("<h1>Something went wrong</h1>"); 
                 }
                  pw.println("</body></html>");

                   //RequestDispatcher rd = req.getRequestDispatcher("/WEB-UTILS/Users/Admin/project.jsp");
                    //rd.forward(req, res);

             }catch(Exception e){
                  e.printStackTrace();
             }

      }
}
