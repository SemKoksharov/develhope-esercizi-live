package src.libreria;

import src.models.Libro;

public class Libreria implements ILibreria {
    private Libro[] libros;

    public Libreria() {
        this.libros = new Libro[0];
    }

    @Override
    public void aggiungiLibro(Libro libro) {
        Libro[] tempArray = new Libro[libros.length+1];
        for (int i = 0; i< libros.length; i++){
            tempArray[i]=libros[i];
        }
        tempArray[tempArray.length-1]=libro;
        libros = tempArray;
    }

    @Override
    public void rimuoviLibro(Libro libro) {
        Libro[] tempArray = new Libro[libros.length-1];
        int j = 0;
        for (int i = 0; i < libros.length; i++){
            if (!libros[i].getIsbn().equalsIgnoreCase(libro.getIsbn())){
                tempArray[j]=libros[i];
                j++;
            }
        }
        libros = tempArray;
    }

    @Override
    public void visualizzaLibri() {
        for (Libro libro : libros){
            System.out.println(libro);
        }
    }
}
