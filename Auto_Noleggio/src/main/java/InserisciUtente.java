import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "registrati", urlPatterns = {"/registrati"})
public class InserisciUtente extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Inoltro la richiesta
        request.getServletContext().getRequestDispatcher("/registrati.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String nome = request.getParameter("nomePersona");
            String cognome = request.getParameter("cognomePersona");
            int eta = Integer.parseInt(request.getParameter("etaPersona"));
            String email = request.getParameter("emailPersona");
            String psw = request.getParameter("passwordPersona");
            
            if (nome.isEmpty() || cognome.isEmpty() || email.isEmpty() || psw.isEmpty()) {
                request.setAttribute("messaggio", "Hai inserito dei dati errati, riprova.");
                request.setAttribute("coloreMessaggio", "orange");

                // Inoltro la richiesta
                request.getServletContext().getRequestDispatcher("/registrati.jsp").forward(request, response);
                return;
            }
            
            // Connetto al DB
            Connection connessione = DataBaseManager.generaIstanza().connetti();

            // Preparo la query
            Statement query = connessione.createStatement();

            String SQL = "INSERT INTO utenti (nome, cognome, eta, email, password)" + 
                    "VALUES('" + nome + "', '" + cognome + "', '" + eta + "', '" + email +"', '" + psw +"')";
            
            // Eseguo la query
            boolean queryEseguita = query.execute(SQL);
            
            request.setAttribute("messaggio", "Registrazione avvenuta con successo.");
            request.setAttribute("coloreMessaggio", "green");

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/registrati.jsp").forward(request, response);

            // Chiudo la connesione
            connessione.close();

        } catch (Exception errore) {
            // Imposto i parametri
            request.setAttribute("messaggio", "Registrazione errata. Riprova.");
            request.setAttribute("coloreMessaggio", "red");

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/registrati.jsp").forward(request, response);
        }
    }
}

