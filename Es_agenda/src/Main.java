import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

public class Main {
    public static void main(String[] args) {
        Agenda agenda = new Agenda();
        Evento evento1 = new Evento("Pranzo con amici", LocalDate.of(2024, 2, 27), LocalTime.of(13,30,0));
        Evento evento2 = new Evento("Cena con amici", LocalDate.of(2024, 2, 27), LocalTime.of(20,0,0));
        Evento evento3 = new Evento("Live coding gruppo A develhope", LocalDate.of(2023, 2, 27), LocalTime.of(15,30,0));
        Evento evento4 = new Evento("Live coding gruppo B develhope", LocalDate.of(2023, 2, 27), LocalTime.of(17,30,0));
        Evento evento5 = new Evento("Pausa Caffe", LocalDate.of(2023, 2, 27), LocalTime.of(16,30,0));
        Evento evento6 = new Evento("Live coding gruppo A develhope", LocalDate.of(2024, 2, 27), LocalTime.of(15,30,0));
        agenda.aggiungiEvento(evento2);
        agenda.aggiungiEvento(evento1);
        agenda.aggiungiEvento(evento3);
        agenda.aggiungiEvento(evento4);
        agenda.aggiungiEvento(evento5);
        agenda.aggiungiEvento(evento6);
        System.out.println();


    }
}