public class ContattoEsteso extends Contatto{
    private String via;
    private String citta;
    private String cap;
    private String provincia;
    public ContattoEsteso(String nome, String cognome, String numero, String prefisso, String via, String citta, String cap, String provincia) {
        super(nome, cognome, numero, prefisso);
        this.via = via;
        this.citta = citta;
        this.cap = cap;
        this.provincia = provincia;
    }

    public String getVia() {
        return via;
    }

    public void setVia(String via) {
        this.via = via;
    }

    public String getCitta() {
        return citta;
    }

    public void setCitta(String citta) {
        this.citta = citta;
    }

    public String getCap() {
        return cap;
    }

    public void setCap(String cap) {
        this.cap = cap;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }
    @Override
    public String toString() {
        return
                "nome= " + super.getNome()  +
                        ", cognome= " + super.getCognome()  +
                        ", numero telefonico = " + super.getPrefisso() + " " + super.getNumero() +
                        ", indirizzo = " + via + ", " + citta + ", " + provincia + ", " + cap

                ;
    }
}
