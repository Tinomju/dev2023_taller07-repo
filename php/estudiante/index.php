<?php
    require_once('estudianteModel.php');
    $object = new estudianteModel;
    $rows = $object->listar();
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Estudiantes</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/table.css">
</head>
<body>
<?php
    require_once('../navbar.php');
 ?>
    <section class="intro">

  
    <div class="container">
        <div class="mb-3">
            <h2>Listado de Estudiantes</h2>
        </div>
        <div class="container">
        <div class="mb-3">
            <a href="./create.php" class="btn btn-primary">Agregar</a>
            <a href="javascript:imprimirWindow('ventana')" class="btn btn-info">Imprimir</a>
        </div>
        <div class="table-reponsive table-table-scroll" data-mb-perfect-scrollbar="true" style="position: relative; height : 700px;">
        <table class="table table-striped mb-0">
            <thead style="background-color: #002d72"> 
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">NOMBRE</th>
                    <th scope="col">APELLIDO</th>
                    <th scope="col">OPERACIONES</th>
                    

                </tr>
            </thead>

            <tbody>
            <?php foreach ($rows as $row) { ?>
                <tr>
                    <td><?=$row['idEstudiante']?></td>
                    <td><?=$row['nombre']?></td>
                    <td><?=$row['apellido']?></td>
                    
                    <td>
                       <a class="btn btn-info" data-bs-toggle="modal" data-bs-target="#idver<?=$row['idEstudiante']?>">ver</a>
                       <a href="edit.php?id=<?=$row['idEstudiante']?>" class="btn btn-warning">Editar</a>
                       <a class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#iddel<?=$row['idEstudiante']?>">Eliminar</a>


                       
                       <?php 
                        include('viewModal.php');
                        include('deleteModal.php');
                       
                       ?>
                    </td>
                </tr>
            <?php } ?>
            </tbody>
            </table>
            </div>
    </div>
    </section>
    <!--div area de impresion -->
                  
    <div id="ventana" style="display: none;">
        <div class="mb-3">
            <h2 style="font-size: 3.00rem;"> Listado de Estudiantes</h2>
            <h4><?=date('d/m/Y')?></h4>
        </div>
        <div class="table-reponsive table-table-scroll" data-mb-perfect-scrollbar="true" style="position: relative; height : 700px;">
        <table class="table table-striped mb-0" style="font-size: 2.00rem;">
            <thead> 
                <tr>
                    <th colspan="1" scope="col">ID</th>
                    <th colspan="3" scope="col">NOMBRE</th>
                    <th colspan="3" scope="col">APELLIDO</th>
                    <th colspan="3" scope="col">CURSO</th>
                    

                </tr>
            </thead>

            <tbody>
            <?php foreach ($rows as $row) { ?>
                <tr>
                    <td colspan="1"><?=$row['idEstudiante']?></td>
                    <td colspan="3"><?=$row['nombre']?></td>
                    <td colspan="3"><?=$row['apellido']?></td>
                    <td colspan="3"><?=$row['curso']?></td>
                    
                    
                    <td>
          
                    </td>
                 </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
    </div>
    <!--fin are de impresion -->
</body>
<script src="../../js/bootstrap.bundle.min.js"></script>
<script src="../../js/printwindow.js"></script>
</html>