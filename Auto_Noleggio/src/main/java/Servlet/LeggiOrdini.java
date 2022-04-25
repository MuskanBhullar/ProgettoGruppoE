package Servlet;

import Database.DatabaseManager;
import Models.Ordini;
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

@WebServlet(name = "leggiOrdini", urlPatterns = {"/leggiOrdini"})
public class LeggiOrdini extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Connetto al DB
            Connection connessione = DatabaseManager.generaIstanza().connetti();

            // Preparo la query
            Statement query = connessione.createStatement();
            
            HttpSession sessione = request.getSession();
            
            String utente = (String)sessione.getAttribute("utente"); 

            // Salvo il risultato della query
            ResultSet risultato = query.executeQuery("select modello,data_ritiro,data_consegna,luogo_ritiro,luogo_consegna,prezzo_giorn,fk_auto,fk_utente"
                    + " from ordini join utenti on id_utente=fk_utente join auto on id_auto=fk_auto where email='"+utente+"'");
            
            ArrayList<Ordini> lista = new ArrayList<>();
            //ArrayList<String> lista_modelli = new ArrayList<>();
            //int cont=0;

            // Leggo la risposta del database
            while (risultato.next()) {

                // Estraggo i valori
                String modello = risultato.getString("modello");
                String dataRitiro = risultato.getString("data_ritiro");
                String dataConsegna = risultato.getString("data_consegna");
                String luogoRitiro = risultato.getString("luogo_ritiro");
                String luogoConsegna = risultato.getString("luogo_consegna");
                int prezzoGiorn = Integer.parseInt(risultato.getString("prezzo_giorn"));
                int fk_auto = Integer.parseInt(risultato.getString("fk_auto"));
                int fk_utente = Integer.parseInt(risultato.getString("fk_utente"));

                // Creo l'ordine
                Ordini ordine = new Ordini(fk_utente, fk_auto, dataRitiro, dataConsegna, luogoRitiro, luogoConsegna);

                // Aggiungo l'ordine alla lista
                lista.add(ordine);
                
                //lista_modelli.add(modello);
                
                //cont++;
            }
            
            if (lista.isEmpty()) { 
                request.setAttribute("visible", false);
            } else {
                request.setAttribute("visible", true);
            }
            
            // Imposto i parametri
            request.setAttribute("elencoOrdini", lista);
            //request.setAttribute("elencoModelli", lista_modelli);
            //request.setAttribute("numModelli", cont);

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/WEB-INF/elenco_ordini.jsp").forward(request, response);

            // Chiudo la connesione
            connessione.close();

        } catch (Exception errore) {
            request.setAttribute("messaggio", errore);
        }
    }
}
