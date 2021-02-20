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
    $sliderid = mysqli_real_escape_string($db->link,$_GET['sliderid']);
    if (!isset($sliderid) || $sliderid == NULL) {
       echo "<script>window.location = 'sliderlist.php';</script>";
    }else{
        $sliderid = $sliderid;
        $query = "select * form tbl_slider where id = '$sliderid'";
        $getslider = $db->select($query);
        if ($getslider) {
        	while ($delslider = $getslider->fetch_assoc() ) {
        		$dellink = $delslider['image'];
        		unlink($dellink);
        	}
        }

        $delquery = "DELETE FROM tbl_slider WHERE id ='$sliderid'";
        $deldata = $db->delete($delquery);
        if ($deldata) {
        	echo "<script>alert('Slider Deleted successfully.');</script>";
        	echo "<script>window.location = 'sliderlist.php';</script>";
        }else{
        	echo "<script>alert('Slider Not Deleted.');</script>";
        	echo "<script>window.location = 'sliderlist.php';</script>";
        }
    }
?>