<?php
include('header.php');
?>
    <!-- Navbar End -->


    <!-- Header Start -->
    <div class="container-fluid bg-primary py-5 mb-5 page-header">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Courses</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                            <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Courses</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->


    <!-- Categories Start -->
    <div class="container-xxl py-5 category">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">Categories</h6>
                <h1 class="mb-5">Courses Categories</h1>
            </div>
            <div class="row g-3">
                <div class="col-lg-12 col-md-6">
                    <div class="row g-3">
                        <?php
						include('connection.php');
						$sel = mysqli_query($con, "SELECT * FROM `course_category`");
						while ($row = mysqli_fetch_array($sel)) {
						?>
						<div class="col-lg-4 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                            <a class="position-relative d-block overflow-hidden" href="course_details.php?id=<?php echo $row['id'];?>">
                                <img class="img-fluid" src="img/cat-2.jpg" alt="">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                    <h5 class="m-0"><?php echo $row['name'];?></h5>
                                    <small class="text-primary">49 Courses</small>
                                </div>
                            </a>
                        </div>
						<?php
						}
						?>
						
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Categories Start -->


      

    <!-- Footer Start -->
<?php
include('footer.php');
?>