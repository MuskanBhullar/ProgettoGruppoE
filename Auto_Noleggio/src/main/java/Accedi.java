import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "accedi", urlPatterns = {"/accedi"})
public class Accedi extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // estraggo la sessione come http sessione
        HttpSession sessione = request.getSession();
        // verifoco che l id utente all interno della sessione esista
        if(sessione!=null && sessione.getAttribute("id_utente")!=null)
        {
            request.getServletContext().getRequestDispatcher("/WEB-INF/auto.jsp").forward(request, response);
        }
        else
        {
            request.getServletContext().getRequestDispatcher("/").forward(request, response);
        }
    }


}
