package prodotto;

public class Prodotto {
    String nome;
    double prezzo;

    public Prodotto(String nome, double prezzo) {
        this.nome = nome;
        if(prezzo<0){
            throw new IllegalArgumentException("Il prezzo non può essere negativo");
        }
        this.prezzo = prezzo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(double prezzo) {
        this.prezzo = prezzo;
    }

}
