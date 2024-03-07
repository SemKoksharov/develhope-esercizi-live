package src.models;

public class Libro {
    protected String titolo;
    protected String autore;
    protected int annoDiPubblicazione;
    protected String isbn;

    public Libro(String titolo, String autore, int annoDiPubblicazione, String isbn) {
        this.titolo = titolo;
        this.autore = autore;
        this.annoDiPubblicazione = annoDiPubblicazione;
        this.isbn = isbn;
    }

    public String getTitolo() {
        return titolo;
    }

    public void setTitolo(String titolo) {
        this.titolo = titolo;
    }

    public String getAutore() {
        return autore;
    }

    public void setAutore(String autore) {
        this.autore = autore;
    }

    public int getAnnoDiPubblicazione() {
        return annoDiPubblicazione;
    }

    public void setAnnoDiPubblicazione(int annoDiPubblicazione) {
        this.annoDiPubblicazione = annoDiPubblicazione;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    @Override
    public String toString() {
        return "Libro{" +
                "titolo='" + titolo + '\'' +
                ", autore='" + autore + '\'' +
                ", annoDiPubblicazione=" + annoDiPubblicazione +
                ", isbn='" + isbn + '\'' +
                '}';
    }
}
