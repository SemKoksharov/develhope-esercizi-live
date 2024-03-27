import java.util.Date;

public class Main {
    public static void main(String[] args) {
        Agenda agenda = new Agenda();
        Evento evento1 = new Evento("Pranzo con amici", new Date(2024, 2, 27));
        Evento evento2 = new Evento("Cena con amici", new Date(2024, 2, 27));
        agenda.aggiungiEvento(evento1);
        agenda.aggiungiEvento(evento2);
        System.out.println();

    }
}