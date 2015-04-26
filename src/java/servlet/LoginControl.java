package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LoginControl", urlPatterns = {"/LoginControl"})
public class LoginControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equals("validate")) {
//            System.out.println("********");
//            StringBuilder buffer = new StringBuilder();
//            BufferedReader reader = request.getReader();
//            String line;
//            while ((line = reader.readLine()) != null) {
//                buffer.append(line);
//            }
//            String data = buffer.toString();
//            System.out.println(data);
            this.doValidate(request, response);
            
        }
    }

    protected void doValidate(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String pwd = request.getParameter("password");
        if ((email != null && !email.isEmpty())
                || (pwd != null && !pwd.isEmpty())) {
//            System.out.println(request.getContextPath() + "/index.jsp");
//            response.sendRedirect("login.jsp");

        }
        response.getWriter().write("true");
        response.sendRedirect("index.jsp");
    }
}
