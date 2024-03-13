package prodotto;

public class NonAlimentare extends Prodotto{

    String materiale;
    public NonAlimentare(String nome, double prezzo, String materiale) {
        super(nome, prezzo);
        this.materiale = materiale;
    }

    public String getMateriale() {
        return materiale;
    }

    public void setMateriale(String materiale) {
        this.materiale = materiale;
    }
}
