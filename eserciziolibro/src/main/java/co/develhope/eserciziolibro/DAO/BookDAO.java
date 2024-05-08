package co.develhope.eserciziolibro.DAO;

import co.develhope.eserciziolibro.models.Book;

import java.util.List;

public interface BookDAO {

    public List<Book> getBooks();

    public Book getBookById(Integer id);

    public List<Book> searchBooks(String title, String author, String isbn);

    public Book createBook(Book book);

    public Book updateBook(Integer id, Book book);

    public Book deleteBook(Integer id);

    public List<Book> deleteAllBooks();

}
