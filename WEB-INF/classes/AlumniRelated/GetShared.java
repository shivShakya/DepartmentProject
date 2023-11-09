package AlumniRelated;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

@WebServlet("/GetShared")
public class GetShared extends HttpServlet{
      public void doGet(HttpServletRequest req  ,HttpServletResponse res){
                
                     HttpSession session = req.getSession(false);
                     
                     Integer userId = (Integer) session.getAttribute("user_id");

                     if( userId != null ){
                                try {
                                       Class.forName("com.mysql.cj.jdbc.Driver");
                                       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
                                       PreparedStatement pst = con.prepareStatement("select * from alumniStories where alumniId= ?");
                                       pst.setInt(1,userId);
                                       ResultSet rs =  pst.executeQuery();
                                       req.setAttribute("resultSet", rs);
                                       RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-UTILS/Users/Roles/Alumni/GetShared.jsp");
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
