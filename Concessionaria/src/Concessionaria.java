public class Concessionaria {
    String nome;
    Veicolo[] catalogo;

    public Concessionaria(String nome, Veicolo[] catalogo) {
        this.nome = nome;
        this.catalogo = catalogo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Veicolo[] getCatalogo() {
        return catalogo;
    }

    public void setCatalogo(Veicolo[] catalogo) {
        this.catalogo = catalogo;
    }

    public void addVeicolo(Veicolo veicolo) {
        for (int i = 0; i < catalogo.length; i++) {
            if (catalogo[i] == null) {
                catalogo[i] = veicolo;
                break;
            }
        }
    }

    public void stampaCatalogo() {
        for (int index = 0; index < catalogo.length; index++) {
            if (catalogo[index] != null) {
                System.out.println(catalogo[index]);
            }
        }
    }

    public void consumoMedioCatalogo() {
        for (int index = 0; index < catalogo.length; index++) {
            if (catalogo[index] != null) {
                catalogo[index].consumoMedio();
            }
        }
    }
}
