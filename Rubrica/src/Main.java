
public class Main {
    public static void main(String[] args) throws Exception {

        Rubrica rubrica = new Rubrica();

        Contatto contatto1 = new Contatto("Davide", "Busà", "11111", "+39");
        Contatto contatto2 = new Contatto("Francesco", "Checchia", "22222", "+39");
        Contatto contatto3 = new Contatto("Emmanuele", "Sartorio", "33333", "+39");
        ContattoEsteso contatto4 = new ContattoEsteso("Marco", "Ferraro", "44444",
                "+39", "via delle vie" ,"Montalto Uffugo", "87046", "Cosenza");
        rubrica.aggiungiContatto(contatto1);
        rubrica.aggiungiContatto(contatto2);
        rubrica.aggiungiContatto(contatto3);
        System.out.println("--------------------- visualizza rubrica");
        rubrica.visualizzaRubrica();
        System.out.println("--------------------- elimina contatto");
        rubrica.rimuoviContatto(contatto1);
        System.out.println("--------------------- visualizza rubrica");
        rubrica.visualizzaRubrica();
        System.out.println("--------------------- cerca con fr");
        rubrica.cercaContattoPerNome("fr");
        System.out.println("--------------------- cerca con sar");
        rubrica.cercaContattoPerCognome("sar");
        System.out.println("--------------------- cerca con 222");
        rubrica.cercaContattoPerNumero("222");
        System.out.println("--------------------- cerca con 222");
        rubrica.cercaContatto("222");
        System.out.println("--------------------- Aggiunto contatto esteso");
        rubrica.aggiungiContatto(contatto4);
        rubrica.visualizzaRubrica();
    }
}