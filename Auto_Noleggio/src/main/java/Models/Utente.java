package Models;

public class Utente {
    private String nome;
    private String cognome;
    private int eta;
    private String email;
    private String password;
    
    public Utente(String n, String c, int e, String em, String p) {
        nome = n;
        cognome = c;
        eta = e;
        email = em;
        password = p;
    }
    
    public String getNome() { return nome; }
    public String getCognome() { return cognome; }
    public int getEta() { return eta; }
    public String getEmail() { return email; }
    public String getPassword() { return password; }
}
