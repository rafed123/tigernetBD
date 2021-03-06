<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>                        
			</button>
			<a class="navbar-brand" href="/tgnet/"><b>Tigernet BD</b></a>
		</div>
		
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="about.php">About us</a></li>
				<li><a href="contact.php">Contact us</a></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<?php
					if(isset($_SESSION['email'])){ ?>
						<li><a href="/tgnet/auth/logoutAction.php"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
					<?php } else { ?>
						<li><a href="register.php"><span class="glyphicon glyphicon-user"></span>Register</a></li>
						<li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
</nav>
