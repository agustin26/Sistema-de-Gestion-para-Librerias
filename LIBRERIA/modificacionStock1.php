<!doctype html>
<html>
<head>
  <link rel="stylesheet" href="form.css">
  <link rel="icon" href="kisspng-logo-bookcase-vector-graphics-image-design-5c0d15e27c7836.3717233815443614425098.png" type="image/png">
  <title>Modificación Clientes/Empleados</title>
</head>  
<body>
<div class="navbar">
        <a href="index.php"><img src="kisspng-logo-bookcase-vector-graphics-image-design-5c0d15e27c7836.3717233815443614425098.png" class="logo" alt="INICIO"></a>
        
</div>  
  <?php
    $mysql = new mysqli("localhost", "agustin", "2612agustinlepori", "mydb");
    if ($mysql->connect_error)
      die("Problemas con la conexión a la base de datos");
  
    $registro=$mysql->query("SELECT CODIGO_STOCK,
    	                            fecha_entrada,
                                    cantidad
                                    from stock where CODIGO_STOCK =$_REQUEST[codigo]") or
      die($mysql->error);
     
    if ($reg=$registro->fetch_array())
    {
  ?>
  <div class="signin">
    <form method="post" action="modificacionStock2.php">
      <h2>MODIFICACION STOCK</h2>
        <label for="codigoStock">Codigo stock:</label>
        <input type="text" name="codigoStock"  value="<?php echo $reg['CODIGO_STOCK']; ?>">
        <br>
        <label for="entrada">Feha entrada:</label>
        <input type="text" name="entrada"  value="<?php echo $reg['fecha_entrada']; ?>">      
        <br>  
       <!------
      -->   
      <label for="cantidad">Cantidad:</label>
      <input type="tel" name="cantidad" value="<?php echo $reg['cantidad']; ?>">
      <br>
      
      <input type="hidden" name="codigo" value="<?php echo $_REQUEST['CODIGO_STOCK']; ?>">     
      <br> 
      <input type="submit"  class="btn" value="Confirmar">
    </form>
  </div>
  <?php
    }      
    else
      echo 'No existe una persona con dicho código';
    
    $mysql->close();

  ?>  
</body>
</html>