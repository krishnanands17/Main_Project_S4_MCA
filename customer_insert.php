<?php 
if(isset($_POST['submit']))
{
include("../db/connection.php");
$query = "INSERT INTO customer(customer_name,customer_house,customer_street,customer_city,customer_ph,email,password,c_password) VALUES('$_POST[customer_name]','$_POST[customer_house]','$_POST[customer_street]','$_POST[customer_city]','$_POST[customer_ph]','$_POST[email]','$_POST[password]','$_POST[c_password]')";



if (!mysqli_query($con,$query))
  {
  $status="failure";
  //echo "EROR :".mysqli_error($con); 
  header("location:register.php?status=$status");
  }
else
  { 
  $customer_id=mysqli_insert_id($con);
  $query1 = "INSERT INTO tbl_login(customer_id,email,password,type)VALUES('$customer_id','$_POST[email]','$_POST[password]','customer')";
   mysqli_query($con,$query1);
  $status="success";
  header("location:register.php?status=$status");
  }
}
?>

