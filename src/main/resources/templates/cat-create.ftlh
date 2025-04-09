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
                <li class="nav-item"><a class="nav-link" href="cat-details.ftlh">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
            </ul>
        </div>
    </div>
</nav>
<!--- Navigation Bar end --->




<!-- Creating a new cat entries START HERE --->
<div class ="entryContainer" style="margin-top: 15px;">
    <h1>${title}</h1>
    <form id = "new-cat" action="/Assignment04/Assignment04/Cats/catController.java/new" method="post">

        <input type="number" id="catID" name="catID" placeholder="catID"/>
        <input type="text" id="name" name="name" placeholder="Name"/>
        <input type="text" id="breed" name="breed" step="0.01" placeholder="breed"/>
        <input type="text" id="description" name="description" placeholder="description"/>
        <input type="number" id="age" name="age" placeholder="age"/>
        <button type="submit" class="btn btn-primary">Save</button>
        <a href="/Cats/all" class="btn btn-outline-danger" >Cancel</a>
    <form>
</div>