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
    <body>
        <div id="container">
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
                                        <a href="#" class="dropdown-item">Auto</a>
                                    </div>
                                </li>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            
            <div class="row justify-content-center text-center mt-3">
                <h2>Catalogo auto</h2>
            </div>
            <div class="row justify-content-center">
                <c:forEach items="${elencoAuto}" var="auto">
                    <div class="row mt-5">
                        <div class="col-md-3">
                            <img src="image/${auto.getModello()}.jpg" class="img-fluid" alt="">    
                        </div>
                        <div class="col-md-6">
                            <%
                                /*
                                ArrayList<String> nomi = new ArrayList<>();
                                nomi = request.getParameter("elencoNomi");
                                */
                            %>
                            
                            
                            <h1>${auto.getModello()}</h1>
                            <p> 
                                Numero posti: ${auto.getNumPosti()}<br>
                                Capacità bagagliaio:  ${auto.getCapacitaBagaglio()} <i>L</i><br>
                                Potenza: ${auto.getPotenza()} <i>CV</i><br>
                                <b>Prezzo giornaliero: EUR ${auto.getPrezzoGiorn()}</b><br>
                            </p>
                        </div>
                    </div>
                </c:forEach>
            </div>
                
        </div>
    </body>
</html>