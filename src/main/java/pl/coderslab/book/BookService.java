package pl.coderslab.book;

import java.util.List;

public interface BookService {

    void save(Book book);

    void update(Book book);

    Book find(Long id);

    Book findWithAutors (Long id);

    void delete(Long id);

    List<Book> findAll ();

    List<Book> getRatingList(int rating);

}
