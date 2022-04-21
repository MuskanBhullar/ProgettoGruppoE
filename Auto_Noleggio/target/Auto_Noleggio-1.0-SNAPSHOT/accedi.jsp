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
        <form action="accedi" method="POST">
            <br> <br>
            <div id="container">
                <div class="row justify-content-center">
                    <div class="col-12 d-flex justify-content-center">
                        <h3>Accedi</h3>
                    </div>
                </div>
                <br> <br>
                <div class="row justify-content-center">
                    <div class="col-12 d-flex justify-content-center">
                        
                        <div class="form-outline mb-4">
                            <label class="form-label">Email address</label>
                            <input type="email" name="emailUtente" class="form-control" />
                        </div>

                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-8 d-flex justify-content-center">
         
                        <div class="form-outline mb-4">
                            <label class="form-label">Password</label>
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
                    <p>Not a member? <a href="registrati.jsp">Register</a></p>
                </div>

            </div>
        </form>
    </body>
</html>