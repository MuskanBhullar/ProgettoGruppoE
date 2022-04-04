package Servlet;

import Database.DatabaseManager;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "registrati", urlPatterns = {"/registrati"})
public class RegistraUtente extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Inoltro la richiesta
        request.getServletContext().getRequestDispatcher("/registrati.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String nome = request.getParameter("nomeUtente");
            String cognome = request.getParameter("cognomeUtente");
            String email = request.getParameter("emailUtente");
            String password = request.getParameter("passwordUtente");
            
            if (nome.isEmpty() || cognome.isEmpty() || email.isEmpty()|| password.isEmpty()) {
                request.setAttribute("messaggio", "Hai inserito dei dati errati, scemo.");
                request.setAttribute("coloreMessaggio", "orange");

                // Inoltro la richiesta
                request.getServletContext().getRequestDispatcher("/registrati.jsp").forward(request, response);
                return;
            }
            
            // Connetto al DB
            Connection connessione = DatabaseManager.generaIstanza().connetti();

            // Preparo la query
            Statement query = connessione.createStatement();

            String SQL = "INSERT INTO utenti (nome, cognome, email, password)" + 
                    "VALUES('" + nome + "', '" + cognome + "', '" + email +"', '" + password +"')";
            
            // Eseguo la query
            boolean queryEseguita = query.execute(SQL);
            
            request.setAttribute("messaggio", "Utente inserito con successo.");
            request.setAttribute("coloreMessaggio", "green");

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/registrati.jsp").forward(request, response);

            // Chiudo la connesione
            connessione.close();

        } catch (Exception errore) {
            // Imposto i parametri
            request.setAttribute("messaggio", "Si è verificato un errore, contattare l'amministratore.");
            request.setAttribute("coloreMessaggio", "red");

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/registrati.jsp").forward(request, response);
        }
    }
}
