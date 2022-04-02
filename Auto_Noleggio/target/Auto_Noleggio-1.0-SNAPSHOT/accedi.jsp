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
        <form>
            <div id="container">
                <div class="row justify-content-center">
                    <div class="col-12 d-flex justify-content-center">
                        <div class="form-outline mb-4">
                            <input type="email" id="form2Example1" class="form-control" />
                            <label class="form-label" for="form2Example1">Email address</label>
                        </div>

                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-8 d-flex justify-content-center">
                        <!-- Password input -->
                        <div class="form-outline mb-4">
                            <input type="password" id="form2Example2" class="form-control" />
                            <label class="form-label" for="form2Example2">Password</label>
                        </div>

                    </div>
                </div> 

                <div class="row justify-content-center">
                    <div class="col-12 d-flex justify-content-center">
                        <button type="button" class="btn btn-primary btn-block mb-4">Accedi</button>
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
