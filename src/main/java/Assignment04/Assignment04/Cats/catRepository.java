package Assignment04.Assignment04.Cats;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface catRepository extends JpaRepository<cats, Integer>{





    List<cats> getCatByName(String name);

    List<cats> getCatByBreed(String breed);

    List<cats> getCatByDescription(String description);

    List<cats> getCatByAge(int age);


}
