package StudentRelated;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ReadStories")
public class ReadStories extends HttpServlet{
      public void doGet(HttpServletRequest req  ,HttpServletResponse res){
                
                     Integer userId = Integer.parseInt(req.getParameter("userIdView"));
                     String role = req.getParameter("role");

                     if( userId != null ){
                                try {
                                       Class.forName("com.mysql.cj.jdbc.Driver");
                                       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
                                       PreparedStatement pst = con.prepareStatement("select * from alumniStories where alumniId= ?");
                                       pst.setInt(1,userId);
                                       ResultSet rs =  pst.executeQuery();
                                       req.setAttribute("resultSet", rs);
                                       RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-UTILS/Users/Roles/"+role+"/Stories.jsp");
                                       dispatcher.forward(req, res);
                                       rs.close();
                                       pst.close();
                                       con.close();
                                } catch (Exception e) {
                                           e.printStackTrace();
                                }
                         }
              }
      }



