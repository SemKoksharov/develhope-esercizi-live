package src.models;

public class Ebook extends Libro {
    private double dimensioniFile;
    private String formato;
    public Ebook(String titolo, String autore, int annoDiPubblicazione, String isbn, double dimensioniFile, String formato) {
        super(titolo, autore, annoDiPubblicazione, isbn);
        this.dimensioniFile = dimensioniFile;
        this.formato = formato;
    }

    @Override
    public String toString() {
        return "Ebook{" +
                "dimensioniFile=" + dimensioniFile +
                ", formato='" + formato + '\'' +
                ", titolo='" + titolo + '\'' +
                ", autore='" + autore + '\'' +
                ", annoDiPubblicazione=" + annoDiPubblicazione +
                ", isbn='" + isbn + '\'' +
                '}';
    }
}
