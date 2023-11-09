package AdminRelated;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ViewsServlet")
public class ViewServlet extends HttpServlet{
      public void doGet(HttpServletRequest req  ,HttpServletResponse res){
                
                     Integer userId = Integer.parseInt(req.getParameter("userIdView"));

                     if( userId != null ){
                                try {
                                       Class.forName("com.mysql.cj.jdbc.Driver");
                                       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
                                       PreparedStatement pst = con.prepareStatement("select * from userProfile where id= ?");
                                       pst.setInt(1,userId);
                                       ResultSet rs =  pst.executeQuery();
                                       req.setAttribute("resultSet", rs);
                                       RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-UTILS/Users/Admin/viewDetails.jsp");
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
