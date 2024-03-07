package src.models;

public class LibroCartaceo extends Libro{
    private int numPagine;
    private float peso;

    public LibroCartaceo(String titolo, String autore, int annoDiPubblicazione, String isbn, int numPagine, float peso) {
        super(titolo, autore, annoDiPubblicazione, isbn);
        this.numPagine = numPagine;
        this.peso = peso;
    }

    @Override
    public String toString() {
        return "LibroCartaceo{" +
                "numPagine=" + numPagine +
                ", peso=" + peso +
                ", titolo='" + titolo + '\'' +
                ", autore='" + autore + '\'' +
                ", annoDiPubblicazione=" + annoDiPubblicazione +
                ", isbn='" + isbn + '\'' +
                '}';
    }
}
