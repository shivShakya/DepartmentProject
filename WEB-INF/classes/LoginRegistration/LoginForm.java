package LoginRegistration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginForm")  
public class LoginForm extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        String role = request.getParameter("role");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        PrintWriter pw  = response.getWriter();

        if(role.equals("Admin") && email.equals("shivdu2000@gmail.com") && password.equals("1234")){
                 HttpSession session = request.getSession();
                 session.setAttribute("name" , "shivam shakya");
                 session.setAttribute("role" , "Admin");

                RequestDispatcher rd = request.getRequestDispatcher("/WEB-UTILS/Users/Admin/profile.jsp");
                rd.forward(request, response);
        }else if(role.equals("Student") || role.equals("Teacher") || role.equals("Alumni")){

                 try{

                      Class.forName("com.mysql.cj.jdbc.Driver");
                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept","root","doremon#22");
                      PreparedStatement pst = con.prepareStatement("select * from userProfile where Email = ? and Password = ? and Role = ?");
                      pst.setString(1, email);
                      pst.setString(2, password);
                      pst.setString(3, role);

                      ResultSet rs = pst.executeQuery();
                      

                      pw.println("<html><body>");
                      if(rs.next()){
                    
                      HttpSession session = request.getSession();
                      session.setAttribute("user_id", rs.getInt(1));
                      session.setAttribute("FirstName", rs.getString(2));
                      session.setAttribute("MiddleName", rs.getString(3));
                      session.setAttribute("LastName", rs.getString(4));
                      session.setAttribute("Address", rs.getString(5)); 
                      session.setAttribute("Email", rs.getString(7));
                      session.setAttribute("Phone", rs.getString(8));
                      session.setAttribute("PassingYear", rs.getString(9));
                      session.setAttribute("Linkdin", rs.getString(13));
                      session.setAttribute("Image", rs.getString(16));
                      session.setAttribute("Role", role);


                       switch (role) {
                        case "Student":
                                  session.setAttribute("Semester", rs.getString(6));
                                  break;
                        case "Teacher":
                                  session.setAttribute("Position", rs.getString(10));
                                  break;
                        case "Alumni":
                                  session.setAttribute("Course", rs.getString(11));
                                  session.setAttribute("Company", rs.getString(12));
                                  session.setAttribute("Sector", rs.getString(14));
                                  break;
                        default:
                                break;
                       }
               
                          RequestDispatcher rd = request.getRequestDispatcher("/WEB-UTILS/Users/Roles/"+ role +"/Profile.jsp");
                           rd.forward(request, response);      
                           pw.println("Successfully Logged in"+ " id is " + session.getAttribute("user_id"));
                      }else{
                           pw.println("Something Went Wrong with Result Set");
                      }

                    pw.println("</body></html>");

                 }catch(Exception e){
                       e.printStackTrace();
                 }
                 
        }else{
                response.setContentType("text/html"); 
                 pw.println("<html><body><h3> Wrong credentials provided </h3></body></html>");
        }
    }
}
