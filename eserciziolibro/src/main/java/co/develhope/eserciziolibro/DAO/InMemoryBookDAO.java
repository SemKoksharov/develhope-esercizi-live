package co.develhope.eserciziolibro.DAO;

import co.develhope.eserciziolibro.models.Book;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class InMemoryBookDAO implements BookDAO{

    private Map<Integer, Book> books = new HashMap<>();
    private Integer id = 0;

    @Override
    public List<Book> getBooks() {
        return List.of();
    }

    @Override
    public Book getBookById(Integer id) {
        return null;
    }

    @Override
    public List<Book> searchBooks(String title, String author, String isbn) {
        return List.of();
    }

    @Override
    public Book createBook(Book book) {
        return null;
    }

    @Override
    public Book updateBook(Integer id, Book book) {
        return null;
    }

    @Override
    public Book deleteBook(Integer id) {
        return null;
    }

    @Override
    public List<Book> deleteAllBooks() {
        return List.of();
    }
}
