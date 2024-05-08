package co.develhope.eserciziolibro.services;

import co.develhope.eserciziolibro.DAO.BookDAO;
import co.develhope.eserciziolibro.models.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {
    private BookDAO bookDAO;

    @Autowired
    public BookServiceImpl(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }


    @Override
    public List<Book> getBooks() {
        return bookDAO.getBooks();
    }

    @Override
    public Book getBookById(Integer id) {

        if (id < 0) {
            return null;
        }
        return bookDAO.getBookById(id);
    }

    @Override
    public List<Book> searchBooks(String title, String author, String isbn) {
        return bookDAO.searchBooks(title, author, isbn);
    }

    @Override
    public Book createBook(Book book) {
        return bookDAO.createBook(book);
    }

    @Override
    public Book updateBook(Integer id, Book book) {
       Book currentBook = bookDAO.getBookById(id);
       if (currentBook == null) {
           return null;
       }
        return bookDAO.updateBook(id, book);
    }

    @Override
    public Book deleteBook(Integer id) {
        if (id < 0) {
            return null;
        }
        return bookDAO.deleteBook(id);
    }

    @Override
    public List<Book> deleteAllBooks() {
        return bookDAO.deleteAllBooks();
    }
}
