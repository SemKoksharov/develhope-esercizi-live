package src.libreria;

import src.models.Libro;

public interface ILibreria {
    void aggiungiLibro(Libro libro);
    void rimuoviLibro(Libro libro);
    void visualizzaLibri();
}
