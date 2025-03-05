package Assignment04.Assignment04.Cats;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



@Service
public class catService {

    @Autowired
    private catRepository catRepository;





    //Gets all the cats 
    public Object getAllCats(){
      return catRepository.findAll();
    }


    //Gets cats by ID number 
    public Object getCatsByID(int catID){
      return catRepository.getCatByID(catID);
    }

    //Gets Cats by Name
    public Object getCatByName(String name){
      return catRepository.getCatByName(name);
    }

    //Get cats by Breed
    public Object getCatByBreed(String breed){
      return catRepository.getCatByBreed(breed);
    }

    //Gets cats by description
    public Object getCatByDescription(String description){
      return catRepository.getCatByDescription(description);
    }

    //Gets cat by age 
    public Object getCatByAge(int age){
      return catRepository.getCatByAge(age);
    }

    //Add a new cats
    public Object addNewCat(cats cat){
        return catRepository.save(cat);
    }

    //Remove a cat from the database
    public void removeCat(int catID){
        catRepository.deleteById(catID);
    }

    //Update an exsiting cat in the database
    public void updateCat(int catID, cats cat){
        cats presentCat = (cats) getCatsByID(catID);
        presentCat.setName(cat.getName());
        presentCat.setBreed(cat.getBreed());
        presentCat.setDescription(cat.getDescription());
        presentCat.setAge(cat.getAge());
        catRepository.save(presentCat);
    }







}












