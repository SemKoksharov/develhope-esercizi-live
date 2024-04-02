public class NumeroT {
    private String prefisso;
    private String numero;

    public NumeroT(String prefisso, String numero) {
        this.prefisso = prefisso;
        this.numero = numero;
    }

    public String getPrefisso() {
        return prefisso;
    }

    public void setPrefisso(String prefisso) {
        this.prefisso = prefisso;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }
}
