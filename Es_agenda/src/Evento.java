import java.util.Date;

public class Evento {
    private String nome;
    private Date data;
    private Double latitudine;
    private Double longitudine;
    private String descrizione;
    private TipoDiEvento tipoDiEvento;

    //creare rif. a participant


    public Evento(String nome, Date data, double latitudine, double longitudine, String descrizione, TipoDiEvento tipoDiEvento) {
        this.nome = nome;
        this.data = data;
        this.latitudine = latitudine;
        this.longitudine = longitudine;
        this.descrizione = descrizione;
        this.tipoDiEvento = tipoDiEvento;
    }

    public Evento(String nome, Date data) {
        this.nome = nome;
        this.data = data;
        this.latitudine = null;
        this.longitudine = null;
        this.descrizione = "";
        this.tipoDiEvento = null;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public Double getLatitudine() {
        return latitudine;
    }

    public void setLatitudine(Double latitudine) {
        this.latitudine = latitudine;
    }

    public Double getLongitudine() {
        return longitudine;
    }

    public void setLongitudine(Double longitudine) {
        this.longitudine = longitudine;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public TipoDiEvento getTipoDiEvento() {
        return tipoDiEvento;
    }

    public void setTipoDiEvento(TipoDiEvento tipoDiEvento) {
        this.tipoDiEvento = tipoDiEvento;
    }
}
