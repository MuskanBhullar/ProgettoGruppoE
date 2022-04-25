package Models;

public class Ordini {
    private int utente;
    private int auto;
    private String data_ritiro;
    private String data_consegna;
    private String luogo_ritiro;
    private String luogo_consegna;
    
    public Ordini(int u, int a, String dr, String dc, String lr, String lc) {
        utente = u;
        auto = a;
        data_ritiro = dr;
        data_consegna = dc;
        luogo_ritiro = lr;
        luogo_consegna = lc;
    }
    
    public int getUtente() { return utente; }
    public int getAuto() { return auto; }
    public String getDataRitiro() { return data_ritiro; }
    public String getDataConsegna() { return data_consegna; }
    public String getLuogoConsegna() { return luogo_consegna; }
    public String getLuogoRitiro() { return luogo_ritiro; }
}
