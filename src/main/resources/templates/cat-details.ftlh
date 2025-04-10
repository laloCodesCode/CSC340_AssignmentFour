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
        <a class="navbar-brand" >MY FAVORITE CATS</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/cats/all">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/cats/createForm">Add</a></li>
            </ul>
        </div>
    </div>
</nav>
<!--- Navigation Bar end --->




<!--- Cat details STARTS HERE --->
<div class="container" style="margin-top: 15px;">
    <h1>${title}</h1>
    <div class="card">
        <h5 class="card-header">${cat.name}</h5>
        <div class="card-body">
            <span style="float:right"> <a href="/cats/updateForm/${catID?c}"
                                          class="btn btn-primary">Edit Cat</a></span>
            <h5 class="card-title">catID: ${cat.catID?c}</h5>
            <p class="card-text">Name: ${cat.name}</p>
            <p class="card-text">Breed: ${cat.breed}</p>
            <p class="card-text">Age: ${cat.age}</p>
            <p class="card-text">Description: ${cat.description}</p>
            <a href="/cat/delete/${catID?c}" class="btn btn-danger">Delete
                Cat</a>
<!--            <form action="/cats/delete/${cat.catID?c}" method="post" style="display:inline;">-->
<!--                <input type="hidden" name="_method" value="DELETE"/>-->
<!--                <button type="submit" class="btn btn-danger">Delete Cat</button>-->
<!--            </form>-->


            <a href="/cats/all" class="btn btn-primary">Go back</a>
        </div>
        <div class="card-body">

        </div>
    </div>

</div>
</body>
</html>