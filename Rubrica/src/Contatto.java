public class Contatto {
    private String nome;
    private String cognome;
    private String numero;
    private String prefisso;
    private String id;

    public Contatto(String id, String nome, String cognome, String numero, String prefisso) {
        this.id = id;
        this.nome = nome;
        this.cognome = cognome;
        this.numero = numero;
        this.prefisso = prefisso;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getPrefisso() {
        return prefisso;
    }

    public String getId(){
        return id;
    }

    public void setPrefisso(String prefisso) {
        this.prefisso = prefisso;
    }
    public boolean verifyPrefisso(String prefisso){
        if(prefisso.length() != 3){
            return false;
        }return true;
    }

    @Override
    public String toString() {
        return
                "id = " + id +
                ", nome = " + nome  +
                ", cognome = " + cognome  +
                ", numero telefonico = " + prefisso + " " + numero

                ;
    }
}
