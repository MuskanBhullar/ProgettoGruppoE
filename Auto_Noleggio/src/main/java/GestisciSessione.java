
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "sessione", urlPatterns = {"/sessione"})
public class GestisciSessione extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // creo la sessione
        HttpSession sessione = request.getSession();
        
        // assegno l'id dell'utente (dovrei leggerlo dal DataBase)
        sessione.setAttribute("id_utente", "SELECT id_utente FROM utenti WHERE email=");
        
        // inoltro la richiesta alla home page
        request.getServletContext().getRequestDispatcher("/").forward(request, response);
    }
}
