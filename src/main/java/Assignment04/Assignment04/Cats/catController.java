package Assignment04.Assignment04.Cats;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import java.util.List;


@RestController
@RequestMapping("/cats")
public class catController {



    @Autowired
    private catService service;

    /**
     *  METHOD: GET
     * http://localhost:8080/cats/all
     */
    @GetMapping("/all")
    public Object getAllCats(){
        return new ResponseEntity<>(service.getAllCats(),HttpStatus.OK);
    }

    /**
     * METHOD: GET
     * IDs RANGE FROM 1-6 PICK ONE
     * ENTER AS: http://localhost:8080/cats/{catID}
     * EXAMPLE: http://localhost:8080/cats/1
     */
    @GetMapping("/{catID}")
    public Object getOneCat(@PathVariable int catID){
        return new ResponseEntity<>(service.getCatsByID(catID),HttpStatus.OK);
    }

    /**
     * METHOD: GET
     * ENTER AS: http://localhost:8080/cats/name?search={name}
     * EXAMPLE: http://localhost:8080/cats/name?search=Luna Cat
     */
    @GetMapping("/name")
    public Object getCatByName(@RequestParam(name = "search", defaultValue = "") String search){
        return new ResponseEntity<>(service.getCatByName(search), HttpStatus.OK);
    }

    /**
     * METHOD: GET
     * ENTER AS: http://localhost:8080/cats/breed/{breed}
     * EXAMPLE: http://localhost:8080/cats/breed/Organe Cat
     */
    @GetMapping("/breed/{breed}")
    public Object getCatByBreed(@PathVariable String breed){
        return new ResponseEntity<>(service.getCatByBreed(breed), HttpStatus.OK);
    }

    /**
     * METHOD: GET
     * ENTER AS: http://localhost:8080/cats/description?search={description}
     * EXAMPLE: http://localhost:8080/cats/name?search="MIAUUUUUUUUUU!!!
     */
    @GetMapping("/description")
    public Object getCatByDescription(@RequestParam(name = "search", defaultValue = "") String search){
        return new ResponseEntity<>(service.getCatByDescription(search), HttpStatus.OK);
    }

    /**
     * METHOD: GET
     * ENTER AS: http://localhost:8080/cats/{age}
     * EXAMPLE: http://localhost:8080/cats/20
     */
    @GetMapping("/age/{age}")
    public Object getCatByAge(@PathVariable int age){
        return new ResponseEntity<>(service.getCatByAge(age), HttpStatus.OK);
    }

    /**
     * METHOD: PUT 
     * ENTER AS: http://localhost:8080/cats/new --data
     * EXAMPLE:
     */
    @PostMapping("/new")
    public Object addCat(@RequestBody cats cats){
        service.addNewCat(cats);
        return new ResponseEntity<>(service.getAllCats(), HttpStatus.CREATED);

    }

    /**
     * METHOD: DELETE
     * ENTER AS: http://localhost:8080/cats/delete/{catID}
     * EXAMPLE: http://localhost:8080/cats/delete/5
     */
    @DeleteMapping("/delete/{catID}")
    public Object deleteCatByID(@PathVariable int catID){
         service.removeCat(catID);
         return new ResponseEntity<>(service.getAllCats(), HttpStatus.OK);
    }


    /**
    * METHOD: PUT
    * ENTER AS: http://localhost:8080/cats/update/{catID} --data
    * EXAMPLE: http://localhost:8080/cats/update/3 --data
    */
    
    @PutMapping("/update/{catID}")
    public Object updateCat(@PathVariable int catID, @RequestBody cats cats){
        service.updateCat(catID,cats);
        return new ResponseEntity<>(service.getCatsByID(catID), HttpStatus.CREATED);

    }

}













