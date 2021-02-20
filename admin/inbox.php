<?php include 'inc/header.php';?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Inbox</h2>
        <?php
        	// $seenid = mysqli_real_escape_string($db->link,$_GET['seenid']);
			if (isset($_GET['seenid'])) {
				 $seenid = $_GET['seenid'];
				 $query = "update tbl_contact 
				 set 
				 status='1'
				 where id = '$seenid'";
			        $updatemsg = $db->update( $query);
			        if ($updatemsg) {
			            echo "<span class='success'>Message sent in the seen box.</span>";
			        }else{
			            echo "<span class='error'>Something went wrong !</span>";
			        }
			}
	?>
        <div class="block">        
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>Serial No.</th>
					<th>Name</th>
					<th>Email</th>
					<th>Message</th>
					<th>Date</th>
					<th>Actoin</th>
				</tr>
			</thead>
			<tbody>
			<?php
				$query = "select * from tbl_contact where status='0' order by id desc";
				$msg =$db->select($query);
				if ($msg) {
					$i=0;
				while ($result=$msg->fetch_assoc()) {
					$i++;
			?>
				<tr class="odd gradeX">
					<td><?php echo $i;?></td>
					<td><?php echo $result['firstname'].' '.$result['lastname'];?></td>
					<td><?php echo $result['email'];?></td>
					<td><?php echo $fm->textshorten($result['body'],30); ?></td>
					<td><?php echo $fm->formatDate($result['date']);?></td>
					<td>
					<a href="viewmsg.php?msgid=<?php echo $result['id'];?>">View</a> || 
					<a href="replymsg.php?msgid=<?php echo $result['id'];?>">Reply</a> || 
					<a onclick="return confirm('Are you sure to move this message ?')" href="?seenid=<?php echo $result['id'];?>">Seen</a></td>
				</tr>
				<?php } } ?>
				
			</tbody>
		</table>
       </div>
    </div>
    <div class="box round first grid">
        <h2>Seen Message</h2>
		<?php
        	if (isset($_GET['delid'])) {
        		$delid = $_GET['delid'];
        		$delquery = "delete from tbl_contact where id='$delid'";
        		$deldata = $db->delete($delquery);
        		if ($deldata) {
        			echo "<span class='success'>Message Deleted Successfully.</span>";
        		}else{
        			echo "<span class='erroe'>Message Not Deleted !</span>";
        		}
        	}
        ?>
         <?php
			if (isset($_GET['unseenid'])) {
				 $unseenid = $_GET['unseenid'];

				 $query = "update tbl_contact 
				 set 
				 status='0'
				 where id = '$unseenid'";
			        $updatecat = $db->update( $query);
			        if ($updatecat) {
			            echo "<span class='success'>Message sent in the Unseen box.</span>";
			        }else{
			            echo "<span class='error'>Something went wrong !</span>";
			        }
			}
	?>
        <div class="block">        
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>Serial No.</th>
					<th>Name</th>
					<th>Email</th>
					<th>Message</th>
					<th>Date</th>
					<th>Actoin</th>
				</tr>
			</thead>
			<tbody>
			<?php
				$query = "select * from tbl_contact where status='1' order by id desc";
				$msg =$db->select($query);
				if ($msg) {
					$i=0;
				while ($result=$msg->fetch_assoc()) {
					$i++;
			?>
				<tr class="odd gradeX">
					<td><?php echo $i;?></td>
					<td><?php echo $result['firstname'].' '.$result['lastname'];?></td>
					<td><?php echo $result['email'];?></td>
					<td><?php echo $fm->textshorten($result['body'],30); ?></td>
					<td><?php echo $fm->formatDate($result['date']);?></td>
					<td>
					<a href="viewmsg.php?msgid=<?php echo $result['id'];?>">View</a> ||
					<a onclick="return confirm('Are you sure to Delete this message!')" href="?delid=<?php echo $result['id'];?>">Delete</a> ||
					<a onclick="return confirm('Are you sure to move this message?')" href="?unseenid=<?php echo $result['id'];?>">Unseen</a></td>
				</tr>
				<?php } } ?>
				
			</tbody>
		</table>
       </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
    setupLeftMenu();
    $('.datatable').dataTable();
    setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php';?>