import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

public class Evento {
    private String nome;
    private LocalDate data;
    private LocalTime time;

    private Double latitudine;
    private Double longitudine;
    private String descrizione;
    private TipoDiEvento tipoDiEvento;

    //creare rif. a participant


    public Evento(String nome, LocalDate data, LocalTime time, double latitudine, double longitudine, String descrizione, TipoDiEvento tipoDiEvento) {
        this.nome = nome;
        this.data = data;
        this.time = time;
        this.latitudine = latitudine;
        this.longitudine = longitudine;
        this.descrizione = descrizione;
        this.tipoDiEvento = tipoDiEvento;
    }

    public Evento(String nome, LocalDate data, LocalTime time) {
        this.nome = nome;
        this.data = data;
        this.time = time;
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

    public LocalDate getData() {
        return data;
    }

    public void setData(LocalDate data) {
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

    public LocalTime getTime() {
        return time;
    }

    public void setTime(LocalTime time) {
        this.time = time;
    }
}
