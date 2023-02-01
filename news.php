<?php 
session_start();
include('includes/config.php');

    ?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">

  <title>News Portal - Dedi Iskandar & Partner</title>

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
          <li><a class="nav-link scrollto" href="index.php#about">About</a></li>
          <li><a class="nav-link scrollto" href="index.php#services">Services</a></li>
          <li><a class="nav-link scrollto" href="index.php#portfolio">Gallery</a></li>
          <li><a class="nav-link scrollto" href="index.php#team">Lawyer</a></li>
          <li><a class="active" href="news.php">News</a></li>
          <li><a class="nav-link scrollto" href="index.php#contact">More Info</a></li>
          <li><a class="getstarted scrollto" href="index.php#about">Partner</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.php#hero">Home</a></li>
          <li>Blog</li>
        </ol>
        <h2>Blog</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div class="row">

          <div class="col-lg-8 entries">

<?php 
     if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 1;
        }
        $no_of_records_per_page = 8;
        $offset = ($pageno-1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM tblposts";
        $result = mysqli_query($con,$total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);


$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url,tblposts.postedBy from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.Is_Active=1 order by tblposts.id desc  LIMIT $offset, $no_of_records_per_page");
while ($row=mysqli_fetch_array($query)) {
?>

            <article class="entry">

              <div class="entry-img">
          <img class="card-img-top" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>" class="img-fluid">
              </div>

              <h2 class="entry-title"><?php echo htmlentities($row['posttitle']);?></h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="bi bi-person"></i><a href="#"><?php echo htmlentities($row['postedBy']);?></a></li>

                  <li class="d-flex align-items-center"><i class="bi bi-clock"></i><a href="#"><?php echo htmlentities($row['postingdate']);?></a></li>
                </ul>
              </div>
              <div class="entry-content">
                <div class="read-more">
                  <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>">Read More</a>
                </div>
              </div>

            </article><!-- End blog entry -->
<?php } ?>

            <!-- Pagination -->


            <div class="blog-pagination">
              <ul class="justify-content-center">
                <li><a href="#">First</a></li>
                <li class="<?php if($pageno <= 1){ echo 'disabled'; } ?> page-item">
                  <a href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>" class="page-link">Prev</a>
                </li>
                <li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?> page-item">
                  <a href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?> " class="page-link">Next
                  </a>
                </li>
                <li class="page-item"><a href="?pageno=<?php echo $total_pages; ?>" class="page-link">Last</a></li>
              </ul>

            </div>

          </div><!-- End blog entries list -->

<!-- Sidebar Widgets Column -->
      <?php include('includes/sidebar.php');?>

        </div>

      </div>
    </section><!-- End Blog Section -->

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