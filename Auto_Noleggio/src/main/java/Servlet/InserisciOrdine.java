package Servlet;

import Database.DatabaseManager;
import Models.Auto;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "inserisciOrdine", urlPatterns = {"/inserisciOrdine"})
public class InserisciOrdine extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            //sostituisco gli spazi con i tratti bassi
            String modello_auto = request.getParameter("modello");
            modello_auto = modello_auto.replace(" ", "_");
            Connection connessione = DatabaseManager.generaIstanza().connetti();

            Statement query = connessione.createStatement();

            ResultSet risultato = query.executeQuery("SELECT * FROM auto WHERE modello='" + modello_auto + "'");
            ArrayList<Models.Auto> lista = new ArrayList<>();

            while (risultato.next()) {
                int capacita_bagaglio = Integer.parseInt(risultato.getString("capacita_bagaglio"));
                int potenza = Integer.parseInt(risultato.getString("potenza"));
                int num_posti = Integer.parseInt(risultato.getString("num_posti"));
                int prezzo_giorn = Integer.parseInt(risultato.getString("prezzo_giorn"));

                Auto a = new Auto(modello_auto, capacita_bagaglio, potenza, num_posti, prezzo_giorn);

                lista.add(a);
            }

            String modello_auto2 = modello_auto.replace("_", " ");
            request.setAttribute("elencoAuto", lista);
            //attributo per visulizzare le foto ed i nomi delle auto senza trattini
            request.setAttribute("foto", modello_auto2);
            
            request.getServletContext().getRequestDispatcher("/WEB-INF/auto_scelta.jsp").forward(request, response);
            connessione.close();
        } catch (Exception errore) {
            request.setAttribute("messaggio", errore);
            request.getServletContext().getRequestDispatcher("/WEB-INF/auto.jsp").forward(request, response);
        }
    }
}
