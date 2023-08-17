<!doctype html>
<html>
<head>
<link rel="stylesheet" href="form.css">
<link rel="icon" href="kisspng-logo-bookcase-vector-graphics-image-design-5c0d15e27c7836.3717233815443614425098.png" type="image/png">
  <title>Modificación de Ciudad.</title>
</head>  
<body>
<div class="navbar">
        <a href="index.php"><img src="kisspng-logo-bookcase-vector-graphics-image-design-5c0d15e27c7836.3717233815443614425098.png" class="logo" alt="INICIO"></a>
        
</div>  
  <?php
    $mysql = new mysqli("localhost", "agustin", "2612agustinlepori", "mydb");
    if ($mysql->connect_error)
      die("Problemas con la conexión a la base de datos");
  
    $registro=$mysql->query("select CODIGO_CIUDAD,
                                     nombre_ciudad
                                    from ciudad where CODIGO_CIUDAD=$_REQUEST[codigo]") or
      die($mysql->error);
     
    if ($reg=$registro->fetch_array())
    {
  ?>
  <div class="signin">
    <form method="post" action="modificacionCiudad2.php">
      <h2>MODIFCACION CIUDAD</h2>
     <label for="codigoCiudad">Codigo de la Ciudad:</label>
      <input type="text" name="codigoCiudad" value="<?php echo $reg['CODIGO_CIUDAD']; ?>">
      <br>
      <label for="ciudad">Ciudad</label>:
      <input type="text" name="ciudad"  value="<?php echo $reg['nombre_ciudad']; ?>">      
      <br>  
       <!------
      -->    
             
      
    <input type="hidden" name="codigo" value="<?php echo $_REQUEST['codigo']; ?>">     
      <br> 
      <input type="submit" class="btn" value="Confirmar">
    </form>
  </div>
  <?php
    }      
    else
      echo 'No existe una ciudad con dicho código';
    
    $mysql->close();

  ?>  
</body>
</html>