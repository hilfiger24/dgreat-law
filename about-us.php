<?php
include('includes/config.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>About Us - Dedi Iskandar & Partner</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="img/favicon1.png" rel="icon">
  <link href="img/apple-touch-icon1.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="vendor/aos/aos.css?version=<?php echo filemtime('vendor/aos/aos.css'); ?>" rel="stylesheet">
  <link href="vendor/bootstrap/css/bootstrap.min.css?version=<?php echo filemtime('vendor/bootstrap/css/bootstrap.min.css'); ?>" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css?version=<?php echo filemtime('vendor/bootstrap-icons/bootstrap-icons.css'); ?>" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css?version=<?php echo filemtime('vendor/glightbox/css/glightbox.min.css'); ?>" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css?version=<?php echo filemtime('vendor/remixicon/remixicon.css'); ?>" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css?version=<?php echo filemtime('vendor/swiper/swiper-bundle.min.css'); ?>" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="css/style.css?version=<?php echo filemtime('css/style.css'); ?>" rel="stylesheet">

  <!-- =======================================================
  * Template Name: FlexStart - v1.12.0
  * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="index.php#hero" class="logo d-flex align-items-center">
        <img src="img/logo4.png" alt="">
        <span>D'Great Lawyer</span>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto" href="index.php#hero">Home</a></li>
          <li><a class="nav-link scrollto active" href="index.php#about">About</a></li>
          <li><a class="nav-link scrollto" href="index.php#services">Services</a></li>
          <li><a class="nav-link scrollto" href="index.php#portfolio">Gallery</a></li>
          <li><a class="nav-link scrollto" href="index.php#team">Lawyer</a></li>
          <li><a href="news.php">News</a></li>
          <li><a class="nav-link scrollto" href="index.php#contact">More Info</a></li>
          <li><a class="getstarted scrollto" href="index.php#about">Partner</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

<?php 
$pagetype='aboutus';
$query=mysqli_query($con,"select PageTitle,Description from tblpages where PageName='$pagetype'");
while($row=mysqli_fetch_array($query))
{

?>


    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.php#hero">Home</a></li>
          <li>Inner Page</li>
        </ol>
        <h2><?php echo htmlentities($row['PageTitle'])?>
          
        </h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <section class="inner-page">
      <div class="container">

        <p><?php echo $row['Description'];?></p>

      </div>
      <!-- /.row -->
<?php } ?>

    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
 <?php include('includes/footer.php');?>
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi-caret-up-fill"></i></a>

  <!-- Vendor JS Files -->
  <script src="vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="vendor/aos/aos.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/glightbox/js/glightbox.min.js"></script>
  <script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="vendor/swiper/swiper-bundle.min.js"></script>
  <script src="vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="js/main.js"></script>

</body>

</html>