//servlet inutile allo scopo finale del nostro sito
//key=3->:
//FRPH LO SURI YHCCRVL 
package Servlet;

import Database.DatabaseManager;
import Models.Utente;
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

@WebServlet(name = "leggi", urlPatterns = {"/leggi"})
public class LeggiUtenti extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Connetto al DB
            Connection connessione = DatabaseManager.generaIstanza().connetti();

            // Preparo la query
            Statement query = connessione.createStatement();

            // Salvo il risultato della query
            ResultSet risultato = query.executeQuery("select * from utenti");

            // Array di persone (uso una classe speciale di Java)
            // Diversamente dagli array posso crearne uno vuoto
            ArrayList<Utente> lista = new ArrayList<>();

            // Leggo la risposta del database
            while (risultato.next()) {

                // Estraggo i valori
                String nome = risultato.getString("nome");
                String cognome = risultato.getString("cognome");
                String email = risultato.getString("email");
                String password = risultato.getString("password");
                int eta = Integer.parseInt(risultato.getString("eta"));

                // Creo la persona
                Utente user = new Utente(nome, cognome, eta, email, password);

                // Aggiungo la persona al vettore (lista)
                lista.add(user);
            }
            
            if (lista.isEmpty()) { 
                request.setAttribute("visible", false);
            } else {
                request.setAttribute("visible", true);
            }
            
            // Imposto i parametri
            request.setAttribute("elencoUtenti", lista);

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/WEB-INF/leggi.jsp").forward(request, response);

            // Chiudo la connesione
            connessione.close();

        } catch (Exception errore) {
            System.out.println(errore);
        }
    }
}
