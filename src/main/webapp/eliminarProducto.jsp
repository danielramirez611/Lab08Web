<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Producto</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            padding-top: 20px;
        }
        .container {
            max-width: 600px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: auto;
        }
        h2 {
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
        .mt-4 {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Eliminar Producto</h2>
        <form action="eliminar" method="post">
            <div class="form-group">
                <label for="id">ID del Producto a Eliminar:</label>
                <input type="text" id="id" name="id" class="form-control">
            </div>
            <div class="form-group">
                <label for="database">Seleccione la base de datos:</label>
                <select class="form-control" id="database" name="database">
                    <option value="mysql" ${param.database == 'mysql' ? 'selected' : ''}>Saga Falabella (MySQL)</option>
                    <option value="mongo" ${param.database == 'mongo' ? 'selected' : ''}>Ripley (MongoDB)</option>
                </select>
            </div>
            <button type="submit" class="btn btn-danger">Eliminar</button>
        </form>
        <a href="index.html" class="btn btn-primary mt-4">Ir a la página de inicio</a>
    </div>
</body>
</html>
