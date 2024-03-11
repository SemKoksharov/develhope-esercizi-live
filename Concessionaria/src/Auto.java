public class Auto extends Veicolo {
    boolean sensoriDiParcheggio;
    boolean cintureDiSicurezza;
    String infoNavigatore = "Navigatore non presente";

    public Auto(String marca, String modello, float prezzo, TipoDiMotore tipoDiMotore) {
        super(marca, modello, prezzo, tipoDiMotore);
    }

    public Auto(String marca, String modello, float prezzo, TipoDiMotore tipoDiMotore, boolean sensoriDiParcheggio,
            boolean cintureDiSicurezza) {
        super(marca, modello, prezzo, tipoDiMotore);
        this.sensoriDiParcheggio = sensoriDiParcheggio;
        this.cintureDiSicurezza = cintureDiSicurezza;
    }

    public boolean isSensoriDiParcheggio() {
        return sensoriDiParcheggio;
    }

    public void setSensoriDiParcheggio(boolean sensoriDiParcheggio) {
        this.sensoriDiParcheggio = sensoriDiParcheggio;
    }

    public boolean isCintureDiSicurezza() {
        return cintureDiSicurezza;
    }

    public void setCintureDiSicurezza(boolean cintureDiSicurezza) {
        this.cintureDiSicurezza = cintureDiSicurezza;
    }

    public String getInfoNavigatore() {
        return infoNavigatore;
    }

    public void setInfoNavigatore(String infoNavigatore) {
        this.infoNavigatore = infoNavigatore;
    }

    @Override
    public void consumoMedio() {
        if (peso <= 0 || velocita <= 0) {
            System.out.println(super.getMarca() + " No comment");
        } else {
            System.out.println(
                    super.getMarca() + "Studi scientifici dimostrano che il consumo per km è:" + peso * velocita);
        }
    }
}
