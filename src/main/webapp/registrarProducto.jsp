<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Producto</title>
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
        .form-group label {
            font-weight: bold;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            transition: all 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
            transform: translateY(-2px);
        }
        .btn-primary:focus {
            outline: none;
            box-shadow: 0 0 0 0.2rem rgba(0,123,255,.5);
        }
        .mt-4 {
            margin-top: 1rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="mb-4">Registrar Producto</h2>
        <form action="/Lab7Maven/registrar" method="post">
            <div class="form-group">
                <label for="database">Seleccione la base de datos:</label>
                <select class="form-control" id="database" name="database">
                    <option value="mysql" ${param.database == 'mysql' ? 'selected' : ''}>Saga Falabella (MySQL)</option>
                    <option value="mongo" ${param.database == 'mongo' ? 'selected' : ''}>Ripley (MongoDB)</option>
                </select>
            </div>
            <div class="form-group">
                <label for="codigo">Código:</label>
                <input type="number" class="form-control" id="codigo" name="codigo" required>
            </div>
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required>
            </div>
            <div class="form-group">
                <label for="precio">Precio:</label>
                <input type="text" class="form-control" id="precio" name="precio" required>
            </div>
            <div class="form-group">
                <label for="stock">Stock:</label>
                <input type="number" class="form-control" id="stock" name="stock" required>
            </div>
            <button type="submit" class="btn btn-primary">Registrar Producto</button>
        </form>
        <a href="index.html" class="btn btn-primary mt-4">Ir a la página de inicio</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-pzjw8f+V4Tq+8aE5ZlrIswbG/c2T7iqJzoIYw+XtlE5hFfRIjgxz2OKt4L9YYooD" crossorigin="anonymous"></script>
</body>
</html>
