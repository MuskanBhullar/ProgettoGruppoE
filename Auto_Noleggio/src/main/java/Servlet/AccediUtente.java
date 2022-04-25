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

@WebServlet(name = "accedi", urlPatterns = {"/accedi"})
public class AccediUtente extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String email = request.getParameter("emailUtente");
            String password = request.getParameter("passwordUtente");

            Connection connessione = DatabaseManager.generaIstanza().connetti();
            Statement query = connessione.createStatement();
            
            String SQL = "select * from utenti";
            ResultSet risultato = query.executeQuery(SQL);
            
            //controllo se l'email è corretta, se true passo alla password
            while (risultato.next()) {
              if(email.equals(risultato.getString(5))){
                  if(password.equals(risultato.getString(6)))
                  {
                    //email e password corretti, creo la sessione per l'utente
                    HttpSession sessione = request.getSession();
                    sessione.setAttribute("utente", email);
                    
                    request.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
                  }
              }
            }
            //se non va nell'ultimo if, email o password sbagliati
            request.setAttribute("messaggio", "Email o password errati");
            request.setAttribute("coloreMessaggio", "red");

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            
            
        } catch (Exception errore) {
            request.setAttribute("messaggio", "Si è verificato un errore");
            request.setAttribute("coloreMessaggio", "red");

        }

    }
}
