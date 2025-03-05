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

    @GetMapping("/all")
    public Object getAllCats(){
        return new ResponseEntity<>(service.getAllCats(),HttpStatus.OK);
    }

    @GetMapping("/{catID}")
    public Object getOneCat(@PathVariable int catID){
        return new ResponseEntity<>(service.getCatByID(catID),HttpStatus.OK);
    }

    @GetMapping("/name")
    public Object getCatByName(@RequestParam(name = "search", defaultValue = "") String search){
        return new ResponseEntity<>(service.getCatByName(search), HttpStatus.OK);
    }

    @GetMapping("/breed/{breed}")
    public Object getCatByBreed(@PathVariable String breed){
        return new ResponseEntity<>(service.getCatByBreed(breed), HttpStatus.OK);
    }

    @GetMapping("/description")
    public Object getCatByDescription(@RequestParam(name = "search", defaultValue = "") String search){
        return new ResponseEntity<>(service.getCatByDescrpition(search), HttpStatus.OK);
    }

    @GetMapping("/age/{age}")
    public Object getCatByAge(@PathVariable int age){
        return new ResponseEntity<>(catService.getCatByAge(age), HttpStatus.OK);
    }

}












}
