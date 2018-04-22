<script src="<?php echo public_url('/site/royalslider/jquery.royalslider.min.js')?>"></script>
<link href="<?php echo public_url('site/css/default.css')?>" rel="stylesheet" />
<link href="<?php echo public_url('site/css/nivo-slider.css')?>" rel="stylesheet" />

<link type="text/css" href="<?php echo public_url('/site/royalslider/royalslider.css')?>" rel="stylesheet">
<link type="text/css" href="<?php echo public_url('/site/royalslider/skins/minimal-white/rs-minimal-white.css')?>" rel="stylesheet">
    
<link href="<?php echo public_url('site/css/flipclock.css')?>" rel="stylesheet" />
<script src="<?php echo public_url('site/js/flipclock.min.js')?>"></script>

<link href="<?php echo public_url('site/css/flexslider.css')?>" rel="stylesheet" />
<script src="<?php echo public_url('site/js/jquery.flexslider-min.js')?>"></script>



<style>
#HomeSlide.royalSlider {
    width: 100%;   
    height: 100%;
    overflow:hidden;
}
#HomeSlide.royalSlider img {
    width: 100%;   
    height: 100%;
}
</style>

<script type="text/javascript">

    $(document).ready(function()
    {
        $("#HomeSlide").royalSlider({
            arrowsNav:true,
            loop:true,
            keyboardNavEnabled:true,
            controlsInside:false,
            imageScaleMode:"fill",
            arrowsNavAutoHide:false,
            autoScaleSlider:true,
            autoScaleSliderWidth:580,//chiều rộng slide
            autoScaleSliderHeight:205,//chiều cao slide
            controlNavigation:"bullets",
            thumbsFitInViewport:true,
            navigateByClick:true,
            startSlideId:0,
            autoPlay:{enabled:true, stopAtAction:false, pauseOnHover:true, delay:1000},
            transitionType:"move",
            slideshowEnabled:true,
            slideshowDelay:1000,
            slideshowPauseOnHover:true,
            slideshowAutoStart:true,
            globalCaption:false
        });
    });

</script>
<!-- <style type="text/css">
    @media only screen and (min-width: 1024px){
        #HomeSlide{
            width:1349px !important;
            margin-left:-55px;
        }
    }
    
</style> -->


<section class="hero hero-overlap">
    <div id='slide'>
        <div id="img-slide" class="sliderContainer" >
            <div id="HomeSlide" class="royalSlider rsMinW" >
                <?php foreach($slide_list as $row) : ?>
                    <a href="<?=$row->link?>">
                        <img src="<?php echo base_url()?>/upload/slide/<?=$row->image_link?>" alt="<?=$row->name?>" title="<?=$row->name?>" /> </a>
                 <?php endforeach ?>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</section>
        

