package Assignment04.Assignment04.Cats;

import jakarta.persistence.*;

@Entity
@Table(name = "cats")

public class cats {


    //Data declartions
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int catID;
    @Column(nullable = false)
    public String name;
    public String breed;
    public String description;
    public int age;



    //Constructors
    public cats(){}
    public cats(int catID, String name, String breed, String description, int age) {
        this.catID = catID;
        this.name = name;
        this.breed = breed;
        this.description = description;
        this.age = age;
    }

    //Getter functions
    public int getcatID(){
      return catID;
    }
    public String getName(){
      return name;
    }
    public String getBreed(){
      return breed;
    }
    public String getDescription(){
      return description;
    }
    public int getAge(){
      return age;
    }

    //Setter functions
    public void setID(int catID){
      this.catID = catID;
    }
    public void setName(String name){
      this.name = name;
    }
    public void setBreed(String breed){
      this.breed = breed;
    }
    public void setDescription(String description){
      this.description = description;
    }
    public void setAge(int age){
      this.age = age;
    }











}
