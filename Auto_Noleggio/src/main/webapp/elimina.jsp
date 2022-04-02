<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Esercizio 4</title>
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
                        <a class="navbar-brand">Esercizio 4</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav text-center">
                                <a class="nav-link" href="auto.jsp">Auto</a>
                                <a class="nav-link" href="ordini.jsp">Ordini</a>
                                <a class="nav-link" href="registrati.jsp">Registrati</a>
                                <a class="nav-link" href="accedi.jsp">Accedi</a>
                                <a class="nav-link active" href="elimina.jsp">Elimina</a>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="row justify-content-center" style="margin-top: 15px;">
                <h3 style="text-align: center;">Cancella Registrazione:</h3>
            </div>
            <% 
                if (request.getAttribute("coloreMessaggio") != null) {
            %>
            <div class="row justify-content-center text-center" style="margin-top: 15px;">
                <p style="color: ${coloreMessaggio}">${messaggio}</p>
            </div>
            <% 
                } // Chiudo l'if
            %>
            <div class="row justify-content-center" style="margin-top: 15px;">
                <div class="col-8 d-flex justify-content-center">
                    <div class="mb-3">
                        <form action="elimina" method="POST">
                            <input type="text" name="emailPersona" class="form-control" placeholder="Inserisci email" /><br />
                            <input type="password" name="passwordPersona" class="form-control" placeholder="Inserisci password" /><br />
                            <input type="submit" class="btn btn-primary" value="Elimina" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

