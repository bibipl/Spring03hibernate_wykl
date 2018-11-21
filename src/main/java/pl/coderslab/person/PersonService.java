package pl.coderslab.person;

public interface PersonService {

    void save (Person person);

    void update (Person person);

    Person find (Long id);

    void delete (Long id);
}
