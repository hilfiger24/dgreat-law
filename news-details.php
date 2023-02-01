<?php 
session_start();
include('includes/config.php');
//Genrating CSRF Token
if (empty($_SESSION['token'])) {
 $_SESSION['token'] = bin2hex(random_bytes(32));
}

if(isset($_POST['submit']))
{
  //Verifying CSRF Token
if (!empty($_POST['csrftoken'])) {
    if (hash_equals($_SESSION['token'], $_POST['csrftoken'])) {
$name=$_POST['name'];
$email=$_POST['email'];
$comment=$_POST['comment'];
$postid=intval($_GET['nid']);
$st1='0';
$query=mysqli_query($con,"insert into tblcomments(postId,name,email,comment,status) values('$postid','$name','$email','$comment','$st1')");
if($query):
  echo "<script>alert('comment successfully submit. Comment will be display after admin review ');</script>";
  unset($_SESSION['token']);
else :
 echo "<script>alert('Something went wrong. Please try again.');</script>";  

endif;

}
}
}
$postid=intval($_GET['nid']);

    $sql = "SELECT viewCounter FROM tblposts WHERE id = '$postid'";
    $result = $con->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $visits = $row["viewCounter"];
            $sql = "UPDATE tblposts SET viewCounter = $visits+1 WHERE id ='$postid'";
    $con->query($sql);

        }
    } else {
        echo "no results";
    }
    


?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>News - Dedi Iskandar & Partner</title>
  <meta content="" name="description">
  <meta content="" name="Author">

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
          <li><a href="news.php">Blog</a></li>
          <li>News Details</li>
        </ol>
        <h2>News Details</h2>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= News Details Section ======= -->
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div class="row">

          <div class="col-lg-8 entries">

<?php
$pid=intval($_GET['nid']);
$currenturl="http://".$_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];;
 $query=mysqli_query($con,"select tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url,tblposts.postedBy,tblposts.lastUpdatedBy,tblposts.UpdationDate from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId where tblposts.id='$pid'");
while ($row=mysqli_fetch_array($query)) {
?>

            <article class="entry entry-single">

              <div class="entry-img">
                <img class="card-img-top" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>">
              </div>

              <h2 class="entry-title">
                <?php echo htmlentities($row['posttitle']);?>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="bi bi-person"></i> 

                    <a href="#"><b>by </b> <?php echo htmlentities($row['postedBy']);?>

                  </a>

                </li>

                  <li class="d-flex align-items-center"><i class="bi bi-clock"></i> 

                <a href="#"><time datetime="2020-01-01"><b> on </b><?php echo htmlentities($row['postingdate']);?></time></a>

                  </li>

                  <li class="d-flex align-items-center"><i class="bi bi-activity"></i> 

                  <a href="#"><b>Visits:</b> <?php print $visits; ?></a>

                  </li>

                </ul>
              </div>

              <!-- Tag Content -->

              <div class="entry-content">
                <p>
                  <?php 
$pt=$row['postdetails'];
              echo  (substr($pt,0));?>
                </p>

              </div>

              <div class="entry-footer">
                <i class="bi bi-folder"></i>

                <ul class="cats">

                  <li>
                    <a href="category.php?catid=<?php echo htmlentities($row['cid'])?>" ><?php echo htmlentities($row['category']);?></a>
                  </li>

                </ul>

                <i class="bi bi-tags"></i>
                <ul class="tags">

                  <li>
                    <a href="#"><?php echo htmlentities($row['subcategory']);?></a>
                  </li>

                </ul>

                <i class="bi bi-share"></i>
                <ul class="share">
                  
                 <li>   
                    <a href="http://www.facebook.com/share.php?u=<?php echo $currenturl;?>" target="_blank">Facebook</a> | 
<a href="https://twitter.com/share?url=<?php echo $currenturl;?>" target="_blank">Twitter</a> |
<a href="https://web.whatsapp.com/send?text=<?php echo $currenturl;?>" target="_blank">Whatsapp</a> | 
<a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=<?php echo $currenturl;?>" target="_blank">Linkedin</a>
                  </li>

                </ul>

              </div>
<?php } ?>
            </article><!-- End blog entry -->

<!---Comment Section --->
            <div class="blog-comments">

<?php 
 $sts=1;
 $query=mysqli_query($con,"select name,comment,postingDate from  tblcomments where postId='$pid' and status='$sts'");
while ($row=mysqli_fetch_array($query)) {
?>
              <div class="comment">
                <div class="d-flex">
                  <div class="comment-img"><img src="img/usericon.png" alt=""></div>
                  <div>
                    <h5><a href=""><?php echo htmlentities($row['name']);?></a> </h5>
                    <time datetime="2020-01-01"><?php echo htmlentities($row['postingDate']);?></time>
                    <p>
                      <?php echo htmlentities($row['comment']);?>
                    </p>
                  </div>

                </div>
                
              </div><!-- End comment #1 -->
<?php } ?>

              <div class="reply-form">
                <h4>Leave a Reply</h4>
                <p>Your email address will not be published. Required fields are marked * </p>
                <form name="Comment" method="post">
                  <input type="hidden" name="csrftoken" value="<?php echo htmlentities($_SESSION['token']); ?>" />
                  <div class="row">
                    <div class="col-md-6 form-group">
                      <input name="name" type="text" class="form-control" placeholder="Your Name*" required>
                    </div>
                    <div class="col-md-6 form-group">
                      <input name="email" type="text" class="form-control" placeholder="Your Email*" required>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col form-group">
                      <textarea name="comment" class="form-control" placeholder="Your Comment*" required></textarea>
                    </div>
                  </div>
                  <button type="submit" class="btn btn-primary" name="submit">Post Comment</button>

                </form>

              </div>

            </div><!-- End blog comments -->

          </div><!-- End blog entries list -->

<!-- Sidebar Widgets Column -->
      <?php include('includes/sidebar.php');?>

        </div>

      </div>
    </section><!-- End News Details Section -->

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