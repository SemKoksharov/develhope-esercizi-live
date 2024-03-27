import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Agenda {

    Map<Date, ArrayList<Evento>> eventiMap;

    public Agenda(Map<Date, ArrayList<Evento>> eventiMap) {
        this.eventiMap = eventiMap;
    }

    public Agenda() {
        this.eventiMap = new HashMap<>();
    }

    public void aggiungiEvento(Evento evento) {
        if(eventiMap.containsKey(evento.getData())){
            ArrayList<Evento> eventi = eventiMap.get(evento.getData());
            eventi.add(evento);
            eventiMap.put(evento.getData(), eventi);
        } else {
            ArrayList<Evento> eventi = new ArrayList<>();
            eventi.add(evento);
            eventiMap.put(evento.getData(), eventi);
        }
    }

    //aggiungere evento
    //rimuovere un evento
    //modificare un evento
    //cercare un evento
    //mostrare gli eventi in un range di giorni
    //filtrare gli eventi in base al tipo



}
