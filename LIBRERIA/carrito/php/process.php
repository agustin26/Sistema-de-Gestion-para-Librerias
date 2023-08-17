<?php 
session_start();
include "conection.php";
if(!empty($_POST)){
$q1 = $con->query("insert into cart(client_email,created_at) value(\"$_POST[email]\",NOW())");
if($q1){
$cart_id = $con->insert_id;
foreach($_SESSION["cart"] as $c){
$q1 = $con->query("insert into cart_product(product_id,q,cart_id) value($c[product_id],$c[q],$cart_id)");

$stock=$con->query("select produc.STOCK_CODIGO_STOCK as codinProduct,
produc.CODIGO_PRODUCTO as codigoProduct,
stock.CODIGO_STOCK as cods,
stock.cantidad as cantidad
from productos as produc
join stock as stock on stock.CODIGO_STOCK=produc.STOCK_CODIGO_STOCK ");
while($reg=mysqli_fetch_array($stock)) 
{
    if($reg['codigoProduct']==$c['product_id'])
    {
        $con->query("UPDATE stock set 
                        cantidad='$reg[cantidad]'-'$c[q]'
                        where CODIGO_STOCK =$reg[codinProduct]") or 
    die($con->error);
    $con->close();
    }
}
}
unset($_SESSION["cart"]);
}
}
print "<script>alert('Venta procesada exitosamente');window.location='../products.php';</script>";
?>