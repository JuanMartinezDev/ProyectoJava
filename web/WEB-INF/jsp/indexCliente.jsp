<%-- 
    Document   : indexCliente
    Created on : 14/09/2020, 12:01:20 AM
    Author     : USUARIO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="#">Nuevo Registro</a>
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Documento</th>
                    <th>Direccion</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>Acciones    </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cliente" items="${lsCliente}">
                    <tr>
                        <td>${cliente.Nombre}</td>
                        <td>${cliente.Apellidos}</td>
                        <td>${cliente.Documento}</td>
                        <td>${cliente.Direccion}</td>
                        <td>${cliente.Telefono}</td>
                        <td>${cliente.Email}</td>
                        <td>
                            <a href="editarCliente.htm?id=${cliente.id}">Editar</a>
                            <a onclick="return confirm('¿Está seguro?'):" href="deleteCliente.htm?id=${cliente.id}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
                
          
            </tbody>
        </table>
    </body>
</html>
