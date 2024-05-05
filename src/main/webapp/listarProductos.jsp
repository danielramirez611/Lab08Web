<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.martin.lab7maven.models.Producto"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Productos</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 20px;
        }
        .container {
            max-width: 800px;
            margin: auto;
        }
        .form-control {
            width: 200px;
            display: inline-block;
            margin-right: 10px;
        }
        .btn-primary {
            margin-top: 10px;
        }
        .table {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center mb-4">Listado de Productos</h2>
        <form action="/Lab7Maven/listar" method="get" class="mb-3">
            <label for="database">Seleccione la base de datos:</label>
            <select class="form-control" id="database" name="database">
                <option value="mysql" ${param.database == 'mysql' ? 'selected' : ''}>Saga Falabella (MySQL)</option>
                <option value="mongo" ${param.database == 'mongo' ? 'selected' : ''}>Ripley (MongoDB)</option>
            </select>
            <button type="submit" class="btn btn-primary">Seleccionar</button>
        </form>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Stock</th>
                </tr>
            </thead>
            <tbody>
                    <% for (Producto producto : (List<Producto>) request.getAttribute("productos")) {%>
                    <tr>
                        <td><%= producto.codigo()%></td>
                        <td><%= producto.nombre()%></td>
                        <td><%= producto.precio()%></td>
                        <td><%= producto.stock()%></td>
                    </tr>
                    <% }%>
                </tbody>
        </table>
        <a href="index.html" class="btn btn-primary mt-4">Ir a la página de inicio</a>
    </div>
</body>
</html>