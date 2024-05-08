package co.develhope.eserciziolibro.controllers;

import co.develhope.eserciziolibro.models.Book;
import co.develhope.eserciziolibro.services.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/books")
public class BookController {

    private final BookService bookService;

    @Autowired
    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping
    public List<Book> getBooks() {
        return bookService.getBooks();
    }

    @GetMapping("/{id}")
    public Book getBookById(@PathVariable Integer id) {
        return bookService.getBookById(id);
    }

    @GetMapping("/search")
    public List<Book> searchBooks(@RequestParam(required = false) String title,
                                  @RequestParam(required = false) String author,
                                  @RequestParam(required = false) String isbn) {
        return bookService.searchBooks(title, author, isbn);
    }

    @PostMapping("/create_book")
    public Book createBook(@RequestBody Book book) {
        return bookService.createBook(book);
    }

    @PutMapping("/update_book/{id}")
    public Book updateBook(@PathVariable Integer id, @RequestBody Book book) {
        return bookService.updateBook(id, book);
    }

    @DeleteMapping("/delete_book/{id}")
    public Book deleteBook(@PathVariable Integer id) {
        return bookService.deleteBook(id);
    }

    @DeleteMapping("/delete_all_books")
    public List<Book> deleteAllBooks() {
        return bookService.deleteAllBooks ();
    }


}
