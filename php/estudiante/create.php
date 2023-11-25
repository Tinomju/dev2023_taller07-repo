<?php
    require_once('estudianteModel.php');
    $object = new estudianteModel();
    $cursos = $object->cargarDesplegable();
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form PHP</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
</head>
<body>
    <?php
        require_once('../navbar.php');
    ?>
    <div class="container">
        <div class="mb-3">
            <h2>Agregando nuevo Registro</h2>
        </div>
        <form id="formPersona" action="store.php" method="post">
        <div class="mb-3">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" name="nombre" id="nombre" autofocus required>
        </div>
        <div class="mb-3">
            <label for="apellido" class="form-label">Apellido</label>
            <input type="text" class="form-control" id="apellido" name="apellido"required>
        </div>
        <div class="mb-3">
            <label for="idCurso" class="form-label">Código curso</label>
            <select class="form-control" name="idCurso" id="idCurso">
                <option value="0">No especificado</option>
                <?php  foreach ($cursos as $curso) { ?>
                    <option value="<?=$curso['idCurso']?>"><?=$curso['nombre']?></option>
                <?php } ?>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Guardar</button>
        </form>
    </div>
</body>
    <script src="../../js/bootstrap.bundle.min.js"></script>
    <script src="../../js/jquery.min.js"></script>
    
</html>