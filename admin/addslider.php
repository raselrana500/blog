<?php include 'inc/header.php';?>
        <div class="grid_10">		
            <div class="box round first grid">
                <h2>Add New Slider</h2>
<?php
    if ($_SERVER['REQUEST_METHOD']== 'POST') {
        $title = mysqli_real_escape_string($db->link,$_POST['title']);

         $Permited  = array('jpg','jpeg','png','gif');
         $File_name = $_FILES['image']['name'];
         $File_size = $_FILES['image']['size'];
         $File_temp = $_FILES['image']['tmp_name'];

         $div =explode('.', $File_name);
         $file_ext = strtolower(end($div));
         $unique_image = substr(md5(time()), 0,10).'.'.$file_ext;
         $uploaded_image = "upload/slider/".$unique_image;

         if ($title==NULL || $File_name==NULL) {
             echo "<span class='error'>Field must not be empty !</span>";
         }elseif ($File_size > 1047576) {
            echo "<span class='error'>image size should be less then 1MB!</span>";
         }elseif (in_array($file_ext,  $Permited) === false) {
            echo "<span class='error'>you can upload only:-".implode(',',$Permited)."
            </span>";
         }else{
             move_uploaded_file($File_temp,$uploaded_image);
             $query = "INSERT INTO tbl_slider(title,image) values('$title','$uploaded_image')";
             $inserted_row=$db->insert($query);
             if ( $inserted_row) {
                echo "<span class='success'>Slider Inserted Successfully.</span>";
             }else{
                echo "<span class='error'>Slider Not Inserted.</span>";
             }

         }


}
        ?>
                <div class="block">               
                 <form action="" method="POST" enctype="multipart/form-data">
                    <table class="form">                      
                        <tr>
                            <td>
                                <label>Title</label>
                            </td>
                            <td>
                                <input type="text" name="title" placeholder="Enter Slider Title..." class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Upload Image</label>
                            </td>
                            <td>
                                <input type="file" name="image" />
                            </td>
                        </tr>
						<tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Save" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
<!-- Load TinyMCE -->
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
<!-- Load TinyMCE -->
<?php include 'inc/footer.php';?>


