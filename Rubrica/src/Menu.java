import java.util.Scanner;

public class Menu {

    private final Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    private IRubrica iRubrica;

    public Menu(IRubrica iRubrica) {
        this.iRubrica = iRubrica;
    }

    public void menu (){
        System.out.println("Benvenuto nella rubrica");
        while(true){
            System.out.println("Digita 1 per visualizzare i contatti");
            System.out.println("Digita 2 per inserire un contatto");
            System.out.println("Digita 3 per cancellare un contatto");
            System.out.println("Digita 4 per cercare un contatto per nome");
            System.out.println("Digita 5 per cercare un contatto per numero di telefono");
            System.out.println("Digita 0 per uscire");
            int scelta = scanner.nextInt();
            switch (scelta){
                case 1:
                    System.out.println("I contatti presenti in rubrica sono:");
                    iRubrica.visualizzaRubrica();
                    break;
                case 2:
                    try {
                        iRubrica.aggiungiContatto(aggCont());
                        System.out.println("Contatto aggiunto correttamente");
                    } catch (Exception e) {
                        System.out.println(e.getMessage());
                    }
                    break;
                case 0:
                    System.out.println("Grazie e tanti saluti");
                    return;
            }
        }
    }

    public Contatto aggCont (){
        System.out.println("Digita il nome");
        String nome = scanner.next();
        System.out.println("Digita il cognome");
        String cognome = scanner.next();
        System.out.println("Digita il prefisso");
        String prefisso = scanner.next();
        System.out.println("Digita il numero di telefono");
        String numero = scanner.next();
        System.out.println("Vuoi inserire anche l'indirizzo? Se si digita si, altrimenti no");
        while (true) {
            String scelta = scanner.next();
            if (scelta.equalsIgnoreCase("no")) {
                Contatto contatto = new Contatto(nome, cognome, numero, prefisso);
                return contatto;
            } else if (scelta.equalsIgnoreCase("si")){
                System.out.println("Inserisci l'indirizzo completo");
                System.out.println("Inserisci la via");
                String via = scanner.next();
                System.out.println("Inserisci la città");
                String citta = scanner.next();
                System.out.println("Inserisci il CAP");
                String cap = scanner.next();
                System.out.println("Inserisci la provincia");
                String provincia = scanner.next();
                Contatto contattoEsteso = new ContattoEsteso(nome, cognome, numero, prefisso, via, citta, cap, provincia);
                return contattoEsteso;
            } else {
                System.out.println("Digita correttamente o SI o NO!!!!!!!!!! (Sei un cretino)");
            }
        }
    }

}
