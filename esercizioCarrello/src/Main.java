/*
Traccia: Gestione del Carrello della Spesa con Eccezioni
Scrivere un programma in Java per gestire un carrello della spesa con la possibilità di aggiungere sia prodotti alimentari che non alimentari. Ogni prodotto ha un nome e un prezzo associato. I prodotti alimentari hanno anche una data di scadenza, mentre i prodotti non alimentari hanno un materiale di composizione.
Implementare le seguenti classi:
Prodotto: Una classe che rappresenta un generico prodotto con attributi nome e prezzo.
Alimentare: Estende la classe
Prodotto. Aggiunge l'attributo dataDiScadenza.
NonAlimentare: Estende la classe
Prodotto. Aggiunge l'attributo materiale.
CarrelloSpesa: Una classe che rappresenta il carrello della spesa. Deve essere in grado di aggiungere prodotti, visualizzare i prodotti nel carrello e calcolare il totale degli acquisti.
Il programma deve gestire le seguenti eccezioni:
InputMismatchException: Se l'utente inserisce un tipo di dato non valido durante l'input del prezzo del prodotto.
IllegalArgumentException: Se l'utente inserisce un prezzo negativo per un prodotto.
NullPointerException: Se l'utente tenta di aggiungere un prodotto null al carrello della spesa.
prodotto.ScadenzaProdottoException: Se l'utente inserisce una data di scadenza nel passato per un prodotto alimentare.
*/

import prodotto.Prodotto;

import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;

public class Main {
    public static void main(String[] args) {

        Date date = new Date();
        System.out.println(date);
        DateFormat df = DateFormat.getDateTimeInstance(DateFormat.DEFAULT, DateFormat.SHORT, Locale.ITALY );
        System.out.println(df.format(date));

    }
}
