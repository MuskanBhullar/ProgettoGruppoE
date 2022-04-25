<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auto Noleggio</title>
        <!-- File css -->
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- File js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    </head>
    <body style="background-color: ivory;">
       
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
            
            <div class="row justify-content-center text-center mt-3">
                <h2>Elenco ordini</h2><p style="text-align: center; color: black">${messaggio}</p>
            </div>
            <div class="row justify-content-center">
                <%
                    //int i=0;
                %>
                <c:forEach items="${elencoOrdini}" var="ordine">
                    <div class="row mt-5">
                        <%--<div class="col-md-3">
                            <img src="image/${auto.getModello()}.jpg" class="img-fluid" alt="">    
                        </div>--%>
                        <div class="col-md-6">
                            <%--<h1>${elencoModelli[<%i%>]}</h1>--%>
                            <div class="alert alert-secondary" role="alert">
                                <p><b>Data di ritiro:</b> ${ordine.getDataRitiro()}</p>
                                <p><b>Data di consegna:</b> ${ordine.getDataConsegna()}</p>
                                <p><b>Luogo di ritiro:</b> ${ordine.getLuogoRitiro()}</p>
                                <p><b>Luogo di consegna:</b> ${ordine.getLuogoConsegna()}</p>
                            </div>
                        </div>
                    </div>
                    <%
                        //i++;
                    %>
                </c:forEach>
            </div> 
                          
        </div>
    </body>
</html>