package LoginRegistration;

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

@WebServlet("/UserForm")
public class UserForm extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        response.setContentType("text/html");
        
        int id = Integer.parseInt(request.getParameter("id"));
        String firstName = request.getParameter("f-name");
        String middleName = request.getParameter("m-name");
        String lastName = request.getParameter("l-name");
        String address = request.getParameter("addr");
        String semester = request.getParameter("semester");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String passingYear = request.getParameter("passingYear");
        String currentPosition = request.getParameter("currentPosition");
        String course = request.getParameter("course");
        String company = request.getParameter("company");
        String linkedin = request.getParameter("linkedin");
        String sector = request.getParameter("sector");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String photoPath = (String) session.getAttribute("photoPath");
        String role  = (String) session.getAttribute("selectedRole");


        PrintWriter pw = response.getWriter();
        pw.println("<html><body>");
             pw.println("<h2> hi "+ firstName +"</h2>");
            pw.println("<h2> hi "+ photoPath +"</h2>");

            if(password.equals(confirmPassword)){
                try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept","root","doremon#22");
                    PreparedStatement pst = con.prepareStatement("INSERT INTO userProfile (id ,FirstName, MiddleName, LastName, Address, Semester, Email, Phone, PassingYear, Position, Course, Company, Linkdin, Sector, Password, Image,Role) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ?)");
                    pst.setInt(1, id);
                    pst.setString(2, firstName);
                    pst.setString(3, middleName);
                    pst.setString(4, lastName);
                    pst.setString(5, address);
                    pst.setString(6, semester);
                    pst.setString(7, email);
                    pst.setString(8, mobile);
                    pst.setString(9, passingYear);
                    pst.setString(10, currentPosition);
                    pst.setString(11, course);
                    pst.setString(12, company);
                    pst.setString(13, linkedin);
                    pst.setString(14, sector);
                    pst.setString(15, password);
                    pst.setString(16, photoPath);
                    pst.setString(17, role);
                       
                    int rowsAffected = pst.executeUpdate();
                    if (rowsAffected > 0) {
                           pw.println("<h1>successfully inserted ! Please Login</h1>");
                           pw.println("<h2><a href= '/WEB-UTILS/Users/users.jsp'>go back</a></h2>");
                    } else {
                        pw.println("<h1>something wrong happened</h1>");
                    }
                }catch(Exception e){
                      pw.println("<h1>"+ e +"</h1>");
                }
           }else{
                pw.println("<h1>Passwords are not matching</h1>");
           }
         pw.println("</body></html>");
    }
}
