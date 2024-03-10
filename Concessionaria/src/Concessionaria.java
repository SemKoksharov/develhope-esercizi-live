public class Concessionaria {
    String nome;
    Veicolo[] catalogo = new Veicolo[50];

    public Concessionaria(String nome, Veicolo[] catalogo) {
        this.nome = nome;
        this.catalogo = catalogo;
    }
}
