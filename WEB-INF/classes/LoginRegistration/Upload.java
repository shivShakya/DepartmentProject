package LoginRegistration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;


@MultipartConfig
@WebServlet("/Upload")
public class Upload extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        Part filePart = request.getPart("photoFile");
        String fileName = filePart.getSubmittedFileName();
        String uploadPath = "/usr/local/Cellar/tomcat@9/9.0.80/libexec/webapps/JavaProject/Static/photos/" + fileName;

        ServletContext context = getServletContext();
        int majorVersion = context.getMajorVersion();
        int minorVersion = context.getMinorVersion();

        try (InputStream fileContent = filePart.getInputStream()) {
            Files.copy(fileContent, Paths.get(uploadPath), StandardCopyOption.REPLACE_EXISTING);
        }
       
        HttpSession session = request.getSession(false);
        session.setAttribute("photoPath", uploadPath);
        
        PrintWriter pw = response.getWriter();
        pw.println("<html><body>");
        pw.println("<h3>" + uploadPath +"</h3>");
        pw.println("<h3>"+majorVersion+minorVersion+"</h3>");
        pw.println("<h3> Photo uploaded successfully .</h3>");
        pw.println("<a href='http://localhost:8080/Registration/RoleServlet?users=Student'> go back </a>");
        pw.println("</html></body>");
    }
}
