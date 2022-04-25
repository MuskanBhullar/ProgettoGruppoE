<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auto Noleggio</title>
        <!-- File css -->
        <link href="CSS/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- File js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <style>
            body{
                overflow: hidden;
            }
        </style>
    </head>
    <body>
        
        <div id="container">
            <div class="row justify-content-center">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <div class="container-fluid">
                        <a class="navbar-brand">Auto Noleggio</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav text-center">
                                <li class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Auto</a>
                                    <div class="dropdown-menu">
                                        <a href="inseriscipiccola" class="dropdown-item">Piccole</a>
                                        <a href="inseriscimedia" class="dropdown-item">Medie</a>
                                        <a href="inseriscisuv" class="dropdown-item">Suv</a>
                                        <a href="inseriscipremium" class="dropdown-item">Premium</a>
                                        <a href="inserisciauto" class="dropdown-item">All</a>
                                    </div>
                                </li>
                                <a class="nav-link" href="leggiOrdini">Ordini</a>
                            </div>
                        </div>
                        <form action="logout" method="POST">
                            <button type="submit" class="btn btn-outline-danger">Logout</button>
                        </form>
                    </div>
                </nav>
            </div>

            <style>
                body{background-image: url("image/road6.jpg")}
            </style>

            
            <div class="row">
                <div class="col-md-12 gap100">
                    <br> <br> <br> <br>
                    <h2 style="color: white; text-align: center">Benvenuto</h2>
                    <br>
                    <p style="color: white; text-align: center" > Benvenuto in questo sito di noleggio auto. <br>
                        Attraverso una vasta scelta di auto,  <br> hai la possibilità di poter scegliere l' auto 
                        perfetta per il tuo stile. <br>
                        Per poter vedere le nostre auto, bisogna accedere al sito.
                    </p>
                </div>

            </div>    

        </div>
    </body>
</html>