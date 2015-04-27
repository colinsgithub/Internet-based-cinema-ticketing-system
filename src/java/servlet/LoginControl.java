package servlet;

import bean.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "LoginControl", urlPatterns = {"/LoginControl"})
public class LoginControl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action.equals("validate")){
            this.doValidate(request, response);
        }
    }
    
    protected void doValidate(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String pwd = request.getParameter("password");
        
        if((email != null && !email.isEmpty()) 
                || (pwd != null && !pwd.isEmpty())){
            
            ServletConfig sc = this.getServletConfig();
            String db_driver = sc.getInitParameter("db_driver"),
                   db_url = sc.getInitParameter("db_url"),
                   db_user = sc.getInitParameter("db_user"),
                   db_password = sc.getInitParameter("db_password");
            String db_q = "SELECT * FROM \"User\" WHERE email = ?";
            try {
                Class.forName(db_driver);
                Connection conn = DriverManager.getConnection(db_url, db_user, db_password);
                PreparedStatement statmt = conn.prepareStatement(db_q);
                statmt.setString(1, email);
                if(statmt.execute()){
                    ResultSet rs = statmt.getResultSet();
                    String rs_pwd = rs.getString("password");
                    if(pwd.equals(rs_pwd)){
                        out.println("true");
                        EntityManager em = Persistence.createEntityManagerFactory("ctsysPU").createEntityManager();
                        User user = em.find(User.class, rs.getInt("userID"));
                        HttpSession session = request.getSession();
                        
                    }
                }
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(LoginControl.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(LoginControl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
