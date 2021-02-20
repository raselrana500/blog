<?php 
    include '../lib/session.php';
    session::checksession();
?>
<?php include '../config/config.php';?>
<?php include '../lib/database.php';?>
<?php
    $db = new Database();
?>
<?php
    $delpage = mysqli_real_escape_string($db->link,$_GET['delpage']);
    if (!isset($delpage) || $delpage == NULL) {
       echo "<script>window.location = 'index.php';</script>";
    }else{
        $pageid = $delpage;

        $delquery = "DELETE FROM tbl_page WHERE id ='$pageid'";
        $deldata = $db->delete($delquery);
        if ($deldata) {
        	echo "<script>alert('Page Deleted successfully.');</script>";
        	echo "<script>window.location = 'index.php';</script>";
        }else{
        	echo "<script>alert('Page Not Deleted.');</script>";
        	echo "<script>window.location = 'index.php';</script>";
        }
    }
?>