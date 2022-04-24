<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Models.Auto"%>
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
                                <a class="nav-link" href="index.jsp">Home</a>

                                <li class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Auto</a>
                                    <div class="dropdown-menu">
                                        <a href="piccole.jsp" class="dropdown-item">Piccole</a>
                                        <a href="medie.jsp" class="dropdown-item">Medie</a>
                                        <a href="suv.jsp" class="dropdown-item">Suv</a>
                                        <a href="premium.jsp" class="dropdown-item">Premium</a>
                                        <a href="auto.jsp" class="dropdown-item">All</a>
                                    </div>
                                </li>
                                <a class="nav-link" href="ordini.jsp">Ordini</a>

                            </div>
                        </div>
                    </div>
                </nav>
            </div>

            <c:forEach items="${elencoAuto}" var="auto">
                    <div class="col-md-6">
                        <h3>${auto.getModello()}</h3>
                        <p> Capacità bagagliaio:  ${auto.getCapacitaBagaglio()}<br>
                            Numero posti: ${auto.getNumPosti()}<br>
                            Potenza: ${auto.getPotenza()} <br>
                            <b>Prezzo giornaliero: </b><br>
                        </p>
                    </div>
            </c:forEach>

        </div>
    </body>
</html>