package MainPageContent;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
@WebServlet("/MainPageDynamic")
public class MainPageDynamic extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
           try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dept", "root", "doremon#22");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from Screen");
                Statement st2 = con.createStatement();
                ResultSet rs2 = st2.executeQuery("select * from projectSection ORDER BY rand() LIMIT 2");

                Statement st3 = con.createStatement();
                ResultSet rs3 = st3.executeQuery("select * from userProfile where Role = 'Alumni' ORDER BY rand() LIMIT 2;");


                request.setAttribute("resultSet", rs);
                request.setAttribute("resultSet2", rs2);
                 request.setAttribute("resultSet3", rs3);


               RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
               dispatcher.forward(request, response);

                rs.close();
                rs2.close();
                st2.close();
                st.close();
                con.close();
          } catch (Exception e) {
                 e.printStackTrace();
          }

      }
}

