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
$codeCat=$_POST['codeCategory'];
$codeChild=$_POST['codeChild'];
$dateCom=date('d/m/Y');
$libTicket="TICKET PURCHASE";
$sql="INSERT INTO  t_tickets(id_parent,id_enfant,id_categorie,libelle_ticket,date_commande)
 VALUES(:idParent,:idEnfant,:codeCat,:libTicket,:dateCom)";
$query = $dbh->prepare($sql);
$query->bindParam(':idParent',$idParent,PDO::PARAM_INT);
$query->bindParam(':idEnfant',$codeChild,PDO::PARAM_INT);
$query->bindParam(':codeCat',$codeCat,PDO::PARAM_INT);
$query->bindParam(':libTicket',$libTicket,PDO::PARAM_STR);
$query->bindParam(':dateCom',$dateCom,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
    echo "<script type='text/javascript'> document.location = 'printTicket.php?idParent=$idParent'; </script>";
}
else 
{
$error=" Something went wrong. Please try again";
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
		<h3 class="wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">Buy the ticket for your child</h3>
		<form name="enquiry" method="post">
		 <?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>

	<p style="width: 350px;">
<b>Ticket Category</b><br>
  <select id="country" name="codeCategory" class="form-control" required="">
		<option value="">Select your ticket category</option>
        <?php
            $requete1="SELECT * FROM t_categories ORDER BY id_categorie";   
            $resultat1=$dbh->query($requete1);
            while($categories = $resultat1->fetch()){?>
                <option value="<?php echo $categories['id_categorie'];  ?>"><?php echo $categories['libelle_categorie'].' -> USD '.$categories['prix_unitaire'] ?></option>
            <?php }

        ?>														
	</select>
	</p> 
	<p style="width: 350px;">
<b>Choose your child</b><br>
  <select id="country" name="codeChild" class="form-control" required="">
		<option value="">choose your child</option>
        <?php
            $requete1="SELECT * FROM t_enfants WHERE id_parent='$idParent'";   
            $resultat1=$dbh->query($requete1);
            while($enfant = $resultat1->fetch()){?>
                <option value="<?php echo $enfant['id_enfant'];  ?>"><?php echo $enfant['prenom'].' '.$enfant['nom'].' '.$enfant['postnom']; ?></option>
            <?php }

        ?>														
	</select>
	</p> 

			<p style="width: 350px;">
<button type="submit" name="submit1" class="btn-primary btn">Buy your ticket</button>
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