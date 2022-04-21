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
            <form action="ordini" method="POST">
            <div class="row gap100">
                <div class="col-md-6 col-lg-3">
                    <img src="image/Skoda Superb berlina.jpg" class="img-fluid" alt="opel">
                </div>
                <div class="col-md-6">
                    <h3>Skoda Superb berlina</h3>
                    <p> Data di ritiro : <input type="date"> <br />
                        Data di consegna : <input type="date"> <br /> 
                        Luogo di ritiro : <select name="luogoconsegna" class="form-control">
                                <option value="Casalmaggiore">Casalmaggiore</option>
                                <option value="Parma">Parma</option>
                                <option value="Cremona">Cremona</option>
                            </select>
                        Luogo di consegna : <select name="luogoconsegna" class="form-control">
                                <option value="Casalmaggiore">Casalmaggiore</option>
                                <option value="Parma">Parma</option>
                                <option value="Cremona">Cremona</option>
                            </select>
                            <b>Prezzo giornaliero: 29,98€ </b><br>
                        <input type="submit" class="btn btn-primary" value="Aggiungi all'ordine" />
                    </p>
                </div>
            </div>
                <br><br>
            <div class="row gap100">
                <div class="col-md-6 col-lg-3">
                    <img src="image/Nissan Qashqai.jpg" class="img-fluid" alt="opel">
                </div>
                <div class="col-md-6">
                    <h3>Nissan Qashqai</h3>
                    <p> Data di ritiro : <input type="date"> <br />
                        Data di consegna : <input type="date"> <br /> 
                        Luogo di ritiro : <select name="luogoconsegna" class="form-control">
                                <option value="Casalmaggiore">Casalmaggiore</option>
                                <option value="Parma">Parma</option>
                                <option value="Cremona">Cremona</option>
                            </select>
                        Luogo di consegna : <select name="luogoconsegna" class="form-control">
                                <option value="Casalmaggiore">Casalmaggiore</option>
                                <option value="Parma">Parma</option>
                                <option value="Cremona">Cremona</option>
                            </select>
                            <b>Prezzo giornaliero: 26,90€ </b><br>
                        <input type="submit" class="btn btn-primary" value="Aggiungi all'ordine" />
                    </p>
                </div>
            </div>
                <br><br>
            <div class="row gap100">
                <div class="col-md-6 col-lg-3">
                    <img src="image/Audi Q5.jpg" class="img-fluid" alt="opel">
                </div>
                <div class="col-md-6">
                    <h3>Audi Q5</h3>
                    <p> Data di ritiro : <input type="date"> <br />
                        Data di consegna : <input type="date"> <br /> 
                        Luogo di ritiro : <select name="luogoconsegna" class="form-control">
                                <option value="Casalmaggiore">Casalmaggiore</option>
                                <option value="Parma">Parma</option>
                                <option value="Cremona">Cremona</option>
                            </select>
                        Luogo di consegna : <select name="luogoconsegna" class="form-control">
                                <option value="Casalmaggiore">Casalmaggiore</option>
                                <option value="Parma">Parma</option>
                                <option value="Cremona">Cremona</option>
                            </select>
                            <b>Prezzo giornaliero: 34,78€ </b><br>
                        <input type="submit" class="btn btn-primary" value="Aggiungi all'ordine" />
                    </p>
                </div>
            </div>
                <br><br>
            <div class="row gap100">
                <div class="col-md-6 col-lg-3">
                    <img src="image/Jeep Compass.jpg" class="img-fluid" alt="opel">
                </div>
                <div class="col-md-6">
                    <h3>Jeep Compass</h3>
                    <p> Data di ritiro : <input type="date"> <br />
                        Data di consegna : <input type="date"> <br /> 
                        Luogo di ritiro : <select name="luogoconsegna" class="form-control">
                                <option value="Casalmaggiore">Casalmaggiore</option>
                                <option value="Parma">Parma</option>
                                <option value="Cremona">Cremona</option>
                            </select>
                        Luogo di consegna : <select name="luogoconsegna" class="form-control">
                                <option value="Casalmaggiore">Casalmaggiore</option>
                                <option value="Parma">Parma</option>
                                <option value="Cremona">Cremona</option>
                            </select>
                            <b>Prezzo giornaliero: 28,15€ </b><br>
                        <input type="submit" class="btn btn-primary" value="Aggiungi all'ordine" />
                    </p>
                </div>
            </div>
                <br><br>
            <div class="row gap100">
                <div class="col-md-6 col-lg-3">
                    <img src="image/Hyundai Santa Fe.jpg" class="img-fluid" alt="opel">
                </div>
                <div class="col-md-6">
                    <h3>Hyundai Santa Fe</h3>
                    <p> Data di ritiro : <input type="date"> <br />
                        Data di consegna : <input type="date"> <br /> 
                        Luogo di ritiro : <select name="luogoconsegna" class="form-control">
                                <option value="Casalmaggiore">Casalmaggiore</option>
                                <option value="Parma">Parma</option>
                                <option value="Cremona">Cremona</option>
                            </select>
                        Luogo di consegna : <select name="luogoconsegna" class="form-control">
                                <option value="Casalmaggiore">Casalmaggiore</option>
                                <option value="Parma">Parma</option>
                                <option value="Cremona">Cremona</option>
                            </select>
                            <b>Prezzo giornaliero: 24,99€ </b><br>
                        <input type="submit" class="btn btn-primary" value="Aggiungi all'ordine" />
                    </p>
                </div>
            </div> 
            </form>
        </div>
    </body>
</html>