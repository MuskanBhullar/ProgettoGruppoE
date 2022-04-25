package Servlet;

import Database.DatabaseManager;
import java.sql.Connection;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "logout", urlPatterns = {"/logout"})
public class Logout extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession sessione = request.getSession();
            
            //rimuovo attributo utente dalla sessione e la distruggo
            sessione.removeAttribute("utente");
            sessione.invalidate();
            
            // Riporto l'utente all'index
            request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            
            
        } catch (Exception errore) {
            
        }

    }
}
