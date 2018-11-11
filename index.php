<?php include 'inc/header.php';?>

<?php 

if ($_SERVER['REQUEST_METHOD']=='POST') {
            $name =  $fm->validation($_POST['name']);
            $email =  $fm->validation($_POST['email']);
            $roll =  $fm->validation($_POST['roll']);
            $choice_1 =  $fm->validation($_POST['choice_1']);
            $choice_2 =  $fm->validation($_POST['choice_2']);
            $choice_3 =  $fm->validation($_POST['choice_3']);
            $choice_4 =  $fm->validation($_POST['choice_4']);
            $choice_5 =  $fm->validation($_POST['choice_5']);
            $position =  $fm->validation($_POST['position']);

            $name =  mysqli_real_escape_string($db->link,$name);
            $email =  mysqli_real_escape_string($db->link,$email);
            $roll =  mysqli_real_escape_string($db->link,$roll);
            $choice_1 =  mysqli_real_escape_string($db->link,$choice_1);
            $choice_2 =  mysqli_real_escape_string($db->link,$choice_2);
            $choice_3 =  mysqli_real_escape_string($db->link,$choice_3);
            $choice_4 =  mysqli_real_escape_string($db->link,$choice_4);
            $choice_5 =  mysqli_real_escape_string($db->link,$choice_5);
            $position =  mysqli_real_escape_string($db->link,$position);

            $choice = array($choice_1,$choice_2,$choice_3,$choice_4,$choice_5);

            $choice = serialize($choice);


            $query = "INSERT INTO  tbl_candidates(name,email,roll,choice,position) VALUES ('$name','$email','$roll','$choice','$position')";
                $userinsert = $db->insert($query);
                if($userinsert){
                  Session::set("message","Choice Form Submitted Successfully !!!");
            Session::set("color","success");
            echo "<script>window.location='index.php'</script>";  
            exit();
                }


          }

 ?>

<section class="homepage">

        <div class="container">
            <div class="row">
                    <div class="col-md-12">
                        <h2>Choice Form</h2>
                         <?php 

               if(Session::get("message")){ ?>
                  <span class="label label-success"><?php echo Session::get("message"); ?></span><br><br>
                  <?php Session::unset_it("message");
                  }

            ?>
                    </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                    <div class="col-md-6">
                         <form action="" method="POST">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
    </div>
    <div class="form-group">
      <label for="name">E-mail:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter email" name="email" required>
    </div>
    <div class="form-group">
      <label for="roll">Roll:</label>
      <input type="number" class="form-control" id="roll" placeholder="Enter Roll" name="roll" required>
    </div>
    
    <div class="form-group">
    <label for="roll">Choice 1:</label>
      <select class="form-control" id="sel1" name="choice_1" required>

      <?php 

       $query = "SELECT * from tbl_departments";
          $departments = $db->select($query);
          if($departments){ ?>

           <?php 
                      while ($result = $departments->fetch_assoc()) { 

       ?>

    <option value="<?php echo $result['slug']; ?>"><?php echo $result['name']; ?></option>
   

    <?php } } ?>
  
  </select>
    </div>
    
    <div class="form-group">
    <label for="roll">Choice 2:</label>
      <select class="form-control" id="sel1" name="choice_2" required>
    <?php 

       $query = "SELECT * from tbl_departments";
          $departments = $db->select($query);
          if($departments){ ?>

           <?php 
                      while ($result = $departments->fetch_assoc()) { 

       ?>

    <option value="<?php echo $result['slug']; ?>"><?php echo $result['name']; ?></option>
   

    <?php } } ?>
  
  </select>
    </div>

    <div class="form-group">
    <label for="roll">Choice 3:</label>
      <select class="form-control" id="sel1" name="choice_3" required>
    <?php 

       $query = "SELECT * from tbl_departments";
          $departments = $db->select($query);
          if($departments){ ?>

           <?php 
                      while ($result = $departments->fetch_assoc()) { 

       ?>

    <option value="<?php echo $result['slug']; ?>"><?php echo $result['name']; ?></option>
   

    <?php } } ?>
  
  </select>
    </div>

    <div class="form-group">
    <label for="roll">Choice 4:</label>
      <select class="form-control" id="sel1" name="choice_4" required>
    <?php 

       $query = "SELECT * from tbl_departments";
          $departments = $db->select($query);
          if($departments){ ?>

           <?php 
                      while ($result = $departments->fetch_assoc()) { 

       ?>

    <option value="<?php echo $result['slug']; ?>"><?php echo $result['name']; ?></option>
   

    <?php } } ?>
  
  </select>
    </div>

    <div class="form-group">
    <label for="roll">Choice 5:</label>
      <select class="form-control" id="sel1" name="choice_5" required>
    <?php 

       $query = "SELECT * from tbl_departments";
          $departments = $db->select($query);
          if($departments){ ?>

           <?php 
                      while ($result = $departments->fetch_assoc()) { 

       ?>

    <option value="<?php echo $result['slug']; ?>"><?php echo $result['name']; ?></option>
   

    <?php } } ?>
  
  </select>
    </div>

    <div class="form-group">
      <label for="roll">Merit Position:</label>
      <input type="number" class="form-control" id="roll" placeholder="Enter Merit Position" name="position" required>
    </div>

     
   
    <button type="submit" class="btn btn-success">Submit</button>
  </form>
                    </div>
            </div>
        </div>

</section>
<?php include 'inc/footer.php';?>