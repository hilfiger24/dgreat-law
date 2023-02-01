          <div class="col-lg-4">

            <div class="sidebar">

              <!-- Search Widget -->
              <h3 class="sidebar-title">Search</h3>
              <div class="sidebar-item search-form">
                    <form name="search" action="search.php" method="post">

                  <input type="text" name="searchtitle" class="form-control" placeholder="Search for..." required>
                  <button type="submit"><i class="bi bi-search"></i></button>
                </form>
              </div><!-- End sidebar search formn-->

              <h3 class="sidebar-title">Categories</h3>
              <div class="sidebar-item categories">

                <!-- Category Details Details -->

                <ul>
<?php $query=mysqli_query($con,"select id,CategoryName from tblcategory");
while($row=mysqli_fetch_array($query))
{
?>

                  <li><a href="category.php?catid=<?php echo htmlentities($row['id'])?>"><?php echo htmlentities($row['CategoryName']);?>
                  </a>
                  </li>
<?php } ?>                  
                </ul>
              </div><!-- End sidebar categories-->

              <h3 class="sidebar-title">Recent Posts</h3>
              <div class="sidebar-item recent-posts">

                <!-- Post Details -->
                <div class="post-item clearfix">
<?php
$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblposts.PostingDate as postingdate,tblposts.postedBy from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId limit 8");
while ($row=mysqli_fetch_array($query)) {

?>
                  <img src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>">

                  <h4>
                      <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>"><?php echo htmlentities($row['posttitle']);?></a>
                  </h4>
                  <time datetime="2020-01-01"><?php echo htmlentities($row['postingdate']);?></time>
                   <?php } ?>

                </div>

              </div><!-- End sidebar recent posts-->

              <h3 class="sidebar-title">Tags</h3>
              <div class="sidebar-item tags">

              <!-- Tag Details -->

                <ul>
<?php
$query1=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle,tblsubcategory.Subcategory as subcategory from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId  order by viewCounter desc limit 5");
while ($result=mysqli_fetch_array($query1)) {

?>

                  <li>
                    <a href="news-details.php?nid=<?php echo htmlentities($result['pid'])?>"><?php echo htmlentities($result['subcategory']);?></a>
                  </li>
                 <?php } ?> 
                </ul>
              </div><!-- End sidebar tags-->

            </div><!-- End sidebar -->

          </div><!-- End blog sidebar -->