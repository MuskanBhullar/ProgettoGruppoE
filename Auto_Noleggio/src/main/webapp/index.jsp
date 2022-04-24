
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
            <div class="riga"></div> 
            <div class="row justify-content-center">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <div class="container-fluid">
                        <a class="navbar-brand">Auto Noleggio</a>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav text-center">
                                <a class="nav-link" href="index.jsp">Home</a>
                                <a class="nav-link" href="ordini.jsp">Ordini</a>
                                <li class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Auto</a>
                                    <div class="dropdown-menu">
                                        <a href="piccole.jsp" class="dropdown-item">Piccole</a>
                                        <a href="medie.jsp" class="dropdown-item">Medie</a>
                                        <a href="suv.jsp" class="dropdown-item">Suv</a>
                                        <a href="premium.jsp" class="dropdown-item">Premium</a>
                                        <a href="inserisciAuto" class="dropdown-item">All</a>
                                    </div>
                                </li>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>

            <style>
                body{background-image: url("image/road6.jpg")}
            </style>

            
            <div class="row">
                <div class="col-md-6 gap100">
                    <br> <br> <br> <br>
                    <h2 style="color: white; text-align: center">Benvenuto</h2>
                    <br>
                    <p style="color: white; text-align: center" > Benvenuto in questo sito di noleggio auto. <br>
                        Attraverso una vasta scelta di auto,  <br> hai la possibilità di poter scegliere l' auto 
                        perfetta per il tuo stile. <br>
                        Per poter vedere le nostre auto, bisogna accedere al sito. 
                    </p>
                </div>
                  
                <div class="col-md-6">
                    <form action="accedi" method="POST">
                        <br> <br> <br>
                        <div class="row justify-content-center">
                            <div class="col-12 d-flex justify-content-center">
                                
                                <h3 style="color: white">Accedi</h3>
                            </div>
                        </div>
                       
                        <br>
            <% 
                if (request.getAttribute("coloreMessaggio") != null) {
            %>
            <div class="row justify-content-center text-center">
                <p style="color: ${coloreMessaggio}">${messaggio}</p>
            </div>
            <% 
                } // Chiudo l'if
            %>
                        <div class="row justify-content-center">
                            <div class="col-12 d-flex justify-content-center">

                                <div class="form-outline mb-4">
                                    <label class="form-label" style="color: white">Email address</label>
                                    <input type="email" name="emailUtente" class="form-control" />
                                </div>

                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-8 d-flex justify-content-center">

                                <div class="form-outline mb-4">
                                    <label class="form-label" style="color: white">Password</label>
                                    <input type="password" name="passwordUtente" class="form-control" />
                                </div>

                            </div>
                        </div> 

                        <div class="row justify-content-center">
                            <div class="col-12 d-flex justify-content-center">
                                <button type="submit" class="btn btn-primary btn-block mb-4">Accedi</button>
                            </div>
                        </div>
                        <!-- Register buttons -->
                        <div class="text-center">
                            <p style="color: white">Non hai ancora un account? <a href="registrati.jsp">Registrati</a></p>
                        </div>

                    </form>
                </div>    
            </div>

        </div>
    </body>
</html>