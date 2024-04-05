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

    public void aggiungiEvento (Evento eventoDaAggiungere) {
        if (eventiMap.containsKey(eventoDaAggiungere.getData())) {
            ArrayList<Evento> eventi = eventiMap.get(eventoDaAggiungere.getData());
            eventi.add(eventoDaAggiungere);
            Collections.sort(eventi, Comparator.comparing(Evento::getTime));
            eventiMap.put(eventoDaAggiungere.getData(), eventi);
        } else {
            ArrayList<Evento> eventi = new ArrayList<>();
            eventi.add(eventoDaAggiungere);
            eventiMap.put(eventoDaAggiungere.getData(), eventi);
        }
    }

    public void rimuoviEvento (Evento eventoDaRimuovere) {
        if (eventiMap.containsKey(eventoDaRimuovere.getData())) {
            ArrayList<Evento> eventiDelGiorno = eventiMap.get(eventoDaRimuovere.getData());
            Iterator<Evento> eventoIterator = eventiDelGiorno.iterator();

            boolean eventoTrovato = false;
            while (eventoIterator.hasNext()) {
                if (eventoIterator.next().getId() == eventoDaRimuovere.getId()) {
                    eventoTrovato = true;
                    eventoIterator.remove();
                    System.out.println("L'evento è stato rimosso.");
                    break;
                }
            }

            if (!eventoTrovato) {
                System.out.println("Esistono altri eventi in questa data, ma non ho trovato quello che volevi rimuovere.");
            }
        } else {
            System.out.println("Non ci sono eventi nella data specificata.");
        }

        //aggiungere evento
        //rimuovere un evento
        //modificare un evento
        //cercare un evento
        //mostrare gli eventi in un range di giorni
        //filtrare gli eventi in base al tipo


    }

    public void modificaEvento (Evento evento) {

    }
}