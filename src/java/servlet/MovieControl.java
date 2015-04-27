
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "MovieControl", urlPatterns = {"/MovieControl"})
public class MovieControl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action.equals("validate")){
            
        }
    }
}
