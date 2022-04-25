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

        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

        <!-- File js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>  
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
                <h2>Auto selezionata</h2>
                <div class="row justify-content-center text-center" style="margin-top: 15px;">
                    <p style="color: ${coloreMessaggio}">${messaggio}</p>
                </div>
            </div>
            <div class="row justify-content-center">
                <c:forEach items="${elencoAuto}" var="auto">
                    <form action="aggiungiOrdine" method="POST">
                        <div class="row mt-5">
                            <div class="col-md-3">
                                <img src="image/${foto}.jpg" class="img-fluid" alt="">    
                            </div>

                            <div class="col-md-3 info_macchina">

                                <h3>${foto}</h3>
                                <p>
                                    Numero posti: ${auto.getNumPosti()}<br>
                                    Capacità bagagliaio: ${auto.getCapacitaBagaglio()} <i>L</i><br>
                                    Potenza: ${auto.getPotenza()} <i>CV</i><br>
                                    <b>Prezzo giornaliero: € ${auto.getPrezzoGiorn()}</b><br>
                                </p>

                            </div>   
                            <div class="col-md-6 info_prenotazioni">

                                <section>
                                    <div class="row form-group">
                                        <div class="col-sm-4">
                                            <div class="input-group date" id="datepicker1">
                                                <input type="text" class="form-control" name="dataRitiro" placeholder="Data di ritiro">
                                                <span class="input-group-append">
                                                    <span class="input-group-text bg-white">
                                                        <i class="fa fa-calendar"></i>
                                                    </span>
                                                </span>
                                            </div>
                                        </div>
                                    </div> <br>
                                    <div class="row form-group">
                                        <div class="col-sm-4">
                                            <div class="input-group date" id="datepicker2">
                                                <input type="text" class="form-control" name="dataConsegna" placeholder="Data di consegna">
                                                <span class="input-group-append">
                                                    <span class="input-group-text bg-white">
                                                        <i class="fa fa-calendar"></i>
                                                    </span>
                                                </span>
                                            </div>
                                        </div>
                                    </div> <br>
                                    <div class="row form-group">
                                        <div class="col-sm-4">
                                            <label>Luogo di ritiro</label>
                                            <select class="form-select" name="luogoRitiro">
                                                <option value="Abruzzo">Abruzzo</option>
                                                <option value="Basilicata">Basilicata</option>
                                                <option value="Calabria">Calabria</option>
                                                <option value="Campania">Campania</option>
                                                <option value="Emilia_Romagna">Emilia Romagna</option>
                                                <option value="Friuli_Venezia_Giulia">Friuli-Venezia Giulia</option>
                                                <option value="Lazio">Lazio</option>
                                                <option value="Liguria">Liguria</option>
                                                <option value="Lombardia">Lombardia</option>
                                                <option value="Marche">Marche</option>
                                                <option value="Molise">Molise</option>
                                                <option value="Piemonte">Piemonte</option>
                                                <option value="Puglia">Puglia</option>
                                                <option value="Sardegna">Sardegna</option>
                                                <option value="Sicilia">Sicilia</option>
                                                <option value="Toscana">Toscana</option>
                                                <option value="Trentino-Alto_Adige">Trentino-Alto Adige</option>
                                                <option value="Umbria">Umbria</option>
                                                <option value="Val_d_Aosta">Val d'Aosta</option>
                                                <option value="Veneto">Veneto</option>
                                            </select>
                                        </div>
                                    </div> <br>
                                    <div class="row form-group">
                                        <div class="col-sm-4">
                                            <label>Luogo di consegna</label>
                                            <select class="form-select" name="luogoConsegna">
                                                <option value="Abruzzo">Abruzzo</option>
                                                <option value="Basilicata">Basilicata</option>
                                                <option value="Calabria">Calabria</option>
                                                <option value="Campania">Campania</option>
                                                <option value="Emilia_Romagna">Emilia Romagna</option>
                                                <option value="Friuli-Venezia_Giulia">Friuli-Venezia Giulia</option>
                                                <option value="Lazio">Lazio</option>
                                                <option value="Liguria">Liguria</option>
                                                <option value="Lombardia">Lombardia</option>
                                                <option value="Marche">Marche</option>
                                                <option value="Molise">Molise</option>
                                                <option value="Piemonte">Piemonte</option>
                                                <option value="Puglia">Puglia</option>
                                                <option value="Sardegna">Sardegna</option>
                                                <option value="Sicilia">Sicilia</option>
                                                <option value="Toscana">Toscana</option>
                                                <option value="Trentino-Alto_Adige">Trentino-Alto Adige</option>
                                                <option value="Umbria">Umbria</option>
                                                <option value="Val d'Aosta">Val d'Aosta</option>
                                                <option value="Veneto">Veneto</option>
                                            </select>
                                        </div>
                                    </div> <br>
                                </section>

                                <input type="submit" class="btn btn-outline-success" value="Prenota Auto"/>
                                <input type="hidden" name="modello" value="${auto.getModello()}">
                            </div>

                        </div>
                    </form>
                </c:forEach>
            </div>              
        </div>

        <script type="text/javascript">
            $(document).ready(main);
            function main()
            {
                $(function () {
                    $("#datepicker1").datepicker({ dateFormat: 'yy-mm-dd' });
                    $("#datepicker2").datepicker({ dateFormat: 'yy-mm-dd' });
                });
                
                
                 
                $("#datepicker2").change(function () {
                    var start = new Date(getDate($('#datepicker1').val()));
                    var end = new Date(getDate($('#datepicker2').val()));

                    diff = new Date(end - start),
                        days = diff / 1000 / 60 / 60 / 24;
                    if (days == NaN) {
                        $('#risultato').val(0);
                    } else {
                        $('#risultato').val(days);
                    }
                });
            }
                
        </script>
    </body>
</html>