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

@WebServlet(name = "inserisciAuto", urlPatterns = {"/inserisciAuto"})
public class InserisciAuto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            // Connetto al DB
            Connection connessione = DatabaseManager.generaIstanza().connetti();

            // Preparo la query
            Statement query = connessione.createStatement();

            // Salvo il risultato della query
            ResultSet risultato = query.executeQuery("select * from auto order by prezzo_giorn");

            // Array di persone (uso una classe speciale di Java)
            // Diversamente dagli array posso crearne uno vuoto
            ArrayList<Auto> lista = new ArrayList<>();
            ArrayList<String> lista2 = new ArrayList<>();

            // Leggo la risposta del database
            while (risultato.next()) {

                // Estraggo i valori
                String tipo = risultato.getString("tipo");
                String modello = risultato.getString("modello");
                int cap_bag = Integer.parseInt(risultato.getString("capacita_bagaglio"));
                int potenza = Integer.parseInt(risultato.getString("potenza"));
                int num_posti = Integer.parseInt(risultato.getString("num_posti"));
                int prezzo_giorn = Integer.parseInt(risultato.getString("prezzo_giorn"));
                
                
                String nome = risultato.getString("modello");
                nome = nome.replace("_"," ");
                
                lista2.add(nome);

                // Creo la persona
                Auto a = new Auto(tipo, modello, cap_bag, potenza, num_posti,prezzo_giorn);

                // Aggiungo l'auto al vettore (lista)
                lista.add(a);
            }
            
            // Imposto i parametri
            request.setAttribute("elencoAuto", lista);
            request.setAttribute("elencoNomi", lista2);
            

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/auto.jsp").forward(request, response);

            // Chiudo la connesione
            connessione.close();

        } catch (Exception errore) {
            System.out.println(errore);
        }
    }
}