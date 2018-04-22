<div style="margin-top:-50px;">
  <?php $this->load->view('site/slide.php');?>

  <section class="featured-destinations">
      <?php $this->load->view('site/left.php', $this->data);?>
  </section>

      
      <!-- Google fonts -->
      <!-- <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800"> -->
      
      <!-- CSS style -->
      <link rel="stylesheet" type="text/css" href="<?php echo public_url('site/css/style1.css')?>">
      
      <!-- Preview (Remove) -->
      <script type="text/javascript" src="<?php echo public_url('site/js/preview.js')?>"></script>
      <script type="text/javascript" src="<?php echo public_url('site/js/jquery.scroll.js')?>"></script>
      
      <!-- Modernizr -->
      <script type="text/javascript" src="<?php echo public_url('site/js/modernizr.custom.js')?>"></script>
      
      <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
      <![endif]-->
      
      <!-- Smart Carousel CSS settings -->
      <!-- <link rel="stylesheet" type="text/css" href="http://www.flashbluedesign.com/plugins/smart-carousel-responsive-jquery-plugin/smart-carousel/smart-carousel.css"> -->

      <link rel="stylesheet" type="text/css" href="<?php echo public_url('site/css/smart-carousel.css')?>">

      <link rel="stylesheet" type="text/css" href="<?php echo public_url('site/css/smart-carousel-skins.css') ?>">   
      
      <!-- Smart Carousel JS -->
      <script type="text/javascript" src="<?php echo public_url('site/js/jquery.smart-carousel.js')?>"></script>
      
      <!-- Create Smart Carousel -->



  <script>
        var api;
        $(document).ready(function() {
          //Square image carousel
          $("#square-image-carousel").smartCarousel({
            itemWidth:240,
            itemHeight:240,
            distance:10,
            selectedItemDistance:70,
            selectedItemZoomFactor:1,
            unselectedItemZoomFactor:0.5,
            unselectedItemAlpha:0.9,
            motionStartDistance:200,
            topMargin:140,
            gradientStartPoint:0.35,
            gradientOverlayColor:"#fafafa",
            gradientOverlaySize:190,
            selectByClick:false,
            // autoSlideshow:true,

          });
          
        });
  </script>
 
  


  <div class="row topdes" >
    <div class="col-md-12 col-sm-12 col-xs-12">
        <h2 style="padding: 10px 0 ;text-align: center;background:#ffab1d;color: white;font-family: pt;font-weight:bold;">TOP DESTINATION</h2>
          <div class="container">
          <div id="square-image-carousel" class="smart-carousel square-image content-bg sc-no-select" >
            <div class="smart-carousel-wrapper">
              <ul class="smart-carousel-container">
                <?php foreach($tour_list as $tl): ?>
                  <li>
                      <a href="<?php echo base_url('tour/view/'.$tl->id)?>">
                        <img style="width: 400px; height: 250px;" src="<?php echo base_url('/upload/tour/'.$tl->image_link)?>" alt="<?=$tl->name?>" title="<?=$tl->name?>" class="sc-image" >
                      </a>
                      <div class="sc-content">
                        <h2><?=$tl->name?></h2>
                        <p><a href="<?php echo base_url('tour/view/'.$tl->id)?>"><?=$tl->site_title?></a></p>
                      </div>
                  </li>
                <?php endforeach ?>
              </ul>
            </div>
          </div>
        </div>   
  </div>
  <!--end Banner-->
  </div>



  <div class="row" id="travels" >
        <div class="col-lg-12">
            <div id="title_travel" style="text-align: center;">
                <h2 style="color: #ffab1d; font-family: pt;font-weight:bold;">TRAVEL TO VIET NAME TIPS</h2>
                <b style="color: #ffab1d;">
                    See the romantic because of Hue or Boating in the rustic setting of the MeKong Delta for a once-in-a-lifetime experience!
                </b>
            </div>
            <div id="l-hightlight-tour" class="f-width">
                    <div class="col-md-6 pull-left" id="tourss" >
                      <h1 class="title-h1" style="color: #ffab1d;">GALLERY</h1>
                        <ul class="ul-hightlight">
                          <?php foreach($tour_more as $row) : ?>
                               <li style="border-bottom:none; margin-bottom: 0 !important;padding: 1px !important; " class="pull-left col-md-6"  >
                                     <a href="<?php echo base_url('tour/view/'.$row->id)?>" title="<?=$row->name?>" class="left">
                                          <img  style="height:190px ;margin-bottom: 0 !important; " src="<?php echo base_url('/upload/tour/'.$row->image_link)?>" alt="<?=$row->name?>" title="<?=$row->name?>"/>
                                    </a>

                                   <!-- <div class="col-md-3 hl-info-right">
                                       <h4>
                                            <a href="<?php echo base_url('tour/view/'.$row->id)?>" title="<?=$row->name?>">
                                                <?=$row->name?>
                                            </a>
                                        </h4>
                                        <span>
                                          <?php 
                                              if(strlen($row->site_title) < 20){
                                                  echo $row->site_title;
                                              }else{
                                                echo mb_substr($row->site_title,0,100,'utf8').'...';
                                              }
                                          ?>
                                        </span>
                                   </div> -->
                                   
                               </li>
                            <?php endforeach?>

                        </ul>
                        
                    </div>


                    <div class="col-md-6 pull-right flexslider" id="slider-video">
                      <div id="videoss">
                          <h1 class="title-h1" style="color: #ffab1d;">VIDEOS</h1>
                            <ul class="slides">
                                    <li>
                                        <iframe width="100%" height="380px" src="https://www.youtube.com/embed/3tDd7EbO8NY" frameborder="0" allowfullscreen></iframe>
                                    </li>
                                    <li>
                                        <iframe width="100%" height="380px" src="https://www.youtube.com/embed/0XWW4PHZOSA" frameborder="0" allowfullscreen></iframe>
                                    </li>
                            </ul>
                      </div>
                    </div>
                    <div class="clearfix"></div>
                
            </div>
        </div>
    </div>
</div>