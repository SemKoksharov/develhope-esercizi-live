package co.develhope.eserciziolibro.services;

import co.develhope.eserciziolibro.models.Book;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface BookService {

    public List<Book> getBooks();

    public Book getBookById(Integer id);

    public List<Book> searchBooks(String title, String author, String isbn);

    public Book createBook(Book book);

    public Book updateBook(Integer id, Book book);

    public Book deleteBook(Integer id);

    public List<Book> deleteAllBooks();
}
