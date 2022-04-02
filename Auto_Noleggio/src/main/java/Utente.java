public class Utente {
    private String nome;
    private String cognome;
    private int eta;
    private String email;
    private String password;
    
    public Utente(String n, String c, int e, String naz, String e_mail, String psw)
    {
        nome=n;
        cognome=c;
        eta=e;
        email=e_mail;
        password=psw;
        
    }
    public String getNome(){return nome;}
    public String getCogome(){return cognome;}
    public int getEta(){return eta;}
    public String getEmail(){return email;}
    public String getPassword(){return password;}
}

