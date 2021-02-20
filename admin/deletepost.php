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
    if (!isset($_GET['deletpostid']) || $_GET['deletpostid'] == NULL) {
       echo "<script>window.location = 'postlist.php';</script>";
    }else{
        $postid = $_GET['deletpostid'];
        $query = "select * form tbl_post where id = '$postid'";
        $getdata = $db->select($query);
        if ($getdata) {
        	while ($delimg = $getdata->fetch_assoc()) {
        		$dellink = $delimg['image'];
        		unlink($dellink);

        	}
        }
        $delquery ="DELETE FROM tbl_post WHERE id ='$postid'";
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