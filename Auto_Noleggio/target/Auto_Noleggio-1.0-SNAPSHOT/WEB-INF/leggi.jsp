//pagina inutile allo scopo finale del nostro sito
//key=3->:
//FRPH LO SURI YHCCRVL

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Noleggio Auto</title>
        <!-- File css -->
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- File js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    </head>
    <body>
        <div id="container">
            <div class="row justify-content-center">
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
            <div class="row justify-content-center" style="margin-top: 15px;">
                <h3 style="text-align: center;">Elenco utenti:</h3>
            </div>
            <div class="row justify-content-center" style="margin-top: 15px;">
                <div class="col-8 d-flex justify-content-center">
                    <div class="mb-3">
                        <%
                            boolean visibile = (boolean)request.getAttribute("visible");

                            if (visibile) {
                        %>
                        <c:forEach items="${elencoUtenti}" var="utente">
                            <div class="alert alert-secondary" role="alert">
                                <p><b>Nome Cognome:</b> ${utente.getNome()} ${utente.getCognome()}</p>
                                <p><b>Eta:</b> ${utente.getEta()}</p>
                                <p><b>Email:</b> ${utente.getEmail()}</p>
                                <p><b>Password:</b> ${utente.getPassword()}</p>
                            </div>
                        </c:forEach>
                        <%  
                            } // Chiudo l'if                    
                        %>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
