<!DOCTYPE html>
<html>

<head>
	<?php 
		session_start();

		include 'includes/header.php';

		if(isset($_SESSION['role'])){
			echo "<title>" . $_SESSION['role'] . "</title>";
		}
		else {
			echo "<title>TigernetBD</title>";
		}
	?>
</head>

<body>
	<?php include 'includes/topmenu.php'; ?>
	<div id="main" class="container-fluid">
		<div class="row" id="content">
			<div class="col-md-2" id="leftPanel">
				<?php include 'includes/sideBar.php'; /********** leftbar goes here *********/  ?>     
			</div>
			
			<div class="col-md-8" id="writing">
				<?php include "$page";                /********** content goes here *********/  ?>    
			</div>
			
			<div class="col-md-2" id="rightPanel">
					
			</div>
			
		</div>
	</div>
</body>

</html>