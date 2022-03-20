<?php
session_start();
error_reporting(0);
include('includes/config.php');

$mailParent=$_SESSION['login'];
$requete="select * from t_parents where mail='$mailParent'";   
$resultat=$dbh->query($requete);
$parent=$resultat->fetch();

$idParent = $parent['id_parent'];

if(isset($_POST['submit1']))
{
$name=$_POST['name'];
$mName=$_POST['mName'];	
$fName=$_POST['fName'];
$gender=$_POST['gender'];	
$age=$_POST['age'];
$sql="INSERT INTO t_enfants(id_parent,nom,postnom,prenom,genre,age)
 VALUES(:idParent,:names,:mName,:fName,:gender,:age)";
$query = $dbh->prepare($sql);
$query->bindParam(':idParent',$idParent,PDO::PARAM_INT);
$query->bindParam(':names',$name,PDO::PARAM_STR);
$query->bindParam(':mName',$mName,PDO::PARAM_STR);
$query->bindParam(':fName',$fName,PDO::PARAM_STR);
$query->bindParam(':gender',$gender,PDO::PARAM_STR);
$query->bindParam(':age',$age,PDO::PARAM_STR);
$query->execute();

$lastInsertId = $dbh->lastInsertId();

if($lastInsertId != 0 AND $lastInsertId != null)
{
$msg=" Adding child  Successfully !";
}
else 
{

$error=" Something went wrong. Please try again".var_dump($lastInsertId);
}

}

?>
<!DOCTYPE HTML>
<html>
<head>
<title>UP | Management System</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="icon" href="images/logo_UP2.jpg" type="image/jpg" sizes="any"/>
<meta name="keywords" content="Ultra Park Solution" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
  <style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>
</head>
<body>
<!-- top-header -->
<div class="top-header">
<?php include('includes/header.php');?>
<div class="banner-1 ">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">UP - ADD YOUR CHILD</h1>
	</div>
</div>
<!--- /banner-1 ---->
<!--- privacy ---->
<div class="privacy">
	<div class="container">
		<h3 class="wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">FILL IN YOUR CHILD'S INFORMATION</h3>
		<form name="enquiry" method="post">
		 <?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
	<p style="width: 350px;">
		
			<b>Name</b>  <input type="text" name="name" class="form-control" id="fname" placeholder="Your child's name" required="">
	</p> 
<p style="width: 350px;">
<b>Middle name</b>  <input type="text" name="mName" class="form-control" id="email" placeholder="Your child's middle name" required="">
	</p> 

	<p style="width: 350px;">
<b>First name</b>  <input type="text" name="fName" class="form-control" id="mobileno" placeholder="Your child's first name" required="">
	</p> 

	<p style="width: 350px;">
<b>Gender</b><br>
  <select id="country" name="gender" class="form-control" required="">
		<option value="">Select your gender</option> 
		<option value="M">M</option> 		
		<option value="F">F</option>														
	</select>
	</p> 
	<p style="width: 350px;">
<b>Age</b>  <input type="text" name="age" class="form-control" id="subject"  placeholder="Enter your child's age" required="">
	</p> 

			<p style="width: 350px;">
<button type="submit" name="submit1" class="btn-primary btn">Add Child</button>
			</p>
			</form>

		
	</div>
</div>
<!--- /privacy ---->
<!--- footer-top ---->
<!--- /footer-top ---->
<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>
</body>
</html>