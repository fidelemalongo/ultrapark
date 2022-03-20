<?php
    session_start();
    include('includes/config.php');

    if(strlen($_SESSION['alogin'])==0){	
        header('location:index.php');
    }else{ 
        $idParent=isset($_GET['idParent'])?$_GET['idParent']:"";
        
        $etat=isset($_GET['etat'])?$_GET['etat']:0;
    
        if($etat==1)
            $newEtat=0;
        else
            $newEtat=1;

        $requete="update t_parents set etat=? where id_parent=?";
        
        $params=array($newEtat,$idParent);
        
        $resultat=$dbh->prepare($requete);
        
        $resultat->execute($params);
        
        header('location:manage-users.php');
    }
?>