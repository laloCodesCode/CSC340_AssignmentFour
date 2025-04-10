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
        <a class="navbar-brand">MY FAVORITE CATS</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/cats/all">Home</a></li>
<!--                <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>-->
            </ul>
        </div>
    </div>
</nav>
<!--- Navigation Bar end --->




<div class ="entryContainer" style="margin-top: 15px;" align="center">
    <h1>${title}</h1>
    <form id = "new-cat" action="/cats/new" method="post">


<!--        <h6>ID is automatically created</h6>-->
<!--        <input type="number" id="catID" name="catID" placeholder="catID"/>-->
        <br>
        <h6>Enter a name:</h6>
        <input type="text" id="name" name="name" placeholder="Name"/>
        <br>
        <h6>Enter cat's breed:</h6>
        <input type="text" id="breed" name="breed" step="0.01" placeholder="breed"/>
        <br>
        <h6>Enter the cat's description:</h6>
        <input type="text" id="description" name="description" placeholder="description"/>
        <br>
        <h6>Enter the cat's age:</h6>
        <input type="number" id="age" name="age" placeholder="age"/>
        <br>
        <button type="submit" class="btn btn-primary">Save</button>
        <a href="/cats/all" class="btn btn-outline-danger" >Cancel</a>
    <form>
</div>


<!--<div class="container" style="margin-top: 15px;">-->
<!--    <h1>${title}</h1>-->
<!--    <form id="new-student" action="/cats/new" method="post">-->
<!--        <input type="text" id="name" name="name" placeholder="Name"/>-->
<!--        <input type="text" id="description" name="description" placeholder="description"/>-->
<!--        <input type="number" id="age" name="age" step="0.01" placeholder="age"/>-->
<!--        <button type="submit" class="btn btn-primary">Save</button>-->
<!--        <a href="/cats/all" class="btn btn-outline-danger" >Cancel</a>-->
<!--    </form>-->


</body>
</html>