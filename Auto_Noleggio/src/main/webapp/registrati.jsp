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
            <style>
                body{background-image: url("image/road6.jpg")}
            </style>
            <div class="row justify-content-center" style="margin-top: 15px;">
                <h3 style="text-align: center; color: white">Registrati</h3>
            </div> <br>
            <% 
                if (request.getAttribute("coloreMessaggio") != null) {
            %>
            <div class="row justify-content-center text-center" style="margin-top: 15px;">
                <p style="color: ${coloreMessaggio}">${messaggio}</p>
            </div>
            <% 
                } // Chiudo l'if
            %>
            <div class="row justify-content-center">
                <div class="col-8 d-flex justify-content-center ">
                    <form action="registrati" method="POST">
                        <div class="mb-3">
                            <label class="form-label" style="color: white">Cognome</label>
                            <input type="text" class="form-control" name="cognomeUtente">
                        </div>
                        <div class="mb-3">
                            <label class="form-label" style="color: white">Nome</label>
                            <input type="text" class="form-control" name="nomeUtente">
                        </div>
                        <div class="mb-3">
                            <label class="form-label" style="color: white">Eta</label>
                            <input type="number" class="form-control" min="18" max="120" name="etaUtente">
                        </div>
                        <div class="mb-3">
                            <label class="form-label" style="color: white">Email address</label>
                            <input type="email" class="form-control" name="emailUtente">
                        </div>
                        <div class="mb-3">
                            <label class="form-label" style="color: white">Password</label>
                            <input type="password" class="form-control" maxlength="16" name="passwordUtente">
                        </div>
                        <button type="submit" class="btn btn-primary">Conferma</button>
                    </form>
                </div>
            </div> <br>
            
            <% 
                if ((request.getAttribute("coloreMessaggio") != null) && (request.getAttribute("coloreMessaggio") == "green")) {
            %>
            <div class="row justify-content-center text-center">
                <a href="index.jsp" style="color: lightpink">Torna alla pagina Home</a>
            </div>
            <% 
                } // Chiudo l'if
            %>
            
        </div>
    </body>
</html>