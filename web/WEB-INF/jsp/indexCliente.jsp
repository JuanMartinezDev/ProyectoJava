
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
          <div class="card-header bg-dark">
              <a href="agregarCliente.htm" class="btn btn-success regDepto">Nuevo registro</a>
          </div>
      <div class="card-body">
          <table class="table table-hover">
                        <thead>
                            <tr>                               
                                <th class="middle text-center">Nombre</th>
                                <th class="middle text-center">Apellidos</th>
                                <th class="middle text-center">Documento</th>
                                <th class="middle text-center">Direccion</th>
                                <th class="middle text-center">Telefono</th>
                                <th class="middle text-center">Email</th>
                                <th class="middle text-center">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cliente" items="${lsCliente}">
                                <tr>                               
                                    <td class="middle text-center">${cliente.Nombre}</td>
                                    <td class="middle text-center">${cliente.Apellidos}</td>
                                    <td class="middle text-center">${cliente.Documentos}</td>
                                    <td class="middle text-center">${cliente.Direccion}</td>
                                    <td class="middle text-center">${cliente.Telefono}</td>
                                    <td class="middle text-center">${cliente.Email}</td>
                                    <td class="middle text-center">
                                        <a href="editarCliente.htm?id=${cliente.id}" class="btn btn-warning">Editar</a>
                                        <a onclick="return confirm('¿Está seguro?'):" href="deleteCliente.htm?id=${cliente.id}" class="btn btn-danger">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
          </table>
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