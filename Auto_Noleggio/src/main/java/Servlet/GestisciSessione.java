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
import javax.servlet.http.HttpSession;

@WebServlet(name = "sessione", urlPatterns = {"/sessione"})
public class GestisciSessione extends HttpServlet {
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
        
        String email = request.getParameter("emailUtente");
        
        Connection connessione = DatabaseManager.generaIstanza().connetti();
            
        Statement query = connessione.createStatement();
            
        String SQL = "select id_utente from utenti where email="+ email ;
        
        //Creo la sessione 
        HttpSession sessione = request.getSession();
        
        //Assegno l'id dell'utente (dovrei leggerlo dal database)
        sessione.setAttribute("idUtente", "1");
        
        //Inoltro la richiesta alla home page
        request.getServletContext().getRequestDispatcher("/").forward(request, response);
        }catch(Exception errore){
            
        }
        
    }
}
