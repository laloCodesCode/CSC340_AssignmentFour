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
                <li class="nav-item"><a class="nav-link" href="cat-list.ftlh">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="cat-list.ftlh">About</a></li>
            </ul>
        </div>
    </div>
</nav>
<!--- Navigation Bar end --->




<!--- Show the update form begins here-->
<div class="container" style="margin-top: 15px;">
    <h1>${title}</h1>
<!--        <form id = "new-cat" action="/Assignment04/Assignment04/Cats/catController.java/new" method="post">-->
<!--            <input type="text" id="catID" name="catID" value="${cat.catID?c}" readonly/>-->
<!--            <br>-->
<!--            <input type="text" id="name" name="name" value="${cat.name}" placeholder="Name"/>-->
<!--            <br>-->
<!--            <input type="text" id="breed" name="breed"  step="0.01"  value="${cat.breed}" placeholder="breed"/>-->
<!--            <br>-->
<!--            <input type="text" id="description" name="description" value="${cat.description}" placeholder="description"/>-->
<!--            <br>-->
<!--            <input type="number" id="age" name="age" value="${cat.age}" placeholder="age"/>-->
<!--            <br>-->
<!--            <button type="submit" class="btn btn-primary">Save</button>-->
<!--            <a href="/cats/all" class="btn btn-outline-danger" >Cancel</a>-->
<!--        </form>-->

    <form id="new-cat" action="/cats/update/${cat.catID}" method="post">

        <input type="text" id="catID" name="catID" value="${cat.catID}" readonly/>
        <br>
        <input type="text" id="name" name="name" value="${cat.name}" placeholder="Name"/>
        <br>
        <input type="text" id="breed" name="breed" value="${cat.breed}" placeholder="Breed"/>
        <br>
        <input type="text" id="description" name="description" value="${cat.description}" placeholder="Description"/>
        <br>
        <input type="number" id="age" name="age" value="${cat.age}" placeholder="Age"/>
        <br>

        <button type="submit" class="btn btn-primary">Save</button>

        <a href="/cats/all" class="btn btn-outline-danger">Cancel</a>
    </form>






</div>
</body>
</html>
