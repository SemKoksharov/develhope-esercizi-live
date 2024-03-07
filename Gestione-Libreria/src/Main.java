package src;
/*
Descrizione dell'Esercizio: "Gestione di una Libreria"
In questo esercizio, creeremo un sistema di gestione di una libreria utilizzando l'ereditarietà in Java.
Avremo una classe base Libro e due sottoclassi, LibroCartaceo e Ebook, per gestire libri fisici e ebook rispettivamente.
Implementeremo funzionalità per aggiungere, rimuovere e visualizzare i libri presenti nella libreria.
Istruzioni:
Definire una classe
Libro con attributi come titolo, autore, anno di pubblicazione, ecc.
Creare due sottoclassi di Libro:
LibroCartaceo e Ebook.
LibroCartaceo avrà attributi aggiuntivi come numero di pagine e peso,
mentre Ebook avrà attributi come dimensioni del file e formato.
Creare una classe Libreria che gestisca una collezione di libri.
Implementare i metodi per aggiungere un libro,
rimuovere un libro e
visualizzare tutti i libri presenti nella libreria.
*/

import src.libreria.Libreria;
import src.models.Ebook;
import src.models.Libro;
import src.models.LibroCartaceo;

public class Main {
    public static void main(String[] args){
        Libreria libreria = new Libreria();
        Libro libro = new Libro("La Bibbia", "Dio", 0,"9782826012047");
        Libro libro1 = new LibroCartaceo("Programming Java","Francesco", 2022,"002",100,10);
        Libro libro2 = new Ebook("Come non programmare in Java", "Gianpaolo", 2023, "003", 10,"pdf");
        libreria.aggiungiLibro(libro);
        libreria.aggiungiLibro(libro1);
        libreria.aggiungiLibro(libro2);
        libreria.visualizzaLibri();
        System.out.println();
        libreria.rimuoviLibro(libro1);
        libreria.visualizzaLibri();
    }
}
