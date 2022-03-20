<?php
    session_start();
    error_reporting(0);
    include('includes/config.php');
	
	$idParent =isset($_GET['idParent'])? filter_var($_GET['idParent'], FILTER_SANITIZE_STRING) :"";
	if(!empty($idParent)){
        
        $requeteEleve= $dbh->prepare("SELECT MAX(id_ticket) dernierPayement FROM t_tickets WHERE id_parent=?");
        $requeteEleve->execute(array($idParent));
        $id_payement = $requeteEleve->fetch(PDO::FETCH_OBJ);

        $id_payement = $id_payement->dernierPayement;


        $requetePayement= $dbh->prepare("select * from t_tickets LEFT JOIN t_categories 
        ON t_tickets.id_categorie=t_categories.id_categorie LEFT JOIN t_enfants 
        ON t_tickets.id_enfant=t_enfants.id_enfant WHERE t_tickets.id_ticket=?");
        $requetePayement->execute(array($id_payement));
        $payement = $requetePayement->fetch(PDO::FETCH_OBJ); 
        
    }else{
        echo "Erreur : matricule élève manquant!";
    }
?>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8" />
        <link rel="icon" href="images/logo_UP2.jpg" type="image/jpg" sizes="any"/>
        <title>UP | Management System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/styleEcr.css" rel='stylesheet' type='text/css' media="screen"/>
        <link href="css/styleP.css" rel='stylesheet' type='text/css' media="print"/>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- Custom Theme files -->
        <script src="js/jquery-1.12.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!--animate-->
        <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">

		<script>
            function printContent(el) {
                var restorepage = document.body.innerHTML;
                var printcontent = document.getElementById(el).innerHTML;
                document.body.innerHTML = printcontent;
                window.print();
                document.body.innerHTML = restorepage;s
            }
        </script>

	</head>
	
	<body>
		<br/><br/><br/>
		<div id="papier">
            <div class="tete">
                <h4 class="titre3">ULTRA PARK</h4>
                <h4 class="titre5"><< UP >></h4>
                <span><img src="images/logo_UP.png" alt="logo UltraPark" id="logo"></span>
                <h4 class="titre4">ACCESS TICKET</h4><hr>
            </div>

			<div class="corps">
                <span id="reference">Ref. Ticket </span>
                <span id="dReference"><?php echo ' : '.$id_payement; ?></span><br/>
                <span id="catTicket">Category </span>
                <span id="dCatTicket"><?php echo ' : '.$payement->libelle_categorie; ?></span><br/>
                <span id="matricule">Name </span>
                <span id="dMatricule"><?php echo ' : '.$payement->nom; ?></span><br/>
                <span id="nom">Middle Name </span>
                <span id="dNom"><?php echo ' : '.$payement->postnom; ?></span><br/>
                <span id="promotion">Last name </span>
                <span id="dPromotion"><?php echo ' : '.$payement->prenom; ?></span><br/>
                <span id="montant">Payroll amount </span>
                <span id="dMontant"><?php echo ' : '.$payement->prix_unitaire.' USD'; ?></span><br/>
                <span id="datePurchass">Date of pur. </span>
                <span id="dDateParchass"><?php echo ' : '.$payement->date_commande; ?></span><br/>
                <span id="codeBar"><?php echo "$payement->id_ticket$payement->nom$payement->postnom$payement->prenom"; ?></span>               
            </div>
            <hr id="ligneFin">

        </div>	
        <button type="button" onclick="printContent('papier')" class="btn btn-danger" id="submit">
            <span class="glyphicon glyphicon-print"></span> Print the ticket
        </button><a href="byeTickets.php" class="retour">Return to ticket purchase form</a>
        	
	</body>	
</html>