# CSC340 Assignment Four - CRUD API 

## Description 
CRUD API for homeowork purposes

## Installation (Use terminal(Mac/Linux) Use gitbash or gitGUI(Windows))
- Copy the link for the repo from GitHub.
- This project is built to run with jdk 21.
- Open the project in IntelliJ. RECOMMENDED. (configure the JDK if prompted)
- MUST BE RUNNING HAVE A DATABASE CREATED AND AMPPS RUNNING. 

## API endpoints
BaseURL:
```
http://localhost:8080/cats
```

### Get all cats
- /all (GET)
```
http://localhost:8080/cats/all
```
- JSON array structure when ran: 
```
    {
        "catID": 1,
        "name": "Mauricio Cat",
        "breed": "Tabby Cat",
        "description": "This my cat! His name is Mauricio but his nickname is Mau, he is fat and likes to sleep. He also likes chicken. ",
        "age": 2
    },
    {
        "catID": 2,
        "name": "Luna Cat",
        "breed": "Tuxedo Cat",
        "description": "MIAUUUUUUUUUU!!! (Also my cat by the way. Isn't she cute?) ",
        "age": 1
    },
    {
        "catID": 3,
        "name": "Mango Cat",
        "breed": "Cow Cat",
        "description": "MIAUUUUUUUUUU!!! ",
        "age": 1
    },
    {
        "catID": 4,
        "name": "Paisley Cat",
        "breed": "White cat",
        "description": "MIAUUUUUUUUUU!!! ",
        "age": 20
    },
    {
        "catID": 6,
        "name": "Tambor Cat",
        "breed": "Grey Cat ",
        "description": "Grey MIAUUUUUUUU!!!!",
        "age": 1
    }
]
```



### Get cat by ID
- /{catID} (GET)
```
http://localhost:8080/cats/{catID}
```
- JSON array structure when ran: 
```
```



### Get cat by name
- /name (GET)
```
http://localhost:8080/cats/name?search={name}
```
- JSON array structure when ran: 
``` 
```




### Get cat by breed
- /breed/{breed} (GET)
``` 
http://localhost:8080/cats/breed/{breed}
```
- JSON array structure when ran: 
```  
```




### Get cat by description
- /decription/{description}
``` 
http://localhost:8080/cats/description?search={description}
```
- JSON array structure when ran: 
```

```



