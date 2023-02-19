<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <!-- Bootstrap CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Open+Sans">
    <title> Home </title>
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"
    />
       <!-- Link Swiper's CSS -->
       <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />

    <link rel = "icon" href ="img/logo.jpg" type = "image/x-icon">
  </head>
  <?php include 'partials/_dbconnect.php';?>
  <?php require 'partials/_nav.php' ?>
  <!-- css -->
  <style>
    body {
background: whitesmoke;
scroll-behavior: smooth;

 

}

.top {
  --offset: 100px; 
  
  position: sticky;
  bottom: 20px;      
  margin-right:10px; 
  place-self: end;
  margin-top: calc(100vh + var(--offset));
  
  /* visual styling */
  text-decoration: none;
  padding: 10px;
  font-family: sans-serif;
  color: #fff;
  background: rgb(147,112,219);
  border-radius: 100px;
  white-space: nowrap;
}

    /* *{
    font-family: 'Poppins', sans-serif;

  margin: 0;
  padding: 0;
    box-sizing: border-box;
    outline: none; border:none;
    text-decoration: none;
    text-transform: capitalize;
    transition:all .2s linear;
    transition:width none;
} */
.stn{
    margin-top: 1rem;
    display:inline-block;
    padding:.9rem 3rem;
    border-radius: .5rem;
    color:#fff;
    background:var(--green);
    font-size: 1.7rem;
    cursor: pointer;
    font-weight: 500;
}

.stn:hover{
    background-color: rgb(147,112,219);
}
.rtn{
    margin-top: 1rem;
    display:inline-block;
    padding:.9rem 5rem;
    border-radius: .5rem;
    color:#fff;
    background:var(--green);
    font-size: 1rem;
    cursor: pointer;
    font-weight: 500;
}

.rtn:hover{
    background-color: rgb(147,112,219);
}
.Rome{
    background: url(img/banner-bg.jpg) no-repeat;
    background-size: cover;
    background-position: center;
    padding: 50px;
}

.Rome .sow{
    display:flex;
    align-items: center;
    flex-wrap: wrap;
    gap:1.5rem;
}

.Rome .sow .content{
    flex:1 1 42rem;
}

.Rome .sow .books-slider{
    flex:1 1 42rem;
    text-align: center;
    margin-top: 2rem;
}

.Rome .sow .books-slider a img{
    height: 15rem;
    margin-top: 3rem;
    padding: 6px;
    box-shadow: 10px 10px 5px #ccc;
      -moz-box-shadow: 10px 10px 5px #ccc;
      -webkit-box-shadow: 10px 10px 5px #ccc;
      -khtml-box-shadow: 10px 10px 5px #ccc;
      -webkit-border-radius:15px;
  border-radius:15px;
}

.Rome .sow .books-slider a:hover img{
    transform: scale(.9);
}

.Rome .sow .books-slider .stand{
    width:80%;
    margin-top: 1rem;
}

.Rome .sow .content h3{
    color: black;
    font-size: 3.5rem;
    font-weight: 1000;
    font-family: 'Courier New', Courier, monospace;
}

.Rome .sow .content p{
    color:black;
    font-size: 1rem;
    line-height: 2;
    padding:1rem 0;
    font-family: 'Courier New', Courier, monospace;
    font-weight: 1000;

}



    .deal{
    background-image: url(img/deall.jpg);
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap:2rem;
    padding: 25px;
   
    background-size: cover;
    background-position: center;
}

.deal .content{
    flex:1 1 20rem;
    padding: 50px;
}



.deal .rotate_right img{
    float: left;
  -ms-transform: rotate(-25deg); /* IE 9 */
  -webkit-transform: rotate(-25deg); /* Safari */
  transform: rotate(-25deg);
}
.deal .rotate_left img{
    float: left;
    float: left;
  -ms-transform: rotate(3deg); /* IE 9 */
  -webkit-transform: rotate(3deg); /* Safari */
  transform: rotate(3deg);
  
  
}

.deal .content h3{
    color:var(--green);
    font-size: 3.5rem;
    padding-bottom: .5rem;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}

.deal .content h1{
    color:var(--black);
    font-size: 4.5rem;
    font-family:  'Brush Script MT', cursive;
}

.deal .content p{
    padding:1rem 0;
    color:var(--light-color);
    font-size: 1.4rem;
    line-height: 2;
    font-family:Arial, sans-serif;
}

.loader-container{
    position: fixed;
    top:0; left: 0;
    height:100%;
    width: 100%;
    z-index: 10000;
    background:#f7f7f7;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  
  .loader-container.active{
    display: none;
  }
  
  .loader-container img{
    height:6rem;
  }
  /*sakura edit*/
.sakura:after {
filter: hue-rotate(0deg);

pointer-events: none !important;
position: fixed;
left: 0;
top: 0;
content: '';
width: 100%;
height: 100%;
background-image:
url(img/3.png);
animation: sakura 50s linear infinite;
z-index: -5;
}
@keyframes sakura {
0% { background-position: 0 0, 0 0, 0 0; }
100% { background-position: 500px 1000px, 400px 400px, 300px 300px; }
}
/*sakura edit end*/



/* .symb-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
    gap:1.5rem;
    padding-left: 90px;
    background-color: lightcyan;
    
    
}

.symb-container .symb{
    display: flex;
    align-items: center;
    gap:0.5rem;
    
    
}

.symb-container .symb i{
    font-size: 2rem;
    color:var(--green);
}

.symb-container .symb h3{
    font-size: 2rem;
    color:var(--black);
    padding-bottom: .5rem; 
}

.symb-container .symb p{
    font-size: 1rem;
    color:var(--light-color);
} */
.icon-badge-group .icon-badge-container {
          display: inline-block;
        
        }
        .icon-badge-container {
          
          position: absolute;
        }
        .icon-badge-icon {
          font-size: 30px;
          color: rgb(0 0 0 / 50%);
          position: relative;
        }
        .icon-badge {
          background-color: #979797;;
          font-size: 10px;
          color: white;
          text-align: center;
          width: 15px;
          height: 15px;
          border-radius: 49%;
          position: relative;
          top: -35px;
          left: 17px;
        }
    
    
      .contact2 {
        font-family: "Montserrat", sans-serif;
        color: #8d97ad;
        font-weight: 300;
        /* padding: 60px 0; */
        /* margin-bottom: 170px; */
        background-position: center top;
      }

      .contact2 h1,
      .contact2 h2,
      .contact2 h3,
      .contact2 h4,
      .contact2 h5,
      .contact2 h6 {
        color: #3e4555;
      }

      .contact2 .font-weight-medium {
        font-weight: 500;
      }

      .contact2 .subtitle {
        color: #8d97ad;
        line-height: 24px;
      }

      .contact2 .bg-image {
        background-size: cover;
        position: relative;
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
      }

      .contact2 .card.card-shadow {
          -webkit-box-shadow: 0px 0px 30px rgba(115, 128, 157, 0.1);
          box-shadow: 0px 0px 30px rgba(61, 109, 214, 0.774);
      }

      .contact2 .detail-box .round-social {
        margin-top: 100px;
      }

      .contact2 .round-social a {
        background: transparent;
        margin: 0 7px;
        padding: 11px 12px;
      }

      .contact2 .contact-container .links a {
        color: #8d97ad;
      }

      .contact2 .contact-container {
        position: relative;
        top: 107px;
      }

      .contact2 .btn-danger-gradiant {
        background: #ff4d7e;
        background: -webkit-linear-gradient(legacy-direction(to right), #ff4d7e 0%, #ff6a5b 100%);
        background: -webkit-gradient(linear, left top, right top, from(#ff4d7e), to(#ff6a5b));
        background: -webkit-linear-gradient(left, #ff4d7e 0%, #ff6a5b 100%);
        background: -o-linear-gradient(left, #ff4d7e 0%, #ff6a5b 100%);
        background: linear-gradient(to right, #ff4d7e 0%, #ff6a5b 100%);
      }

      .contact2 .btn-danger-gradiant:hover {
        background: #ff6a5b;
        background: -webkit-linear-gradient(legacy-direction(to right), #ff6a5b 0%, #ff4d7e 100%);
        background: -webkit-gradient(linear, left top, right top, from(#ff6a5b), to(#ff4d7e));
        background: -webkit-linear-gradient(left, #ff6a5b 0%, #ff4d7e 100%);
        background: -o-linear-gradient(left, #ff6a5b 0%, #ff4d7e 100%);
        background: linear-gradient(to right, #ff6a5b 0%, #ff4d7e 100%);
      }
.newscool{
    background:url(img/letter-bg.jpg) no-repeat;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    padding: 10px;
}

.newscool .nnn{
    max-width: 45rem;
    margin-left: auto;
    text-align: center;
    padding:7rem 0;

  }


.newscool .nnn h3{
    font-size: 3.5rem;
    color:#fff;
    padding-bottom: .7rem;
    font-weight: 500;
    font-family: 'Brush Script MT', cursive;
}
/* media queries  */

@media (max-width:991px){

section{
    padding:5rem 4rem;
}

}
@media (max-width:768px){

.Rome .row .content{
    text-align: center;
}

.Rome .row .content h3{
    font-size: 3.5rem;
}
html{
        scroll-padding-top: 0;
    }


}
@media (max-width:450px){

html{
    font-size: 50%;
}
}
.carbs {
 padding-bottom: 50px;
 padding-left: 45px;
  flex-wrap: wrap;
  justify-content: space-around;
  padding-top: 20px;
}

.carb {
  margin: 40px;
  position: relative;
  max-width: 250px;
  max-height: 370px;
  box-shadow: 0 40px 60px -6px black;
}

.carb-tite {
  display: block;
  text-align: center;
  color: white;
  background-color: rgb(167,107,207);
  padding: 2%;
  border-top-right-radius: 4px;
  border-top-left-radius: 4px;
}

.carb img {
  width: 240px;
  height: 370px;
  object-fit: cover;
  display: block;
  position: relative;
  -webkit-border-radius:10px;
  border-radius:10px;
}



.carb-desc {
  display: block;
  font-size: 1rem;
  position: absolute;
  height: 0;
  top: 0;
  opacity: 0;
  padding: 18px 8%;
  background: url(img/descbg2.jpg);
  overflow-y: scroll;
  transition: 0.8s ease;
  font-weight: 800;
}

.carb:hover .carb-desc {
  opacity: 1;
  height: 80%;
}


.carousel {
margin: 50px auto;
padding: 0 70px;

}
.carousel .item {
color: #747d89;
min-height: 325px;
text-align: center;
overflow: hidden;

}
.carousel .thumb-wrapper {
padding: 25px 15px;
background:linear-gradient(to top, #dad4ec 0%, #dad4ec 1%, #f3e7e9 100%);
border-radius: 6px;
text-align: center;
position: relative;
box-shadow: 0 2px 3px rgba(0,0,0,0.2);
}
.carousel .item .img-box {
height: 250px;
margin-bottom: 20px;
width: 100%;
position: relative;
padding: 50px;
}
.carousel .item img{
max-width: 100%;
max-height: 100%;
display: inline-block;
position: absolute;
bottom: 0;
margin: 0 auto;
left: 0;
right: 0;
box-shadow: 10px 10px 5px #ccc;
      -moz-box-shadow: 10px 10px 5px #ccc;
      -webkit-box-shadow: 10px 10px 5px #ccc;
      -khtml-box-shadow: 10px 10px 5px #ccc;
      -webkit-border-radius:15px;
  border-radius:15px;

}
.carousel .item h4 {
font-size: 18px;
}
.carousel .item h4, .carousel .item p, .carousel .item ul {
margin-bottom: 5px;
}
.carousel .thumb-content .btn {
color: black ;
font-size: 11px;
text-transform: uppercase;
font-weight: bold;
background: none;
border: 1px solid black;
padding: 6px 14px;
margin-top: 5px;
line-height: 16px;
border-radius: 20px;
}
.carousel .thumb-content .btn:hover, .carousel .thumb-content .btn:focus {
color: #fff;
background: rgba(255, 0, 210, 0.45);
box-shadow: none;
}
.carousel .thumb-content .btn i {
font-size: 14px;
font-weight: bold;
margin-left: 5px;
}
.carousel .item-price {
font-size: 13px;
padding: 2px 0;
}

.carousel-control-prev, .carousel-control-next {
height: 44px;
width: 40px;
background: rgba(255, 0, 210, 0.45);
margin: auto 0;
border-radius: 4px;
opacity: 0.8;
}
.carousel-control-prev:hover, .carousel-control-next:hover {
background: #78bf00;
opacity: 1;
}
.carousel-control-prev i, .carousel-control-next i {
font-size: 36px;
position: absolute;
top: 50%;
display: inline-block;
margin: -19px 0 0 0;
z-index: 5;
left: 0;
right: 0;
color: #fff;
text-shadow: none;
font-weight: bold;
}
.carousel-control-prev i {
margin-left: -2px;
}
.carousel-control-next i {
margin-right: -4px;
}
.carousel-indicators {
bottom: -50px;
}
.carousel-indicators li, .carousel-indicators li.active {
width: 10px;
height: 10px;
margin: 4px;
border-radius: 50%;
border: none;
}
.carousel-indicators li {
background: rgba(255, 132, 195, 0.8);
}
.carousel-indicators li.active {
background: rgba(246, 51, 152, 0.8);
}


  </style>
   <!-- css -->
  
    
<body>

  
  
  <!-- Rome section starts  -->
  <div class="loader-container">
    <img src="img/loader-img.gif" alt="">
</div>

<section class="Rome" id="Rome">

    <div class="sow">

        <div class="content">
            <h3>Upto 75% off on Manga</h3>
            <p>Get an exclusive Discount on Mangas. Every volume bought on this sale will get an wapping 75% off...
                Don't Miss..!! Hurry..!!</p>
            <a href="viewbookList.php?catid=4" class="stn">Shop Now</a>
        </div>

        <div class="swiper books-slider">
            <div class="swiper-wrapper">
                <a href="viewbook.php?bookId=1" class="swiper-slide"><img src="img/book-1.jpg" alt=""></a>
                <a href="viewbook.php?bookId=2" class="swiper-slide"><img src="img/book-2.jpg" alt=""></a>
                <a href="viewbook.php?bookId=4" class="swiper-slide"><img src="img/book-4.jpg" alt=""></a>
                <a href="viewbook.php?bookId=5" class="swiper-slide"><img src="img/book-5.jpg" alt=""></a>
                <a href="viewbook.php?bookId=6" class="swiper-slide"><img src="img/book-6.jpg" alt=""></a>
                <a href="viewbook.php?bookId=7" class="swiper-slide"><img src="img/book-7.jpg" alt=""></a>
                <a href="viewbook.php?bookId=42" class="swiper-slide"><img src="img/book-42.jpg" alt=""></a>
                <a href="viewbook.php?bookId=43" class="swiper-slide"><img src="img/book-43.jpg" alt=""></a>
            </div>
                <img src="img/stand.png" class="stand" alt="">
            </div>
        </div>

</section>

 <!-- Swiper JS -->
 <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<!-- Initialize Swiper -->
<script>
      // buffer work
      fadeOut();

function loader(){
   document.querySelector('.loader-container').classList.add('active');
 }
 
 function fadeOut(){
   setTimeout(loader, 2700);
 }

 // buffer work

  var swiper = new Swiper(".books-slider", {
  loop:true,
  centeredSlides: true,
  autoplay: {
    delay: 1500,
    disableOnInteraction: false,
  },
  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});




</script>


<!-- Rome section ense  -->


<!-- newscool section starts -->

<section class="newscool">

    <div class="nnn">
        <h3>“Never trust anyone who has not<br> brought a book with them.” </h3>
    </div>

</section>
 
<!-- newscool section ends -->


<div class="container-xxl">
  <div class="row">
    <div class="col-md-12">
    <div class="col-lg-3 text-center " style="margin:auto;">
        <h1
          style="color:black ;font-family: 'Courier New', Courier, monospace; font-size: 45px; font-weight:800; padding-top:50px; text-decoration: underline;">
          POPULARS</h1>
      </div>
      <div id="myCarousels" class="carousel slide" data-ride="carousel" data-interval="0">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousels" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousels" data-slide-to="1"></li>
          <li data-target="#myCarousels" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
          <div class="item carousel-item active">
            <div class="row">

              <div class="col-sm-3">
                <div class="thumb-wrapper">
                  <div class="img-box">
                    <a href="viewbook.php?bookId=23" class="img-fluid"><img src="img/book-23.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>The Ten Loves of Mr. Nishino</h4>
                    <p class="item-price"> <b>Rs.1500</b></p>
                    <a href="viewbook.php?bookId=23" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=24" class="img-fluid"><img src="img/book-24.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>The Housekeeper and the Professor</h4>



                    <p class="item-price"> <b>Rs.1100</b></p>
                    <a href="viewbook.php?bookId=24" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=85" class="img-fluid"><img src="img/book-85.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Batman: The Killing Joke</h4>



                    <p class="item-price"> <b>Rs.1200</b></p>
                    <a href="viewbook.php?bookId=85" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=18" class="img-fluid"><img src="img/book-18.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Snow Country</h4>



                    <p class="item-price"> <b>Rs.800</b></p>
                    <a href="viewbook.php?bookId=18" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item carousel-item">
            <div class="row">
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=13" class="img-fluid"><img src="img/book-13.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>After</h4>
                    <p class="item-price"> <span>Rs.700</span></p>



                    <a href="viewbook.php?bookId=13" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=21" class="img-fluid"><img src="img/book-21.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Socrates in Love</h4>
                    <p class="item-price"> <span>Rs.600</span></p>



                    <a href="viewbook.php?bookId=21" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=51" class="img-fluid"><img src="img/book-51.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>The Imperial Radch Trilogy</h4>
                    <p class="item-price"> <span>Rs.500</span></p>



                    <a href="viewbook.php?bookId=51" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=81" class="img-fluid"><img src="img/book-81.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Frida</h4>
                    <p class="item-price"> <span>Rs.500</span></p>



                    <a href="viewbook.php?bookId=81" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item carousel-item">
            <div class="row">
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=19" class="img-fluid"><img src="img/book-19.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>The Sound of Waves</h4>
                    <p class="item-price"> <span>Rs.1200</span></p>



                    <a href="viewbook.php?bookId=19" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=7" class="img-fluid"><img src="img/book-7.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>The Promised Neverland</h4>
                    <p class="item-price"> <span>Rs.1200</span></p>



                    <a href="viewbook.php?bookId=7" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=29" class="img-fluid"><img src="img/book-29.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>The Auctioneer</h4>
                    <p class="item-price"><span>Rs.1300</span></p>



                    <a href="viewbook.php?bookId=29" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=77" class="img-fluid"><img src="img/book-77.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Addicted</h4>
                    <p class="item-price"> <span>Rs.700</span></p>



                    <a href="viewbook.php?bookId=77" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Carousel controls -->
        <a class="carousel-control-prev" href="#myCarousels" data-slide="prev">
          <i class="fa fa-angle-left"></i>
        </a>
        <a class="carousel-control-next" href="#myCarousels" data-slide="next">
          <i class="fa fa-angle-right"></i>
        </a>
      </div>
    </div>
  </div>
</div>
<!-- deal section starts  -->

<section class="deal">

    <div class="content">
        <h3>Deal of the day</h3>
        <h1>Upto 25% off</h1>
        <p>Get upto 25% off on Thor volumes... <br> Don't miss...!!</p>
        <a href="viewbook.php?bookId=3" class="stn">Shop now</a>
    </div>

    <div class="polaroid rotate_right">
    <a href="viewbook.php?bookId=3"><img src="img/book-3.jpg" width="300px" height="400px" alt=""></a>
    </div>
    <div class="polaroid rotate_left">
    <a href="viewbook.php?bookId=3"><img src="img/deal.jpg" width="250px" height="350px" alt=""></a>
    </div>


</section>

<!-- deal section ends -->



  <!-- Category container starts here -->
  <div class="container my-3 mb-5">
    <div class="col-lg-2 text-center " style="margin:auto;">     
    <h1  style="color:black ;font-family: 'Courier New', Courier, monospace; font-size: 45px; font-weight:800; padding-top:80px; text-decoration: underline;">CATEGORIES</h1>
    </div>
    <div class="row">
      <!-- Fetch all the categories and use a loop to iterate through categories -->
      <?php 
        $sql = "SELECT * FROM `categories`"; 
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_assoc($result)){
          $id = $row['categorieId'];
          $cat = $row['categorieName'];
          $desc = $row['categorieDesc'];
          echo '<div class="carbs" col-xs-3 col-md-3 col-sm-3>
          <div class="carb">
            <h2 class="carb-tite" href="viewbookList.php?catid=' . $id . '">' . $cat . '</h2>
            <a href="viewbookList.php?catid=' . $id . '"> <img src="img/card-'.$id. '.jpg" alt="image for this category"></a>
             <p class="carb-desc">' . substr($desc,0). '... </p>
            <a href="viewbookList.php?catid=' . $id . '" class="rtn">View All</a>
          </div>
          </div>';
        }
      ?>
    </div>
  </div>




<div class="container-xl">
  <div class="row">
    <div class="col-md-12">
      <div class="col-lg-3 text-center " style="margin:auto;">
        <h1
          style="color:black ;font-family: 'Courier New', Courier, monospace; font-size: 45px; font-weight:800; padding-top:50px; text-decoration: underline;">
          OUR PICKS</h1>
      </div>
      <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
          <div class="item carousel-item active">
            <div class="row">

              <div class="col-sm-3">
                <div class="thumb-wrapper">
                  <div class="img-box">
                    <a href="viewbook.php?bookId=2" class="img-fluid"><img src="img/book-2.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Jujutsu Kaisen</h4>
                    <p class="item-price"> <b>Rs.1200</b></p>
                    <a href="viewbook.php?bookId=2" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=12" class="img-fluid"><img src="img/book-12.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Return to Love</h4>



                    <p class="item-price"> <b>Rs.1200</b></p>
                    <a href="viewbook.php?bookId=12" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=41" class="img-fluid"><img src="img/book-41.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Misery</h4>



                    <p class="item-price"> <b>Rs.700</b></p>
                    <a href="viewbook.php?bookId=41" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=11" class="img-fluid"><img src="img/book-11.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>It End with Us</h4>



                    <p class="item-price"> <b>Rs.700<b></p>
                    <a href="viewbook.php?bookId=11" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item carousel-item">
            <div class="row">
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=61" class="img-fluid"><img src="img/book-61.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Hour of the Assassin</h4>
                    <p class="item-price"> <span>Rs.1200</span></p>



                    <a href="viewbook.php?bookId=61" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=74" class="img-fluid"><img src="img/book-74.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Barbarian Days</h4>
                    <p class="item-price"> <span>Rs.300</span></p>



                    <a href="viewbook.php?bookId=74" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=4" class="img-fluid"><img src="img/book-4.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Solo Leveling</h4>
                    <p class="item-price"> <span>Rs.1800</span></p>



                    <a href="viewbook.php?bookId=4" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=5" class="img-fluid"><img src="img/book-5.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Tokyo Ghoul</h4>
                    <p class="item-price"> <span>Rs.1200</span></p>



                    <a href="viewbook.php?bookId=5" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item carousel-item">
            <div class="row">
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=13" class="img-fluid"><img src="img/book-13.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>After</h4>
                    <p class="item-price"> <span>Rs.700</span></p>



                    <a href="viewbook.php?bookId=13" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=18" class="img-fluid"><img src="img/book-18.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Snow Country</h4>
                    <p class="item-price"> <span>Rs.800</span></p>



                    <a href="viewbook.php?bookId=18" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=17" class="img-fluid"><img src="img/book-17.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Norwegian Wood</h4>
                    <p class="item-price"><span>Rs.900</span></p>



                    <a href="viewbook.php?bookId=17" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="thumb-wrapper">

                  <div class="img-box">
                    <a href="viewbook.php?bookId=1" class="img-fluid"><img src="img/book-1.jpg" alt=""></a>
                  </div>
                  <div class="thumb-content">
                    <h4>Chainsaw-Man</h4>
                    <p class="item-price"> <span>Rs.1500</span></p>



                    <a href="viewbook.php?bookId=1" class="btn btn-primary">View</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Carousel controls -->
        <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
          <i class="fa fa-angle-left"></i>
        </a>
        <a class="carousel-control-next" href="#myCarousel" data-slide="next">
          <i class="fa fa-angle-right"></i>
        </a>
      </div>
    </div>
  </div>
</div>





<!-- <div class="col-xs-3 col-md-3 col-sm-3 ">
                  <div class="card" style="width: 16rem;">
                  <a href="viewbookList.php?catid=' . $id . '"><img src="img/card-'.$id. '.jpg" class="card-img-top" alt="image for this category" width="200px" height="350px"></a>
                    <div class="card-body">
                      <h5 class="card-title"><a href="viewbookList.php?catid=' . $id . '">' . $cat . '</a></h5>
                      <p class="card-text">' . substr($desc, 0, 30). '... </p>
                      <a href="viewbookList.php?catid=' . $id . '" class="btn btn-primary">View All</a>
                    </div>
                  </div>
                </div> -->
<!-- symb section starts  -->

<!-- <section class="symb-container">

    <div class="symb">
        <i class="fas fa-shipping-fast"></i>
        <div class="content">
            <h3>free shipping</h3>
            <p>order over Rs.1000</p>
        </div>
    </div>

    <div class="symb">
        <i class="fas fa-lock"></i>
        <div class="content">
            <h3>secure payment</h3>
            <p>100 secure payment</p>
        </div>
    </div>

    <div class="symb">
        <i class="fas fa-redo-alt"></i>
        <div class="content">
            <h3>easy returns</h3>
            <p>10 days returns</p>
        </div>
    </div>


</section> -->

      <div class="contact2" style="height: 700px;" id="contact">
        <div class="container">
          <div class="row contact-container">
            <div class="col-lg-12">
              <div class="card card-shadow border-0 mb-4">
                <div class="row">
                  <div class="col-lg-8">
                    <div class="contact-box p-4">
                      <div class="row">
                        <div class="col-lg-8">
                          <h4 class="title">Contact Us</h4>
                        </div>
                        <?php if($loggedin){ ?>
                          <div class="col-lg-4">
                            <div class="icon-badge-container mx-1" style="padding-left: 167px;">
                              <a href="#" data-toggle="modal" data-target="#adminReply"><i class="far fa-envelope icon-badge-icon"></i></a>
                              <div class="icon-badge"><b><span id="totalMessage">0</span></b></div>
                            </div>
                          </div>
                        <?php } ?>
                      </div>
                 
                      <form action="partials/_manageContactUs.php" method="POST">
                        <div class="row">
                          <div class="col-lg-6">
                            <div class="form-group mt-3">
                                <b><label for="email">Email:</label></b>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter Your Email" required value="">
                            </div>
                          </div>
                          <div class="col-lg-6">
                            <div class="form-group mt-3">
                                <b><label for="phone">Phone No:</label></b>
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="basic-addon">+91</span>
                                    </div>
                                    <input type="tel" class="form-control" id="phone" name="phone" aria-describedby="basic-addon" placeholder="Enter Your Phone Number" required pattern="[0-9]{10}" value="">
                                </div>
                            </div>
                          </div>
                          <div class="col-lg-6">
                            <div class="form-group mt-3">
                              <b><label for="orderId">Order Id:</label></b>
                              <input class="form-control" type="text" id="orderId" name="orderId" placeholder="Order Id" value="0">
                              <small id="orderIdHelp" class="form-text text-muted">If your problem is not related to the order(order id = 0).</small>
                            </div>
                          </div>
                          <div class="col-lg-6">
                            <div class="form-group mt-3">
                              <b><label for="password">Password:</label></b>
                              <input class="form-control" id="password" name="password" placeholder="Enter Password" type="password" placeholder="Enter Your Password" required data-toggle="password">
                            </div>
                          </div>
                          <div class="col-lg-12">
                            <div class="form-group  mt-3">
                                <textarea class="form-control" id="message" name="message" rows="2" required minlength="6" placeholder="How May We Help You ?"></textarea>
                            </div>
                          </div>
                          <?php if($loggedin){ ?>
                            <div class="col-lg-12">
                              <button type="submit" class="btn btn-danger-gradiant mt-3 mb-3 text-white border-0 py-2 px-3"><span> SUBMIT NOW <i class="ti-arrow-right"></i></span></button>
                              <button type="button" class="btn btn-danger-gradiant mt-3 mb-3 text-white border-0 py-2 px-3 mx-2" data-toggle="modal" data-target="#history"><span> HISTORY <i class="ti-arrow-right"></i></span></button>
                            </div>
                          <?php }else { ?>
                            <div class="col-lg-12">
                              <button type="submit" class="btn btn-danger-gradiant mt-3 text-white border-0 py-2 px-3" disabled><span> SUBMIT NOW <i class="ti-arrow-right"></i></span></button>
                              <small class="form-text text-muted">First login to Contct with Us.</small>
                            </div>
                          <?php } ?>
                        </div>
                      </form>
                    </div>
                  </div>
                  <?php
                    $sql = "SELECT * FROM `sitedetail`";
                    $result = mysqli_query($conn, $sql);
                    $row = mysqli_fetch_assoc($result);

                    $systemName = $row['systemName'];
                    $address = $row['address'];
                    $email = $row['email'];
                    $contact1 = $row['contact1'];
                    $contact2 = $row['contact2'];

                    echo '<div class="col-lg-4 bg-image" style="background-image:url(img/contact.jpg)">
                          <div class="detail-box p-4">
                            <h5 class="text-white font-weight-light mb-3">ADDRESS</h5>
                            <p class="text-white op-7">' .$address. '</p>
                            <h5 class="text-white font-weight-light mb-3 mt-4">CALL US</h5>
                            <p class="text-white op-7">' .$contact1. '
                              <br> ' .$contact2. '</p>
                            <div class="round-social light">
                              <a href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=' .$email. '" class="ml-0 text-decoration-none text-white border border-white rounded-circle" target="_blank"><i class="far fa-envelope"></i></a>
                              <a href="https://github.com/Bison619" class="text-decoration-none text-white border border-white rounded-circle" target="_blank"><i class="fab fa-github"></i></i></a>
                              <a href="https://youtube.com/" class="text-decoration-none text-white border border-white rounded-circle" target="_blank"><i class="fab fa-youtube"></i></a>
                            </div>
                          </div>
                        </div>';
                  ?>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Message Modal -->
      <div class="modal fade" id="adminReply" tabindex="-1" role="dialog" aria-labelledby="adminReply" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header" style="background-color: rgb(187 188 189);">
              <h5 class="modal-title" id="adminReply">Admin Reply</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" id="messagebd">
              <table class="table-striped table-bordered col-md-12 text-center">
                <thead style="background-color: rgb(111 202 203);">
                    <tr>
                        <th>Contact Id</th>
                        <th>Reply Message</th>
                        <th>datetime</th>
                    </tr>
                </thead>
                <tbody>
                <?php 
                    $sql = "SELECT * FROM `contactreply` WHERE `userId`='$userId'"; 
                    $result = mysqli_query($conn, $sql);
                    $count = 0;
                    while($row=mysqli_fetch_assoc($result)) {
                        $contactId = $row['contactId'];
                        $message = $row['message'];
                        $datetime = $row['datetime'];
                        $count++;
                        echo '<tr>
                                <td>' .$contactId. '</td>
                                <td>' .$message. '</td>
                                <td>' .$datetime. '</td>
                              </tr>';
                    }
                    echo '<script>document.getElementById("totalMessage").innerHTML = "' .$count. '";</script>';
                    if($count==0) {
                      ?><script> document.getElementById("messagebd").innerHTML = '<div class="my-1">you have not recieve any message.</div>';</script> <?php
                    }
                ?>
                </tbody>
		          </table>
            </div>
          </div>
        </div>
      </div>

      <!-- history Modal -->
      <div class="modal fade" id="history" tabindex="-1" role="dialog" aria-labelledby="history" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header" style="background-color: rgb(187 188 189);">
              <h5 class="modal-title" id="history">Your Sent Message</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body" id="bd">
              <table class="table-striped table-bordered col-md-12 text-center">
                <thead style="background-color: rgb(111 202 203);">
                    <tr>
                        <th>Contact Id</th>
                        <th>Order Id</th>
                        <th>Message</th>
                        <th>datetime</th>
                    </tr>
                </thead>
                <tbody>
                <?php 
                    $sql = "SELECT * FROM `contact` WHERE `userId`='$userId'"; 
                    $result = mysqli_query($conn, $sql);
                    $count = 0;
                    while($row=mysqli_fetch_assoc($result)) {
                        $contactId = $row['contactId'];
                        $orderId = $row['orderId'];
                        $message = $row['message'];
                        $datetime = $row['time'];
                        $count++;
                        echo '<tr>
                                <td>' .$contactId. '</td>
                                <td>' .$orderId. '</td>
                                <td>' .$message. '</td>
                                <td>' .$datetime. '</td>
                              </tr>';
                    }                
                    if($count==0) {
                      ?><script> document.getElementById("bd").innerHTML = '<div class="my-1">you have not contacted us.</div>';</script> <?php
                    }    
                ?>
                </tbody>
		          </table>
            </div>
          </div>
        </div>
      </div>
      <a href="#" class="top">Back to Top &#8593;</a>


<?php require 'partials/_footer.php' ?>
<script src="assets/js/main.js"></script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>         
    <script src="https://unpkg.com/bootstrap-show-password@1.2.1/dist/bootstrap-show-password.min.js"></script>
<!-- sakura -->
<div class="container">
                <div class="sakura">
                    <span></span><span></span>
                </div>
            </div>
            <!-- sakura end -->

  </body>
</html>