public class Main {
    public static void main(String[] args) {
        Concessionaria concessionaria = new Concessionaria("Simone&C.O", new Veicolo[50]);
        System.out.println(concessionaria.getNome());
        Veicolo veicolo1 = new Auto("Toyota", "Corolla", 20000, TipoDiMotore.DIESEL);
        Veicolo veicolo2 = new Auto("Fiat", "Panda", 15000, TipoDiMotore.IBRIDO);
        Veicolo veicolo3 = new Auto("Subaru", "Baracca", 40000, TipoDiMotore.ELETTRICO);

        Moto veicolo4 = new Moto("Ducati", "Urau", 30000, TipoDiMotore.GPL);
        Moto veicolo5 = new Moto("Harley", "Iron883", 10000, TipoDiMotore.IBRIDO);
        Moto veicolo6 = new Moto("Honda", "Non so", 14000, TipoDiMotore.DIESEL);
        concessionaria.addVeicolo(veicolo1);
        concessionaria.addVeicolo(veicolo2);
        concessionaria.addVeicolo(veicolo3);
        concessionaria.addVeicolo(veicolo4);
        concessionaria.addVeicolo(veicolo5);
        concessionaria.addVeicolo(veicolo6);
        //concessionaria.stampaCatalogo();
        concessionaria.consumoMedioCatalogo();
    }
}
