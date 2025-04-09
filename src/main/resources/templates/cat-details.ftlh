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
        <a class="navbar-brand" href="cat-details.ftlh">MY FAVORITE CATS</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="cat-details.ftlh">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
            </ul>
        </div>
    </div>
</nav>
<!--- Navigation Bar end --->




<!--- Cat details STARTS HERE --->
<div class="container" style="margin-top: 15px;">
    <h1>${title}</h1>
    <div class="card">
        <h5 class="card-header">${cats.name}</h5>
        <div class="card-body">

        </div>
    </div>

</div>