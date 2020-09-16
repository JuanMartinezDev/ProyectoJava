<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
    
    <title>Taller de Muebles</title>
  </head>
  <body>
      
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.htm">Taller De Muebles</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-link active" href="indexCliente.htm">Clientes</a>
      <a class="nav-link" href="indexMueble.htm">Muebles</a>
      <a class="nav-link" href="indexEmpleado.htm">Empleados</a>
      <a class="nav-link" href="indexClaseMadera.htm">Clase de Madera</a>
      <a class="nav-link" href="indexTipoMueble.htm">Tipo de Mueble</a>
    </div>
  </div>
</nav>
      <div class="container-fluid mt-3"> 
      <div class="card">
      <div class="card-body">
          <form method="POST">

              <div class="row">
                  <div class="col">
                      <label>Nombres</label>
                      <input type="text" name="nombre" required class="form-control mb-2">

                  </div>

                  <div class="col">
                      <label>Apellidos</label>
                      <input type="text" name="apellidos" required class="form-control mb-2">
                  </div>
              </div>

              <div class="row">
                  <div class="col">
                      <label>Documento</label>
                      <input type="number" name="documentos" required class="form-control mb-2">

                  </div>

                  <div class="col">                                            
                      <label>Direccion</label>
                      <input type="text" name="direccion" required class="form-control mb-2">
                  </div>
              </div>

              <div class="row">
                  <div class="col">
                      <label class="mt-2">Telefono</label>
                      <input type="number" name="telefono" required class="form-control mb-2">

                  </div>

                  <div class="col">
                      <label class="mt-2">Email</label>
                      <input type="email" name="email" required class="form-control mb-2">
                  </div>
              </div>

              <input type="submit" value="Agregar" class="btn btn-success mr-2 mt-4">
              <a href="indexCliente.htm" class="btn btn-primary mt-4">Regresar</a>

          </form>
      </div>
          </div>
          </div>
      
      

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>
