
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "elimina", urlPatterns = {"/elimina"})
public class EliminaUtente extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getServletContext().getRequestDispatcher("/elimina.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doDelete(request, response);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String email = request.getParameter("emailPersona");
            String psw = request.getParameter("passwordPersona");
            
            // Connetto al DB
            Connection connessione = DataBaseManager.generaIstanza().connetti();

            // Preparo la query
            Statement query = connessione.createStatement();

            String SQL = "DELETE FROM utenti WHERE email = " + email + " AND password = " + psw;
            
            // Eseguo la query
            int queryEseguita = query.executeUpdate(SQL);
            
            request.setAttribute("messaggio", "Utente eliminato con successo.");
            request.setAttribute("coloreMessaggio", "green");

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/elimina.jsp").forward(request, response);

            // Chiudo la connesione
            connessione.close();

        } catch (Exception errore) {
            // Imposto i parametri
            request.setAttribute("messaggio", "Cancellazione errata. Riprova.");
            request.setAttribute("coloreMessaggio", "red");

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/elimina.jsp").forward(request, response);
        }
    }
}

