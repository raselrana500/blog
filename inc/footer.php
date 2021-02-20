</div>

	<div class="footersection templete clear">
	  <div class="footermenu clear">
		<ul>
		<li><a 
		<?php if ($currentpage == 'index') { echo 'id="active"';}?>
		href="index.php">Home</a></li>
		<?php
            $query = "select * from tbl_page";
            $pages =$db->select($query);
            if ($pages) {
                while ($result =$pages->fetch_assoc() ) {
                    
        ?>
        <li><a  
		<?php
			if (isset($_GET['pageid']) && $_GET['pageid'] == $result['id']) {
				echo 'id="active"';
			}
		?>

		href="page.php?pageid=<?php echo $result['id'];?>"><?php echo $result['name'];?></a> </li>
        <?php } } ?>	
		<li><a 
		<?php if ($currentpage == 'contact_us') { echo 'id="active"';}?>
		href="contact_us.php">Contact</a></li>
	</ul>
	  </div>
	   <?php
            $query = "select * from  tbl_footer where id ='1'";
            $copyright =$db->select($query);
            if ($copyright) {
                while ($result =$copyright->fetch_assoc() ) {
                    
        ?>
	  <p>&copy; <?php echo $result['note']; echo date(' Y');?> </p>
	  <?php } } ?>
	</div>
	<div class="fixedicon clear">
		<?php
            $query = "select * from  tbl_social where id ='1'";
            $socialmedia =$db->select($query);
            if ($socialmedia) {
                while ($result =$socialmedia->fetch_assoc() ) {
                    
		?>
		<a href="<?php echo $result['fb'];?>" target="_blank"><img src="images/fb.png" alt="Facebook"/></a>
		<a href="<?php echo $result['tw'];?>" target="_blank"><img src="images/tw.png" alt="Twitter"/></a>
		<a href="<?php echo $result['ln'];?>" target="_blank"><img src="images/in.png" alt="LinkedIn"/></a>
		<a href="<?php echo $result['gp'];?>" target="_blank"><img src="images/gl.png" alt="GooglePlus"/></a>
		<?php } } ?>
	</div>
<script type="text/javascript" src="js/scrolltop.js"></script>
</body>
</html>