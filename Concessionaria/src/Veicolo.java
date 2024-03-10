public abstract class Veicolo  {
    protected String marca;
    protected String modello;
    protected float prezzo;

    protected TipoDiMotore tipoDiMotore;

    protected int peso;
    protected int velocita;

    public Veicolo (String marca, String modello, float prezzo, TipoDiMotore tipoDiMotore){
        this.marca = marca;

        this.modello = modello;

        this.prezzo = prezzo;

        this.tipoDiMotore = tipoDiMotore;
    }

    public abstract void consumoMedio();

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModello() {
        return modello;
    }

    public void setModello(String modello) {
        this.modello = modello;
    }

    public float getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(float prezzo) {
        this.prezzo = prezzo;
    }

    public TipoDiMotore getTipoDiMotore() {
        return tipoDiMotore;
    }

    public void setTipoDiMotore(TipoDiMotore tipoDiMotore) {
        this.tipoDiMotore = tipoDiMotore;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public int getVelocita() {
        return velocita;
    }

    public void setVelocita(int velocita) {
        this.velocita = velocita;
    }
}
