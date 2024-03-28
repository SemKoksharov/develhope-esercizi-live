import java.util.HashMap;
import java.util.Map;

public class RubricaMap implements IRubrica{
    Map<String, Contatto> rubricaMap = new HashMap<>();

    @Override
    public void aggiungiContatto(Contatto contatto) throws Exception {
        rubricaMap.put(contatto.getNumero(),contatto);
    }

    @Override
    public void rimuoviContatto(Contatto contatto) {
        rubricaMap.remove(contatto.getNumero());
    }

    @Override
    public void cercaContattoPerNome(String nome) {

    }

    @Override
    public void cercaContattoPerCognome(String cognome) {

    }

    @Override
    public void cercaContattoPerNumero(String numero) {

    }

    @Override
    public void visualizzaRubrica() {

    }

    @Override
    public void cercaContatto(String input) {

    }

    @Override
    public void visualizzaSoloContattiEstesi() {

    }

    @Override
    public int size() {
        return rubricaMap.size();
    }
}
