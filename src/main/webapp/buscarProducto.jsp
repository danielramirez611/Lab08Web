<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.martin.lab7maven.models.Producto"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buscar Producto</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 20px;
        }
        .container {
            max-width: 800px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: auto;
        }
        h2, h3 {
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"],
        select.form-control {
            width: 100%;
            margin-bottom: 20px;
        }
        button[type="submit"],
        .btn-primary {
            width: 100%;
        }
        .btn-primary {
            margin-top: 10px;
        }
        .mt-4 {
            margin-top: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #dee2e6;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tbody tr:hover {
            background-color: #e2e6ea;
        }
        td[colspan="4"] {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Buscar Producto</h2>
        <form action="buscar" method="post">
            <div class="form-group">
                <label for="nombre">Nombre del Producto:</label>
                <input type="text" id="nombre" name="nombre" class="form-control">
            </div>
            <div class="form-group">
                <label for="database">Seleccione la base de datos:</label>
                <select class="form-control" id="database" name="database">
                    <option value="mysql" ${param.database == 'mysql' ? 'selected' : ''}>Saga Falabella (MySQL)</option>
                    <option value="mongo" ${param.database == 'mongo' ? 'selected' : ''}>Ripley (MongoDB)</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Buscar</button>
        </form>

        <hr>

        <h3>Resultados de la Búsqueda</h3>
        <table>
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Stock</th>
                </tr>
            </thead>
             <tbody>
                <% List<Producto> productos = (List<Producto>) request.getAttribute("productos");
                if (productos != null && !productos.isEmpty()) {
                    for (Producto producto : productos) {%>
                <tr>
                    <td><%= producto.codigo()%></td>
                    <td><%= producto.nombre()%></td>
                    <td><%= producto.precio()%></td>
                    <td><%= producto.stock()%></td>
                </tr>
                <%     }
            } else { %>
                <tr>
                    <td colspan="4">No se encontraron resultados</td>
                </tr>
                <% }%>
            </tbody>
        </table>
        <a href="index.html" class="btn btn-primary mt-4">Ir a la página de inicio</a>
    </div>
</body>
</html>
