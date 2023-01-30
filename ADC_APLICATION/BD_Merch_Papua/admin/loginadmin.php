<?php
session_start();
// header("location:loginadmin.php");
include '../dbconnect.php';
date_default_timezone_set("Asia/Bangkok");
$timenow = date("j-F-Y-h:i:s A");

?> 

<!DOCTYPE html>
<html>
<head>
<title>Login Admin - Masuk</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tokopekita, Richard's Lab" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="..\css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="..\css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="..\css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="..\js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="..\js/move-top.js"></script>
<script type="text/javascript" src="..\js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
	<div class="agileits_header">
		<div class="container">
			<div class="w3l_offers">
				<!-- <p>MERCHANDISE PAPUA <a href="products.php">BELANJA SEKARANG!</a></p>
			</div>
			<div class="agile-login">
				<ul>
					<li><a href="registered.php"> Daftar</a></li>
					<li><a href="login.php">Masuk</a></li>
					
				</ul> -->
			<!-- </div>
			<div class="product_list_header">  
					<form action="#" method="post" class="last"> 
						<input type="hidden" name="cmd" value="_cart">
						<input type="hidden" name="display" value="1">
						<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
					</form>  
			</div>
			<div class="clearfix"> </div>
		</div>
	</div> -->

	<!-- <div class="logo_products">
		<div class="container">
		<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>Hubungi Kami : (+62822) 9799 7274</li>
				</ul>
			</div>
			<div class="w3ls_logo_products_left">
				<h1><a href="../index.php">MERCHANDISE PAPUA</a></h1>
			</div> -->
		<!-- <div class="w3l_search">
			<form action="#" method="post">
				<input type="search" name="Search" placeholder="Cari produk..." required="">
				<button type="submit" class="btn btn-default search" aria-label="Left Align">
					<i class="fa fa-search" aria-hidden="true"> </i>
				</button>
				<div class="clearfix"></div>
			</form>
		</div> -->
			
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- navigation -->
	<div class="navigation-agileits">
		<div class="container">
			<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
<!-- login -->
	<div class="login">
		<div class="container">
			<h2>LOGIN ADMIN</h2>
		
		<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
			<form method="post" action=''>
				<input type="text" name="user" placeholder="user" required>
				<input type="password" name="pass" placeholder="pass" required>
				<input type="submit" name="login" value="Masuk">
				</form> 
				<?php
				if(isset($_POST['login']))
				{
				$user = $_POST['user'];
				$pass = $_POST['pass'];
				$queryuser = mysqli_query($conn,"SELECT * FROM admin WHERE user='$user'");
				$cariuser = mysqli_fetch_assoc($queryuser);
				$c = mysqli_num_rows($queryuser);	
					if( $c > 0 ) {
						$_SESSION['id'] = $cariuser['idadmin'];
						$_SESSION['user'] = $cariuser['user'];
						$_SESSION['pass'] = $cariuser['pass'];
						$_SESSION['log'] = "Logged";
						header('location:index.php');
						var_dump($c);
					} else {
						echo 'Username atau password salah';
					}		
				}
				?>
			</div> 
			<!-- <h4>Belum terdaftar?</h4>
			<p><a href="registered.php">Daftar Sekarang</a></p>
		</div> -->
	</div> -->
<!-- //login -->
<!-- //footer -->
<!-- <div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-4 w3_footer_grid">

				</div>
				<div class="col-md-3 w3_footer_grid">
					<h3>Tentang Kami</h3>
					<ul class="info"> 
						<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="..\about.html">About Us</a></li>
						
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div> -->
<!-- //footer -->	
<!-- Bootstrap Core JavaScript -->
<script src="..\js/bootstrap.min.js"></script>

<!-- top-header and slider -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 4000,
				easingType: 'linear' 
				};
			
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->

<!-- main slider-banner -->
<script src="..\js/skdslider.min.js"></script>
<link href="..\css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
						
			jQuery('#responsive').change(function(){
			  $('#responsive_wrapper').width(jQuery(this).val());
			});
			
		});
</script>	
<!-- //main slider-banner --> 
</body>
</html>