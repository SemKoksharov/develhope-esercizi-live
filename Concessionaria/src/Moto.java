public class Moto extends Veicolo {

    boolean cascoObbligatorio = true;
    Patente patente;

    public Moto(String marca, String modello, float prezzo, TipoDiMotore tipoDiMotore,
            Patente patente) {
        super(marca, modello, prezzo, tipoDiMotore);
        this.patente = patente;
    }

    public Moto(String marca, String modello, float prezzo, TipoDiMotore tipoDiMotore) {
        super(marca, modello, prezzo, tipoDiMotore);

    }

    public boolean isCascoObbligatorio() {
        return cascoObbligatorio;
    }

    public void setCascoObbligatorio(boolean cascoObbligatorio) {
        this.cascoObbligatorio = cascoObbligatorio;
    }

    public Patente getPatente() {
        return patente;
    }

    public void setPatente(Patente patente) {
        this.patente = patente;
    }

    @Override
    public void consumoMedio() {
        if (peso <= 0 || velocita <= 0) {
            System.out.println(super.getMarca() + "ERRORE SEI SCEMO");
        } else {
            System.out.println(
                    super.getMarca() + "Studi scientifici dimostrano che il consumo per km è:" + peso * velocita / 2);
        }
    }
}
