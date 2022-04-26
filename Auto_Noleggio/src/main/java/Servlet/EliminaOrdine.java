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

@WebServlet(name = "elimina", urlPatterns = {"/elimina"})
public class EliminaOrdine extends HttpServlet {
private int id;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            id = Integer.parseInt(request.getParameter("id_ordine_r"));
            doPost(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Connetto al DB
            Connection connessione = DatabaseManager.generaIstanza().connetti();

            // Preparo la query
            Statement query = connessione.createStatement();

            String SQL = "DELETE FROM ordini WHERE id_ordine=" + id;
            
            
            // Eseguo la query
            query.execute(SQL);
            
            request.setAttribute("messaggio", "Ordine Eliminato");
            request.setAttribute("coloreMessaggio", "green");

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/leggiOrdini").forward(request, response);

            // Chiudo la connesione
            connessione.close();

        } catch (Exception errore) {
            // Imposto i parametri
            request.setAttribute("messaggio", "ciao.");

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/WEB-INF/elenco_ordini.jsp").forward(request, response);
        }
    }
}
