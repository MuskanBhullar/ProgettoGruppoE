
package Models;

public class Auto {
   private String tipo;
    private String modello;
    private int cap_bag;
    private int potenza;
    private int num_posti;
    private int prezzo_giorn;
    
    public Auto(String t, String m, int cb, int p,int np, int pr) {
        tipo= t;
        modello = m;
        cap_bag = cb;
        potenza =p;
        num_posti=np;
        prezzo_giorn=pr;
    }
    
    public Auto(String m, int cb, int p,int np, int pr) {
        modello = m;
        cap_bag = cb;
        potenza =p;
        num_posti=np;
        prezzo_giorn=pr;
    }
    
    public String getTipo() { return tipo; }
    public String getModello() { return modello; }
    public int getCapacitaBagaglio() { return cap_bag; }
    public int getPotenza() { return potenza; }
    public int getNumPosti() { return num_posti; } 
    public int getPrezzoGiorn() { return prezzo_giorn; } 
}
