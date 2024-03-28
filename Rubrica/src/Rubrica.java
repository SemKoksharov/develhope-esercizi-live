import java.util.ArrayList;
import java.util.List;

public class Rubrica implements IRubrica {
    List<Contatto> rubrica = null;
    private int numeroMassimo;

    public Rubrica() {
        this.rubrica = new ArrayList<>();
    }

    public Rubrica(int numeroMassimo) throws Exception {
        this.rubrica = new ArrayList<>();
        if (numeroMassimo > 0) {
            this.numeroMassimo = numeroMassimo;
        }else{
            throw new Exception("La rubrica non può essere inferiore di 1");
        }
    }

    @Override
    public void aggiungiContatto(Contatto contatto) throws Exception {
        if(numeroMassimo != 0) {
            if (rubrica.size() < numeroMassimo) {
                rubrica.add(contatto);
            } else {
                throw new Exception("Non puoi aggiungere più contatti");
            }
        }else{
            rubrica.add(contatto);
        }
    }

    @Override
    public void rimuoviContatto(Contatto contatto) {
        rubrica.remove(contatto);
    }

    @Override
    public void cercaContattoPerNome(String nome) {
        for(Contatto contatto : rubrica){
            if(contatto.getNome().toLowerCase().startsWith(nome.toLowerCase())){
                System.out.println(contatto);
            }
        }
    }

    @Override
    public void cercaContattoPerCognome(String cognome) {
        for(Contatto contatto : rubrica){
            if(contatto.getCognome().toLowerCase().contains(cognome.toLowerCase())){
                System.out.println(contatto);
            }
        }
    }

    @Override
    public void cercaContattoPerNumero(String numero) {
        for(Contatto contatto : rubrica){
            if(contatto.getNumero().startsWith(numero)){
                System.out.println(contatto);
            }
        }
    }

    @Override
    public void visualizzaRubrica() {
        if (!rubrica.isEmpty()) {
            for (Contatto contatto : rubrica) {
                System.out.println(contatto);
            }
        } else {
            System.out.println("La rubrica è vuota");
        }
    }

    @Override
    public void cercaContatto(String input) {
        for(Contatto contatto : rubrica){
            if(
                    contatto.getNome().toLowerCase().contains(input.toLowerCase())||
                    contatto.getCognome().toLowerCase().contains(input.toLowerCase())||
                    contatto.getNumero().contains(input)
            ){
                System.out.println(contatto);
            }

        }
    }

    @Override
    public void visualizzaSoloContattiEstesi() {

    }

    @Override
    public int size() {
        return rubrica.size();
    }


}
