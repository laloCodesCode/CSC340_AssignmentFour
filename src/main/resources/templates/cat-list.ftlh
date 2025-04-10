<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cat Gallery</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/CSS/styles.css">
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="index.html">MY FAVORITE CATS</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
            </ul>
        </div>
    </div>
</nav>
<!--- Navigation Bar end --->




<!-- Gallery Section -->
<div class="container mt-4">
    <h1 class="text-center">Welcome to my favorite cats!!</h1>
    <div class="row">
        <#list catList as cat>
        <div class="col-md-4">
            <div class="card">
                <img src="/static/Images/MauDeCat.JPG" class="card-img-top" alt="Cats">
                <div class="card-body">
                    <h5 class="card-title">${cat.name}</h5>
                    <p class="card-text">Cat ID :${cat.catID}</p>
                    <p class="card-text">Age :${cat.age}</p>
                    <p class="card-text">Breed :${cat.breed}</p>
                    <p class="card-text">Descrption :${cat.description}</p>
                    <a href="cat-update.ftlh"><button>Edit</button></a>
                </div>
            </div>
        </div>

    </#list>


</body>
</html>
