package Servlet;

import Models.Ordini;
import Database.DatabaseManager;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "aggiungiOrdine", urlPatterns = {"/aggiungiOrdine"})
public class AggiungiOrdine extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //catturo la sessione
            HttpSession sessione = request.getSession();
            
            //assegno i dati ricevuti dalla richiesta 
            String modello = request.getParameter("modello");
            String dataRitiro = request.getParameter("dataRitiro");
            String dataConsegna = request.getParameter("dataConsegna");
            String luogoRitiro = request.getParameter("luogoRitiro");
            String luogoConsegna = request.getParameter("luogoConsegna");
            
            //Operazione per addattare le date al database
            dataRitiro = dataRitiro.replace("/","-");  
            String[] prova = dataRitiro.split("-");
            String anno=prova[2];
            String mese=prova[0];
            String giorno=prova[1];
            dataRitiro = anno+"-"+mese+"-"+giorno;
            
            dataConsegna = dataConsegna.replace("/","-");
            String[] prova2 = dataConsegna.split("-");
            String anno2=prova2[2];
            String mese2=prova2[0];
            String giorno2=prova2[1];
            dataConsegna = anno2+"-"+mese2+"-"+giorno2;
            //fine operazioni date
            
            if (modello.isEmpty() || dataRitiro.isEmpty() || dataConsegna.isEmpty()|| luogoRitiro.isEmpty()|| luogoConsegna.isEmpty()) {
                request.setAttribute("messaggio", "Hai inserito dei dati errati.");
                request.setAttribute("coloreMessaggio", "orange");

                // Inoltro la richiesta
                request.getServletContext().getRequestDispatcher("/WEB-INF/auto_scelta.jsp").forward(request, response);
                return;
            }
            
            // Connetto al DB
            Connection connessione = DatabaseManager.generaIstanza().connetti();

            // Preparo la query
            Statement query = connessione.createStatement();
            
            //mi faccio tornare l'id auto 
            String SQL_auto = "select id_auto from auto where modello='"+modello+"'";
            ResultSet risultato = query.executeQuery(SQL_auto);
            String id_auto="";
            
            while(risultato.next()){
                id_auto=risultato.getString("id_auto");
            }
            
            //catturo l'email(univoca) dalla sessione
            String utente = (String)sessione.getAttribute("utente");
            //mi faccio tornare l'id utente
            String SQL_utente = "select id_utente from utenti where email='"+utente+"'";
            ResultSet risultato2 = query.executeQuery(SQL_utente);
            String id_utente="";
            
            while(risultato2.next()){
                id_utente=risultato2.getString("id_utente");
            }

            String SQL = "INSERT INTO ordini (fk_utente,fk_auto,data_ritiro,data_consegna,luogo_ritiro,luogo_consegna)"
                    + " VALUES("+id_utente+","+id_auto+",'"+dataRitiro+"','"+dataConsegna+"','"+luogoRitiro+"','"+luogoConsegna+"')";
            
            // Eseguo la query
            boolean queryEseguita = query.execute(SQL);
            
            request.setAttribute("messaggio", "Ordine effettuato con successo");
            request.setAttribute("coloreMessaggio", "green");

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/WEB-INF/auto_scelta.jsp").forward(request, response);

            // Chiudo la connesione
            connessione.close();

        } catch (Exception errore) {
            // Imposto i parametri
            request.setAttribute("messaggio", "Si è verificato un errore. Assicurati di inserire i dati correttamente");
            request.setAttribute("coloreMessaggio", "red");

            // Inoltro la richiesta
            request.getServletContext().getRequestDispatcher("/WEB-INF/auto_scelta.jsp").forward(request, response);
        }
    }
}
