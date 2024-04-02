import java.time.LocalDate;
import java.util.*;

public class Agenda {

    Map<LocalDate, ArrayList<Evento>> eventiMap;

    public Agenda(Map<LocalDate, ArrayList<Evento>> eventiMap) {
        this.eventiMap = eventiMap;
    }

    public Agenda() {
        this.eventiMap = new HashMap<>();
    }

    public void aggiungiEvento(Evento evento) {
        if (eventiMap.containsKey(evento.getData())) {
            ArrayList<Evento> eventi = eventiMap.get(evento.getData());
            eventi.add(evento);
            Collections.sort(eventi, Comparator.comparing(Evento::getTime));
            eventiMap.put(evento.getData(), eventi);
        } else {
            ArrayList<Evento> eventi = new ArrayList<>();
            eventi.add(evento);
            eventiMap.put(evento.getData(), eventi);
        }
    }

    public void rimuoviEvento(Evento evento) {

        if (eventiMap.containsKey(evento.getData())) {
            if (eventiMap.get(evento.getData()).remove(evento)){
                System.out.println("L'evento è stato rimosso.");
            } else {
                System.out.println("Esistono altri eventi in questa data, ma non ho trovato quello che volevi rimuovere");
            }

        } else {
            System.out.println("L'evento non è stato trovato.");
        }

        //aggiungere evento
        //rimuovere un evento
        //modificare un evento
        //cercare un evento
        //mostrare gli eventi in un range di giorni
        //filtrare gli eventi in base al tipo


    }
}
